#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

mkdir ~/Development
mkdir ~/Development/OpenSource
mkdir ~/Development/Ember
mkdir ~/Development/Ruby
mkdir ~/Development/advocately
mkdir ~/Development/lcpriest
mkdir ~/Development/g2

mkdir ~/TV
mkdir ~/Movies

cd ~/Development/lcpriest
curl -s https://api.github.com/users/lcpriest/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'

cd ~/Development/advocately
curl -s https://api.github.com/orgs/advocately/repos?per_page=200 | ruby -rubygems -e 'require "json"; JSON.load(STDIN.read).each { |repo| %x[git clone #{repo["ssh_url"]} ]}'
