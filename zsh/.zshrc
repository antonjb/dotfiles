export ZSH="$HOME/.oh-my-zsh"

plugins=(git macos brew zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source <(fzf --zsh)

# User configuration

alias zshconfig="zed ~/.zshrc"
alias ohmyzsh="zed ~/.oh-my-zsh"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias o="open"
alias oo="open ."
alias twistlp="cd ~/dev/doist/Twist-Landing-Pages"
alias monorepo="cd ~/dev/doist/fullstack-monorepo"
alias email="cd ~/dev/doist/Doist-Emails"
alias polypane="/Applications/Polypane.app/Contents/MacOS/Polypane"

export EDITOR="zed --wait"
export VISUAL="zed --wait"
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
export AWS_PROFILE="BrandDevPermissionSet-011833101604"

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

envi() {
  op  inject --in-file "${HOME}/.zshsecrets" | while read -r line; do
    eval "$line"
  done
}

update() {
    bubu
    tw update
    td update
}

ghosttyDefault() {
    osascript ~/.config/ghostty/ghostty-default-views.applescript
}

# bun completions
[ -s "/Users/anton/.bun/_bun" ] && source "/Users/anton/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
