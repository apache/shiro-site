<a name="Terminology-ApacheShiroTerminology"></a>
#Apache Shiro Terminology

Please just take 2 minutes to read and understand this - it is <em>really</em> important.  Really.  The terms and concepts here are referred to everywhere in the documentation and it will <em>greatly</em> simplify your understanding of Shiro and security in general.

Security can be really confusing because of the terminology used.  We'll make life easier by clarifying some core concepts and you'll see how nicely the Shiro API reflects them:

<a name="Terminology-authentication"></a>
* **Authentication**
Authentication is the process of verifying a Subject's identity - essentially proving that someone really is who they say they are.  When an authentication attempt is successful the application can trust that the subject is guaranteed to be who the application expects.

<a name="Terminology-authorization"></a>
* **Authorization**
Authorization, also known as Access Control, is the process of determining if a user/Subject is allowed to do something or not.  It is usually accomplished by inspecting and interpreting a Subject's roles and permissions (see below) and then allowing or denying access to a requested resource or function.

<a name="Terminology-cipher"></a>
* **Cipher**
A cipher is an algorithm for performing encryption or decryption.  The algorithm generally relies on a piece of information called a key. And the encryption varies based on the key so decyrption is extremely difficult without it.  

    Ciphers come in different variations.  Block Ciphers work on blocks of symbols usually of a fixed size while Stream Ciphers work on a continuous stream of symbols.  Symmetric Ciphers use the same key for encryption and decryption while Asymmetric Ciphers use different keys.  And if a key in an asymmetric cipher cannot be derived from the other, then one can be shared publicly creating public/private key pairs.

<a name="Terminology-credential"></a>
* **Credential**
A <em>Credential</em> is a piece of information that verifies the identity of a user/Subject.  One (or more) credentials are submitted along with Principal(s) during an authentication attempt to verify that the user/Subject submitting them is actually the associated user.  Credentials are usually very secret things that only a particular user/Subject would know, such as a password or a PGP key or biometric attribute or similar mechanism.  

    The idea is that for a principal, only one person would know the correct credential to 'pair' with that principal.  If the current user/Subject provides the correct credential matching the one stored in the system, then the system can assume and trust that the current user/Subject is really who they say they are.  The degree of trust increases with more secure credential types (e.g. biometric signature &gt; password).

<a name="Terminology-cryptography"></a>
* **Cryptography**
Cryptography is the practice of protecting information from undesired access by hiding it or converting it into nonsense so know one else can read it. Shiro focuses on two core elements of Cryptography: ciphers that encrypt data like email using a public or private key, and hashes (aka message digests) that irreversibly encrypt data like passwords.

<a name="Terminology-hash"></a>
* **Hash**
A Hash function is a one-way, irreversible conversion of an input source, sometimes called the message, into an encoded hash value, sometimes called the message digest. It is often used for passwords, digital fingerprints, or data with an underlying byte array.  

<a name="Terminology-permission"></a>
* **Permission**
A Permission, at least as Shiro interprets it, is a statement that describes raw functionality in an application and nothing more.  Permissions are the lowest-level constructs in security policies.  They define only "What" the application can do.  They do not describe "Who" is able to perform the actions.  A Permission is only a statement of behavior, nothing more.

    Some examples of permissions:
    
    - Open a file
    - View the '/user/list' web page
    - Print documents
    - Delete the 'jsmith' user

<a name="Terminology-principal"></a>
* **Principal**
A <em>Principal</em> is any identifying attribute of an application user (Subject).  An 'identifying attribute' can be anything that makes sense to your application - a username, a surname, a given name, a social security number, a user ID, etc.  That's it - nothing crazy.  

    Shiro also references something we call a <tt>Subject</tt>'s <em>primary</em> principal.  A <em>Primary</em> principal is any principal that uniquely identifies the <tt>Subject</tt> across the entire application.  Ideal primary principals are things like a username or a user ID that is a RDBMS user table primary key.  There is only one primary principal for users (Subjects) in an application.

<a name="Terminology-realm"></a>
* **Realm**
A Realm is a component that can access application-specific security data such as users, roles, and permissions. It can be thought of as a security-specific DAO (Data Access Object).  The Realm translates this application-specific data into a format that Shiro understands so Shiro can in turn provide a single easy-to-understand Subject programming API no matter how many data sources exist or how application-specific your data might be.

    Realms usually have a 1-to-1 correlation with a data source such as a relational database, LDAP directory, file system, or other similar resource. As such, implementations of the Realm interface use data source-specific APIs to discover authorization data (roles, permissions, etc), such as JDBC, File IO, Hibernate or JPA, or any other Data Access API.

<a name="Terminology-role"></a>
* **Role**
The definition of a Role can vary based on who you talk to.  In many applications it is nebulous concept at best that people use to implicitly define security policies.  Shiro prefers to interpret a Role as simply a named collection of Permissions.  That's it - an application unique name aggregating one or more Permission declarations.  

    This is a more concrete definition than the implicit one used by many applications.  If you choose to have your data model reflect Shiro's assumption, you'll find you will have much more power in controlling security policies.

<a name="Terminology-session"></a>
* **Session**
A Session is a stateful data context associated with a single user/Subject who interacts with a software system over a period of time.  Data can be added/read/removed from the Session while the subject uses the application and the application can use this data later where necessary.  Sessions are terminated when the user/Subject logs out of the application or when it times out due to inactivity.  

    For those familiar with the HttpSession, a Shiro <tt>Session</tt> serves the same purpose, except Shiro sessions can be used in any environment even if there is no Servlet container or EJB container available.

<a name="Terminology-subject"></a>
* **Subject**
A <em>Subject</em> is just fancy security term that basically means a security-specific 'view' of an application user.  A Subject does not always need to reflect a human being though - it can represent an external process calling your application, or perhaps a daemon system account that executes something intermittently over a period of time (such as a cron job).  It is basically a representation of any entity that is doing something with the application.


<a name="Terminology-Lendahandwithdocumentation"></a>
###Lend a hand with documentation

While we hope this documentation helps you with the work you're doing with Apache Shiro, the community is improving and expanding the documentation all the time.  If you'd like to help the Shiro project, please consider corrected, expanding, or adding documentation where you see a need. Every little bit of help you provide expands the community and in turn improves Shiro.

The easiest way to contribute your documentation is to send it to the <a class="external-link" href="http://shiro-user.582556.n2.nabble.com/" rel="nofollow">User Forum</a> or the <a href="mailing-lists.html" title="Mailing Lists">User Mailing List</a>.

<input type="hidden" id="ghEditPage" value="terminology.md"></input>
