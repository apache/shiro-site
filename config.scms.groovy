scms {

    excludes = ['templates/**', '**/.svn', '**/.git', '**/.gitignore', '**/*.iml', '**/*.ipr', '**/*.iws']

    patterns {

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