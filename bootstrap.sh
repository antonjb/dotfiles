#!/bin/zsh

# Update
brew update
brew upgrade

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install
brew install awscli
brew install contentful-cli
brew install diffnav
brew install docker
brew install docker-completion
brew install docker-compose
brew install ffmpeg
brew install fnm
brew install fzf
brew install gemini-cli
brew install gh
brew install git
brew install imagemagick
brew install jq
brew install repomix
brew install sops
brew install starship
brew install stow
brew install uv
brew install wget
brew install yazi
brew install yt-dlp
brew install zoxide

# Casks
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask alfred
brew install --cask bitwarden
brew install --cask bruno
brew install --cask cleanshot
brew install --cask daisydisk
brew install --cask dash6
brew install --cask discord
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask figma
brew install --cask firefox
brew install --cask firefox-developer-edition
brew install --cask font-fira-code-nerd-font
brew install --cask font-monaspace
brew install --cask ghostty
brew install --cask gitkraken
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask kaleidoscope
brew install --cask microsoft-edge
brew install --cask moom
brew install --cask ngrok
brew install --cask ollama-app
brew install --cask orbstack
brew install --cask pixelsnap
brew install --cask polypane
brew install --cask redis-insight
brew install --cask safari-technology-preview
brew install --cask slack
brew install --cask todoist
brew install --cask vlc
brew install --cask zed
brew install --cask zen

# Clean
brew cleanup
