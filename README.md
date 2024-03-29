This is a Lightning based implementation of D8 that uses lando for container management.

## Get Started
How to start:
* get lando https://docs.devwithlando.io/installation/installing.html
* `git clone git@github.com:ethanteague/va.gov-cms.git vagov`
* `cd vagov`
* `lando start`
* `lando db-import drupal-starter.gz` (first time only)
* `lando rebuild`

What it does:
* Spins up php, mysql, and node containers
* Dependencies (including components project) are pulled in via composer
* Base config installs uswds and sets a subtheme for this project

How to use:
* visit the site by clicking one of the urls provided (aliased and https options are available)
* compile scss to css by going to theme dir and running `lando gulp`
* drush commands are prefixed with lando, e.g.: `lando drush cr`
* composer is used for project management, e.g.: `composer require drupal/uswds`

Running Behat Tests
* `cd tests`
* `lando behat --tags=name-of-tag`

Workflow
* We use drupal-spec-tool to keep track of config changes, and sync tests
* After updating config, cd into /tests, and run `lando behat --tags=spec`
* Discrepancies between code and config will be reflected in test output
* Visit https://docs.google.com/spreadsheets/d/1vL8rqLqcEVfESnJJK_GWQ7nf3BPe4SSevYYblisBTOI/edit?usp=sharing, choose the tab
related to config changes, and update cells accordingly.
* Go back to https://docs.google.com/spreadsheets/d/1vL8rqLqcEVfESnJJK_GWQ7nf3BPe4SSevYYblisBTOI/edit?usp=sharing, and copy the cell that
pertains to the test you are updating, and paste into the test file in /tests/behat (before pasting, take note of any tags related to test(s), and add them back in after pasting).
* Run tests again, correcting and updating the spreadsheet, and exporting accordingly until tests and spreadsheet are in sync.
* Export config to code: `lando drush config:export` then commit changes to code.

Todo:
* Integrate with devops helm setup (I think having a command that pulls in this repo and then runs lando start should get us pretty far down the road).
* decide how we are going to sync files across environments
* work out settings.php for various environments - lando db settings are stored in settings.lando.php
* Create pull request against main repo (edited)
