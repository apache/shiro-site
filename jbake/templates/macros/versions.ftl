<#assign latestRelease = "1.8.0" />
<#assign versionInfo = {"1.8.0": { "releaseDate": "2021-08-26" } } />

<#assign shiroCore = {"g":"org.apache.shiro", "a": "shiro-core", "type": "jar",
"description": 'Required in all environments. <a class="external-link" href="https://slf4j.org/">Slf4j</a>\'s
<code>slf4j-api</code> jar and one of its binding jars is required. <code>commons-beanutils</code> is
required only if using INI config.'} />

<#assign shiroWeb = {"g": "org.apache.shiro", "a": "shiro-web", "type": "jar",
"description": "Enables support for web-based applications."} />

<#assign shiroServletPlugin = {"g": "org.apache.shiro", "a": "shiro-servlet-plugin", "type": "jar",
"description": "Servlet Fragment which configures Shiro's servlet filter."} />

<#assign shiroJaxrs = {"g": "org.apache.shiro", "a": "shiro-jaxrs", "type": "jar",
"description": "Enables support for JAX-RS applications."} />

<#assign shiroAspectJ = {"g": "org.apache.shiro", "a": "shiro-aspectj", "type": "jar",
"description": 'Enables <a class="external-link" href="https://www.eclipse.org/aspectj/">AspectJ</a> support for Shiro AOP and Annotations.'} />

<#assign shiroCas = {"g": "org.apache.shiro", "a": "shiro-cas", "type": "jar",
"description": "Enables Jasig <a class='external-link' href='https://wiki.jasig.org/display/CAS/Home'>CAS</a> support.
#warning('NOTE:', 'Shiro-CAS support is deprecated, support has been moved to the Apache Shiro based <a href=''https://github.com/bujiio/buji-pac4j''>buji-pac4j</a> project.')"} />

<#assign shiroEhCache = {"g": "org.apache.shiro", "a": "shiro-ehcache", "type": "jar",
"description": 'Enables <a class="external-link" href="https://www.ehcache.org">Ehcache</a>-based famework caching.'} />

<#assign shiroHazelcast = {"g": "org.apache.shiro", "a": "shiro-hazelcast", "type": "jar",
"description": 'Enables <a class="external-link" href="https://hazelcast.org">Hazelcast</a>-based famework caching.'} />

<#assign shiroFeatures = {"g": "org.apache.shiro", "a": "shiro-features", "c": "features", "type": "xml",
"description": 'OSGi / <a class="external-link" href="https://karaf.apache.org/">Apache Karaf</a> integration.'} />

<#assign shiroGuice = {"g": "org.apache.shiro", "a": "shiro-guice", "type": "jar",
"description": 'Enables <a class="external-link" href="https://github.com/google/guice">Google Guice</a> integration.'} />

<#assign shiroQuartz = {"g": "org.apache.shiro", "a": "shiro-quartz", "type": "jar",
"description": 'Enables <a class="external-link" href="https://www.quartz-scheduler.org/">Quartz</a>-based scheduling for Shiro native session validation.'} />

<#assign shiroSpring = {"g": "org.apache.shiro", "a": "shiro-spring", "type": "jar",
"description": 'Enables <a class="external-link" href="https://spring.io/">Spring Framework</a> integration.'} />

<#assign shiroSpringBoot = {"g": "org.apache.shiro", "a": "shiro-spring-boot-starter", "type": "jar",
"description": '<a class="external-link" href="https://spring.io/">Spring Boot</a> starter.'} />

<#assign shiroSpringBootWeb = {"g": "org.apache.shiro", "a": "shiro-spring-boot-web-starter", "type": "jar",
"description": '<a class="external-link" href="https://spring.io/">Spring Boot</a> web starter.'} />

<#assign shiroHasher = {"g": "org.apache.shiro.tools", "a": "shiro-tools-hasher", "c": "cli", "type": "jar", "gavAlt": '<b>Not Relevant</b>',
"description": "A command-line program to perform hashing (MD5, SHA, etc) for files, streams and passwords.
Note that this is a command line program and not intended to be used as a Maven/program
dependency. It is intended to be downloaded and executed:
<pre><code class='bash'> java -jar shiro-tools-hasher-%version%-cli.jar</code></pre>"} />

<#assign shiroAll = {"g": "org.apache.shiro", "a": "shiro-all", "type": "jar", "gavAlt": '<b>Not Recommended</b>',
"description": 'Includes all binary functionality for Shiro (without dependencies), useful in certain build
environments (e.g. Ant). However, this is <b>NOT</b> recommended in Maven builds as it does not
retain correct dependency metadata, which can lead to Maven working incorrectly. For Maven builds,
it is <b>highly</b> recommended to specify individual modules listed below as you require them.'} />


<#assign  shiro11x = {"version": "1.1.0", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroAspectJ,
  shiroEhCache,
  shiroQuartz,
  shiroSpring
]} />

<#assign  shiro12x = {"version": "1.2.6", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroHasher
]} />

<#assign  shiro13x = {"version": "1.3.2", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroHazelcast,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroHasher
]} />

<#assign  shiro14x = {"version": "1.4.2", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroServletPlugin,
  shiroJaxrs,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroHazelcast,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroSpringBoot,
  shiroSpringBootWeb,
  shiroHasher
]} />

<#assign  shiro15x = {"version": "1.5.3", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroServletPlugin,
  shiroJaxrs,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroHazelcast,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroSpringBoot,
  shiroSpringBootWeb,
  shiroHasher
]} />

<#assign  shiro16x = {"version": "1.6.0", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroServletPlugin,
  shiroJaxrs,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroHazelcast,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroSpringBoot,
  shiroSpringBootWeb,
  shiroHasher
]} />

<#assign shiro17x = {"version": "1.7.1", "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroServletPlugin,
  shiroJaxrs,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroHazelcast,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroSpringBoot,
  shiroSpringBootWeb,
  shiroHasher
]} />

<#assign shiro18x = {"version": latestRelease, "artifacts": [
  shiroAll,
  shiroCore,
  shiroWeb,
  shiroServletPlugin,
  shiroJaxrs,
  shiroAspectJ,
  shiroCas,
  shiroEhCache,
  shiroHazelcast,
  shiroFeatures,
  shiroGuice,
  shiroQuartz,
  shiroSpring,
  shiroSpringBoot,
  shiroSpringBootWeb,
  shiroHasher
]} />
