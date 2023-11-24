#!/bin/zsh

# Update
brew update
brew upgrade

# Tap
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# Install
brew install awscli
brew install fnm
brew install git
brew install pyenv
brew install wget

# Casks
brew install --cask 1password7
brew install --cask alfred
brew install --cask around
brew install --cask bitwarden
brew install --cask cleanshot
brew install --cask dash6
brew install --cask docker
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask figma
brew install --cask firefox
brew install --cask firefox-developer-edition
brew install --cask firefox-nightly
brew install --cask font-fira-code-nerd-font
brew install --cask font-monaspace
brew install --cask imageoptim
brew install --cask insomnia
brew install --cask kaleidoscope
brew install --cask microsoft-edge
brew install --cask moom
brew install --cask ngrok
brew install --cask pixelsnap
brew install --cask safari-technology-preview
brew install --cask slack
brew install --cask todoist
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask warp
brew install --cask zoom

# Clean
brew cleanup

# install vscode extensions
while read extension; do
    code --install-extension $extension
done <<EOL
dbaeumer.vscode-eslint
eamodio.gitlens
esbenp.prettier-vscode
figma.figma-vscode-extension
GitHub.copilot
GitHub.copilot-chat
GitHub.copilot-labs
kaleidoscope-app.vscode-ksdiff
ms-vsliveshare.vsliveshare
unifiedjs.vscode-mdx
alefragnani.project-manager
EOL
