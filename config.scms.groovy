scms {

    excludes = ['templates/**', '**/.svn', '**/.git', '**/.gitignore', '**/*.iml', '**/*.ipr', '**/*.iws']

    //global defaults:
    //model {
    //    //the above template uses the year for a copyright notice:
    //    year = Calendar.getInstance.get(Calendar.YEAR)
    //}

    patterns {

        'static/**/*.html' {
            template = 'templates/none.vtl'
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
    }

}