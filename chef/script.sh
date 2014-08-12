#!/usr/bin/env sh

PROJECT_DIR='/vagrant/topics-project'
RAILS_DIR='/vagrant/rails'
EMBER_DIR='/vagrant/ember'
su - vagrant -c "curl -fsSL https://gist.github.com/mislav/a18b9d7f0dc5b9efc162.txt | rbenv install --patch 2.1.1 & wait"
su - vagrant -c "rbenv global 2.1.1"
su - vagrant -c "git clone https://github.com/Riverside-Ruby/topics-project ${RAILS_DIR} & wait"
su - vagrant -c "gem install --no-ri --no-rdoc bundle rails & wait"
su - vagrant -c "gem install --no-ri --no-rdoc --force rake & wait"
su - vagrant -c "rbenv rehash & wait"
su - vagrant -c "bundle install --path ${RAILS_DIR} --gemfile ${RAILS_DIR}/Gemfile & wait"
su - vagrant -c "rake --rakefile ${RAILS_DIR}/Rakefile db:create db:migrate db:seed & wait"
# su - vagrant -c "mv ${PROJECT_DIR} ${RAILS_DIR}"

su - vagrant -c "sudo npm install -g ember-cli & wait"
su - vagrant -c "sudo npm install -g bower & wait"
su - vagrant -c "sudo npm install -g phantomjs & wait"
su - vagrant -c "git clone https://github.com/RiversideJS/ember-topics ${EMBER_DIR} & wait"
su - vagrant -c "cd ${EMBER_DIR} && npm install --save-dev & wait"
su - vagrant -c "cd ${EMBER_DIR} && bower install & wait"
# su - vagrant -c "mv ${PROJECT_DIR} ${EMBER_DIR}"
