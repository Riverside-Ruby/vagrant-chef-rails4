#!/usr/bin/env sh

# PROJECT_DIR='/vagrant/topics-project'
EMBER_DIR='/vagrant/ember'
su - vagrant -c "sudo npm install -g ember-cli"
su - vagrant -c "sudo npm install -g bower"
su - vagrant -c "sudo npm install -g phantomjs"
su - vagrant -c "git clone https://github.com/RiversideJS/ember-topics ${EMBER_DIR}"
su - vagrant -c "cd ${EMBER_DIR} && sudo npm install --save-dev"
# su - vagrant -c "cd ${EMBER_DIR} && bower install"

RAILS_DIR='/vagrant/rails'
su - vagrant -c "git clone https://github.com/Riverside-Ruby/topics-project ${RAILS_DIR}"
# su - vagrant -c "cd ${RAILS_DIR} && bundle"
# su - vagrant -c "cd ${RAILS_DIR} && rake db:create db:migrate db:seed"
