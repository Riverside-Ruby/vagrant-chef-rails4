# Riverside Ruby Rails Dev Box
This repo uses [Vagrant][vag] to create a Ruby on Rails development environment on a Windows, Mac, or Linux computer by creating a virtual Ubuntu box. [Vagrant][vag] allows all developers to have identical servers while preserving their native text editors and tools. For instance, a Windows user can use [Notepad++][npp] and a Mac user can use [TextMate][tm], while having the same Ubuntu server code with the latest [Ruby][rb] and [Rails][ror].

## Dependencies
There are three major dependencies:

1. [Git][git]
2. [VirtualBox][vb]
3. [Vagrant][vag]

All are free software. Additionally, there are a few Vagrant plugins required:

1. [vagrant-vbguest][vbg]
2. [vagrant-librarian-chef][vlc]

## Windows Installation
Download and install the following:

1. [Git v.1.9.4][wingit]
2. [VirtualBox][ivb]
3. [Vagrant][winvag]
4. Open the Git Bash application
5. Install [vagrant-vbguest][vbg]: `vagrant plugin install vagrant-vbguest`
6. Install [vagrant-librarian-chef][vlc]: `vagrant plugin install vagrant-librarian-chef`
5. Clone this repository: `git clone https://github.com/Riverside-Ruby/vagrant-chef-rails4 rrug`
6. Change to the `rrug` folder: `cd rrug`
7. Create the Rails box: `vagrant up`
8. Have a meal. Installation takes about 25 minutes with a fast Internet connection and a 2014 MacBook Pro running Windows 7 Professional. Yours might take longer. Don't worry if it seems to hang at `stdin: is not tty`. Remember that you are installing an entire operating system and the latest Ruby.
9. When installation is finished, your server is up and running.

## Mac/Linux Installation
- Follow the instructions above. If you don't know how, talk to Judd, Matt, or Jack.

[brew]: http://brew.sh/
[wingit]: http://git-scm.com/download/win
[winvag]: http://www.vagrantup.com/downloads.html
[git]: http://git-scm.com/
[vb]: https://www.virtualbox.org/
[vag]: http://www.vagrantup.com/
[vbg]: https://github.com/dotless-de/vagrant-vbguest
[vlc]: https://github.com/jimmycuadra/vagrant-librarian-chef
[npp]: http://notepad-plus-plus.org/
[tm]: http://macromates.com/
[rb]: https://www.ruby-lang.org/en/
[ror]: http://rubyonrails.org/
