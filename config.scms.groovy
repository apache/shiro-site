scms {

    excludes = ['templates/**', '**/.svn', '**/.git', '**/.gitignore', '**/*.iml', '**/*.ipr', '**/*.iws', '**/.idea']

    //global defaults:
    //model {
    //    //the above template uses the year for a copyright notice:
    //    year = Calendar.getInstance.get(Calendar.YEAR)
    //}

    // [title: 'title', href: 'href', brief: 'brief'],



    gettingStartedLink = [title: 'Getting Started', href: 'get-started.html', brief: 'Resources, guides and tutorials for new Shiro users.']
    tenMinuiteTutorialLink = [title: '10-Minute Shiro Tutorial', href: '10-minute-tutorial.html', brief: 'Try Apache Shiro for yourself in under 10 minutes.']
    webAppTutorialLink = [title: 'Web App Tutorial', href: 'webapp-tutorial.html', brief: 'Step-by-step tutorial for securing a web application with Shiro.']
    authcGuideLink = [title: 'Java Authentication Guide', href: 'java-authentication-guide.html', brief: 'Learn how Authentication in Java is performed in Shiro.']
    authzGuideLink = [title: 'Java Authorization Guide', href: 'java-authorization-guide.html', brief: 'Learn how Shiro handles access control in Java.']
    webLink = [title: 'Web Apps with Shiro', href: 'web.html', brief: 'Detailed support for integrating Shiro into web applications.']
    webFeaturesLink = [title: 'Web Apps with Shiro', href: 'web-features.html', brief: 'Learn more about integrating Shiro into web applications.']
    authzDocs = [title: 'Authorization Docs', href: 'authorization.html', brief: 'Full documentation on Apache Shiro\'s Authorization functionality.']
    authcDocs = [title: 'Authentication Docs', href: 'authentication.html', brief: 'Full documentation on Shiro\'s Authentication functionality.']



    authcGuideRelatedLinks = [
            [title: 'Authentication Features', href: 'authentication-features.html', brief: 'Quick overview of easy, subject-based authentication in Shiro.'],
            authcDocs,
            tenMinuiteTutorialLink,
            webAppTutorialLink
    ]

    authcFeaturesRelatedLinks = [
            authcGuideLink,
            authcDocs,
            gettingStartedLink,
            webAppTutorialLink
    ]


    authzFeaturesRelatedLinks = [
            authzGuideLink,
            authzDocs,
            gettingStartedLink,
            webAppTutorialLink
    ]

    casRelatedLinks = [
            webFeaturesLink
    ]

    authzGuideRelatedLinks = [
            [title: 'Authorization Features', href: 'authorization-features.html', brief: 'Quick overview of permissions, roles, and users in Shiro.'],
            [title: 'Authorization Docs', href: 'authorization.html', brief: 'Full documentation on Apache Shiro\'s Authorization functionality.'],
            gettingStartedLink,
            tenMinuiteTutorialLink,
            webAppTutorialLink
    ]

    permissionsRelatedLinks = [
            authzGuideLink,
            webAppTutorialLink,
            gettingStartedLink,
            tenMinuiteTutorialLink
    ]
    sessionManagementRelatedLinks = [
            gettingStartedLink,
            tenMinuiteTutorialLink,
            webAppTutorialLink,
            authcGuideLink,
            authzGuideLink
    ]

    springRelatedLinks = [
            webLink,
            webAppTutorialLink
    ]

    tutorialRelatedLinks = [
            gettingStartedLink,
            tenMinuiteTutorialLink,
            webAppTutorialLink,
    ]

    webFeaturesRelatedLinks = [
            webAppTutorialLink,
            webLink
    ]

    webRelatedLinks = [
            webFeaturesLink,
            webAppTutorialLink,
            [title: 'Session Management', href: 'session-management-features.html', brief: 'Shiro enables sessions for any application environment. Learn more!'],
            [title: 'Permissions', href: 'permissions.html', brief: 'Learn more about Shiro\'s powerful and intuitive permission syntax.'],
            authcGuideLink,
            authzGuideLink
    ]

    downloadRelatedLinks = [
            gettingStartedLink,
            tenMinuiteTutorialLink,
            webAppTutorialLink,
            authcGuideLink,
            authzGuideLink,
    ]

    patterns {

        '**/download.html.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = downloadRelatedLinks
                topSpacing = '60px'
            }
        }

        '**/web.md.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = webRelatedLinks
                topSpacing = '60px'
            }
        }

        '**/web-features.md' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = webFeaturesRelatedLinks

            }
        }

        '**/session-management.md.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = sessionManagementRelatedLinks
                topSpacing = '60px'

            }
        }

        '**/tutorial.md.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = tutorialRelatedLinks
                topSpacing = '60px'

            }
        }

        '**/spring.md' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = springRelatedLinks

            }
        }

        '**/permissions.md' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = permissionsRelatedLinks
                topSpacing = '60px'

            }
        }

        '**/java-authentication-guide.md.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = authcGuideRelatedLinks

            }
        }

        '**/java-authorization-guide.md.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = authzGuideRelatedLinks

            }
        }

        '**/authentication-features.md' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = authzGuideRelatedLinks

            }
        }

        '**/authorization-features.md' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = authcFeaturesRelatedLinks

            }
        }

        '**/cas.md.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
                layout = 'templates/layouts/related.vtl'
                relatedLinks = casRelatedLinks

            }
        }

        'static/**/*.html' {
            template = 'templates/none.vtl'
        }

        'static/.htaccess.vtl' {
            template = 'templates/none.vtl'
            outputFileExtension = 'htaccess'
        }

        '**/*.html' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
            }
        }

        '**/*.md' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
            }
        }

        '**/*.vtl' {
            template = 'templates/default.vtl'
            model {
                //the above template uses the year for a copyright notice:
                year = Calendar.getInstance().get(Calendar.YEAR)
            }
        }
    }

}