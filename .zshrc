export ZSH="$HOME/.oh-my-zsh"

plugins=(git macos brew vscode zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# User configuration

alias zshconfig="cursor ~/.zshrc"
alias ohmyzsh="cursor ~/.oh-my-zsh"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias o="open"
alias oo="open ."
alias twistlp="cd ~/dev/doist/Twist-Landing-Pages"
alias monorepo="cd ~/dev/doist/fullstack-monorepo"
alias email="cd ~/dev/doist/Doist-Emails"

export EDITOR="cursor"
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
# Set AWS profile
# export AWS_PROFILE=""

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"

envi() {
  op  inject --in-file "${HOME}/.zshsecrets" | while read -r line; do
    eval "$line"
  done
}