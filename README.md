This is a Lightning based implementation of D8 that uses lando for container management.

## Get Started
How to start:
* get lando https://docs.devwithlando.io/installation/installing.html
* `git clone git@github.com:ethanteague/va.gov-cms.git vagov`
* `cd vagov`
* `lando start`

What it does:
* Spins up php, mysql, and node containers
* Dependencies (including components project) are pulled in via composer
* Base config installs uswds and sets a subtheme for this project

How to use:
* visit the site by clicking one of the urls provided (aliased and https options are available)
* compile scss to css by going to theme dir and running `lando gulp`
* drush commands are prefixed with lando, e.g.: `lando drush cr`
* composer is used for project management, e.g.: `composer require drupal/uswds`

Todo:
* Integrate with devops helm setup (I think having a command that pulls in this repo and then runs lando start should get us pretty far down the road).
* decide how we are going to sync files across environments
* work out settings.php for various environments - lando db settings are stored in settings.lando.php
* Create pull request against main repo (edited)
