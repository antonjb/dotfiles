#!/bin/bash

# Update
brew update
brew upgrade

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap sambadevi/powerlevel9k

# Install
brew install awscli
brew install git
brew install guetzli
brew install imagemagick
brew install nvm
brew install powerlevel9k
brew install saml2aws
brew install yarn
brew install zsh
brew install zsh-completions

# Casks
brew cask install 1password
brew cask install alfred3
brew cask install dash
brew cask install docker
brew cask install dropbox
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install firefox-developer-edition
brew cask install firefox-nightly
brew cask install font-fira-code
brew cask install font-firacode-nerd-font
brew cask install imageoptim
brew cask install iterm2
brew cask install slack
brew cask install skitch
brew cask install spotify
brew cask install visual-studio-code

# Clean
brew cleanup

# install vscode extensions
while read extension; do
    code --install-extension $extension
done <<EOL
coenraads.bracket-pair-colorizer-2
dbaeumer.vscode-eslint
eamodio.gitlens
esbenp.prettier-vscode
EOL
