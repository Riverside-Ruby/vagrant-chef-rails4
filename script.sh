#!/usr/bin/env sh

RAILS_DIR='/vagrant/rails'
su - vagrant -c "git clone https://github.com/Riverside-Ruby/topics-project ${RAILS_DIR}"
su - vagrant -c "cd ${RAILS_DIR} && bundle"
su - vagrant -c "rake -f ${RAILS_DIR}/Rakefile db:drop db:create db:migrate db:seed"
su - vagrant -c "cd ${RAILS_DIR} && rails s -d &"

EMBER_DIR='/vagrant/ember'
su - vagrant -c "sudo npm install -g ember-cli"
su - vagrant -c "sudo npm install -g bower"
su - vagrant -c "sudo npm install -g phantomjs"
git clone https://github.com/RiversideJS/ember-topics ${EMBER_DIR}
sudo chown -R vagrant ~/.npm
su - vagrant -c "cd ${EMBER_DIR} && npm install --save-dev"
su - vagrant -c "cd ${EMBER_DIR} && bower install"
su - vagrant -c "cd ${EMBER_DIR} && ember s --proxy http://localhost:3000"
