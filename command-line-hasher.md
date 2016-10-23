<a name="CommandLineHasher-CommandLineHasher"></a>
#Command Line Hasher

*   [Usage](#CommandLineHasher-Usage)
*   [Common Scenarios](#CommandLineHasher-CommonScenarios)

*   [`shiro.ini` User Passwords](#CommandLineHasher-%7B%7Bshiro.ini%7D%7DUserPasswords)
*   [MD5 checksum](#CommandLineHasher-MD5checksum)


Shiro 1.2.0 and later provides a command line program that can hash strings and resources (files, URLs, classpath entries) of almost any type. To use it, you must have a Java Virtual Machine installed and the 'java' command must be accessible in your `$PATH` environment variable.

<a name="CommandLineHasher-Usage"></a>
##Usage

Ensure you have access to the `shiro-tools-hasher-`_version_`-cli.jar` file. You can either find this in a source build in the _buildroot_`/tools/hasher/target` directory or via download through Maven.

Once you have access to the jar, you can run the following command:

``` bash
$ java -jar shiro-tools-hasher-X.X.X-cli.jar
```

This will print all available options for both standard (MD5, SHA1) and more complex password hashing scenarios.

<a name="CommandLineHasher-CommonScenarios"></a>
##Common Scenarios

Please read the printed instructions for the above command. It will provide an exhaustive list of instructions which will help you use the hasher depending on your needs. However, we've provided some quick reference usages/scenarios below for convenience.

<a name="CommandLineHasher-%7B%7Bshiro.ini%7D%7DUserPasswords"></a>
###`shiro.ini` User Passwords

It is best to keep user passwords in the `shiro.ini` `[users]` section secure. To add a new user account line, use the above command with the `**-p**` (or `--password`) option:

``` bash
$ java -jar shiro-tools-hasher-X.X.X-cli.jar -p
```

It will then ask you to enter the password and then confirm it:

``` bash
Password to hash:
Password to hash (confirm):
```

When this command executes, it will print out the securely-salted-iterated-and-hashed password. For example:

``` bash
$shiro1$SHA-256$500000$eWpVX2tGX7WCP2J+jMCNqw==$it/NRclMOHrfOvhAEFZ0mxIZRdbcfqIBdwdwdDXW2dM=
```

Take this value and place it as the password in the user definition line (followed by any optional roles) as defined in the [INI Users Configuration](configuration.html#Configuration-%5Cusers%5C) documentation. For example:

``` ini
[users]
...
user1 = $shiro1$SHA-256$500000$eWpVX2tGX7WCP2J+jMCNqw==$it/NRclMOHrfOvhAEFZ0mxIZRdbcfqIBdwdwdDXW2dM=
```

You will also need to ensure that the implicit `iniRealm` uses a `CredentialsMatcher` that knows how to perform secure hashed password comparisons. So configure this in the `[main]` section as well:

``` ini
[main]
...
passwordMatcher = org.apache.shiro.authc.credential.PasswordMatcher
iniRealm.credentialsMatcher = $passwordMatcher
...
```

<a name="CommandLineHasher-MD5checksum"></a>
###MD5 checksum

Although you can perform any hash with any algorithm supported on the JVM, the default hashing algorithm is MD5, common for file checksums. Just use the `**-r**` (or `--resource`) option to indicate the following value is a resource location (and not text you wish hashed):

``` bash
$ java -jar shiro-tools-hasher-X.X.X-cli.jar -r RESOURCE_PATH
```

By default `RESOURCE_PATH` is expected to be a file path, but you may specify classpath or URL resources by using the `classpath:` or `url:` prefix respectively.

Some examples:

``` bash
<command> -r fileInCurrentDirectory.txt
<command> -r ../../relativePathFile.xml
<command> -r ~/documents/myfile.pdf
<command> -r /usr/local/logs/absolutePathFile.log
<command> -r url:http://foo.com/page.html <command> -r classpath:/WEB-INF/lib/something.jar
```