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
        final var lines = Files.readAllLines(file); // don't use asciidoctorj to parse properly the adoc, it is way too slow to start
        if (missDate(lines) &&
                isNotRedirect(lines) &&
                isNotTODO(lines)) {
            errors.add("Missing date in '" + content.relativize(file) + "'");
        }
    }

    // if the page is not written, no big deal to be broken
    private boolean isNotTODO(final List<String> lines) {
        return !(lines.size() < 10 && lines.contains("TODO"));
    }

    private boolean isNotRedirect(final List<String> lines) {
        return lines.stream().noneMatch(":jbake-type: redirect"::equals);
    }

    private boolean missDate(final List<String> lines) {
        return lines.stream().noneMatch(l -> l.startsWith(":jbake-date:"));
    }

    public static void main(final String... args) throws IOException {
        final var content = Path.of(args[0]);
        new Validator(content).run();
    }
}
