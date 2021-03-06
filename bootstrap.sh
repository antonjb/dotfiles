#!/bin/bash

# Update
brew update
brew upgrade

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install
brew install git
brew install guetzli
brew install imagemagick
brew install nvm
brew install yarn
brew install zsh-completions
brew install romkatv/powerlevel10k/powerlevel10k

# Casks
brew install --cask 1password
brew install --cask dash
brew install --cask dropbox
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask firefox
brew install --cask firefox-developer-edition
brew install --cask firefox-nightly
brew install --cask font-fira-code
brew install --cask font-firacode-nerd-font
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask slack
brew install --cask skitch
brew install --cask spotify
brew install --cask visual-studio-code

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
