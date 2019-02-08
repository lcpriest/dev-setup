#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

brew install node

# Remove outdated versions from the cellar.
brew cleanup

npm install -g ember-cli
npm install -g eslint
npm install -g mjml
npm install -g npm-check-updates
npm install -g stylefmt
npm install -g stylelint
npm install -g typescript
npm install -g svgo
npm install -g yarn
npm install -g zapier-platform-cli

gem install middleman rails foreman sidekiq rake --no-ri --no-rdoc
gem install bundle --pre  --no-ri --no-rdoc
