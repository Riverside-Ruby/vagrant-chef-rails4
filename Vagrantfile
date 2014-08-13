# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty32"

  # config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3001 # Rails
  config.vm.network "forwarded_port", guest: 4200, host: 4201 # Ember
  config.vm.network "forwarded_port", guest: 5432, host: 5433 # Postgresql

  config.vm.network "private_network", type: "dhcp"
  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "git"
    chef.add_recipe "nodejs"
    chef.add_recipe "postgresql::client"
    chef.add_recipe "postgresql::server"
    chef.add_recipe "rbenv::user"
    chef.add_recipe "rbenv::vagrant"
    chef.add_recipe "ruby_build"

    chef.json = {
      postgresql: {
        password: {
          postgres: "password"
        },
        version: "9.3",
        listen_addresses: "*",
      },
      "build-essential" => {
        compile_time: true
      },
      rbenv: {
        rubies: [ "2.1.2" ],
        upgrade: true,
        global: "2.1.2",
        gems: {
          "2.1.2" => [
            { name: "bundler" },
            { name: "rails" }
          ]
        }
      }
    }
  end

  config.vm.provision "shell" do |sh|
    sh.path = "script.sh"
  end
end
