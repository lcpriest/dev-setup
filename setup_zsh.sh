#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
sh mac 2>&1 | tee ~/laptop.log
