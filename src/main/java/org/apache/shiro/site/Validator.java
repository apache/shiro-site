/**
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * <p>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p>
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.shiro.site;

import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;

public final class Validator implements Runnable {
    private final Path content;

    // JBake headers are in the first few lines, no need to read entire files
    private static final int MAX_HEADER_LINES = 50;

    private Validator(final Path content) {
        this.content = content;
    }

    @Override
    public void run() {
        try {
            validateContent();
        } catch (final IOException e) {
            throw new IllegalStateException(e);
        }
    }

    private void validateContent() throws IOException {
        final var errors = new ArrayList<String>();
        Files.walkFileTree(content, new SimpleFileVisitor<>() {
            @Override
            public FileVisitResult visitFile(final Path file, final BasicFileAttributes attrs) throws IOException {
                if (file.getFileName().toString().endsWith(".adoc")) {
                    doValidateContent(file, errors);
                }
                return super.visitFile(file, attrs);
            }
        });
        if (!errors.isEmpty()) {
            errors.sort(String.CASE_INSENSITIVE_ORDER);
            throw new IllegalStateException(String.join("\n", errors));
        }
    }

    private void doValidateContent(final Path file, final List<String> errors) throws IOException {
        // Only read header lines - JBake metadata is always at the top
        // This avoids reading entire files which can be hundreds of lines
        try (BufferedReader reader = Files.newBufferedReader(file)) {
            String line;
            int lineCount = 0;
            boolean hasDate = false;
            boolean isRedirect = false;
            boolean hasTodo = false;

            while ((line = reader.readLine()) != null && lineCount < MAX_HEADER_LINES) {
                lineCount++;

                if (line.startsWith(":jbake-date:")) {
                    hasDate = true;
                    return; // valid, no need to check further
                }
                if (":jbake-type: redirect".equals(line)) {
                    isRedirect = true;
                    return; // redirect pages don't need date validation
                }
                if ("TODO".equals(line)) {
                    hasTodo = true;
                }
            }

            // If page is a TODO stub (small file with TODO marker), skip validation
            if (lineCount < 10 && hasTodo) {
                return;
            }

            if (!hasDate && !isRedirect) {
                errors.add("Missing date in '" + content.relativize(file) + "'");
            }
        }
    }

    public static void main(final String... args) throws IOException {
        final var content = Path.of(args[0]);
        new Validator(content).run();
    }
}
