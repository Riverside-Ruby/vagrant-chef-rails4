# Riverside Ruby Rails Dev Box
This repo uses [Vagrant][vag] to create a Ruby on Rails development environment on a Windows, Mac, or Linux computer. With one command, you can create a virtual Ubuntu Linux box (Trusty Tahr 14.04). [Vagrant][vag] creates Linux web servers on their local machines, while allowing them to use native tools like [Notepad++][npp] and [TextMate][tm]). For Windows users, this means using the latest [Ruby][rb] and [Rails][ror], which are unavailable natively.

## Dependencies
There are three major dependencies: [Git][git], [VirtualBox][vb], and [Vagrant][vag]. All are free software. Additionally, there are a few Vagrant plugins required: [vagrant-vbguest][vbg] and [vagrant-librarian-chef][vlc].

## Windows Installation
Download and install the following. If there are options, just choose default values.

1. [Git v.1.9.4][wingit]
2. [VirtualBox][winvb]
3. [Vagrant][winvag]
4. Open the Git Bash application
5. Install [vagrant-vbguest][vbg] by typing: `vagrant plugin install vagrant-vbguest`
6. Install [vagrant-librarian-chef][vlc]: `vagrant plugin install vagrant-librarian-chef`
5. Clone this repository: `git clone https://github.com/Riverside-Ruby/vagrant-chef-rails4 rrug`
6. Change to the `rrug` folder: `cd rrug`
7. Create the Rails box: `vagrant up`
8. Have a meal. Installation takes about 25 minutes with a fast Internet connection and a 2014 MacBook Pro running Windows 7 Professional. Yours might take longer. Don't worry if it seems to hang at `stdin: is not tty`. Remember that you are installing an entire operating system and the latest Ruby, Rails, and Ember-CLI.
9. When installation is finished, start your servers.

## Mac/Linux Installation
- Follow the instructions above, but feel free to use [Homebrew][brew] to install Git instead of using the binary installer. If you don't know how, talk to Judd, Matt, or Jack.

## Start the servers
Vagrant uses [SSH][ssh] to allow direct control of the virtual machine. Follow the steps below to start your Rails and your Ember servers.

1. SSH into your vagrant machine from your command line (Git bash): `vagrant ssh`
2. Split your terminal window with [Tmux][tmux]: `tmux split-window -v` (vertical) or `tmux split-window -h` (horizontal)
3. Start your Rails server: `rails s`
4. Select the other pane: `tmux select-pane -L` (left) or `-U` (up) or `-R` (right) or `-D` (down)
5. Start your Ember server: `ember s --proxy http://localhost:3000`
6. In a web browser, load <http://localhost:3001> for your Rails app or <http://localhost:4201> for your Ember app. The Vagrant configuration forwards port 3000 and 4200 (the default values) to 3001 and 4201 respectively to avoid port number conflicts.
7. To stop the servers, use Ctrl-C, then type `exit` to close each pane and window.

[brew]: http://brew.sh/
[git]: http://git-scm.com/
[npp]: http://notepad-plus-plus.org/
[rb]: https://www.ruby-lang.org/en/
[ror]: http://rubyonrails.org/
[ssh]: http://en.wikipedia.org/wiki/Secure_Shell
[tm]: http://macromates.com/
[tmux]: http://tmux.sourceforge.net/
[vag]: http://www.vagrantup.com/
[vb]: https://www.virtualbox.org/
[vbg]: https://github.com/dotless-de/vagrant-vbguest
[vlc]: https://github.com/jimmycuadra/vagrant-librarian-chef
[wingit]: http://git-scm.com/download/win
[winvag]: http://www.vagrantup.com/downloads.html
[winvb]: https://www.virtualbox.org/wiki/Downloads
