export ZSH="$HOME/.oh-my-zsh"

plugins=(aliases git macos brew zsh-autosuggestions)
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
alias yarn="corepack yarn"
alias yarnpkg="corepack yarnpkg"
alias pnpm="corepack pnpm"
alias pnpx="corepack pnpx"
alias npm="corepack npm"
alias npx="corepack npx"

unalias l 2>/dev/null
alias l='eza --oneline --all --group-directories-first --icons=auto --hyperlink=auto'

export EDITOR="zed --wait"
export VISUAL="zed --wait"
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
export AWS_PROFILE="BrandDevPermissionSet-011833101604"
export DISABLE_TELEMETRY=1

eval "$(fnm env --use-on-cd)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

update() {
    bubu
    tdc update
}

ghosttyDefault() {
    osascript ~/.config/ghostty/ghostty-default-views.applescript
}

[ -s "${HOME}/.zshsecrets" ] && source "${HOME}/.zshsecrets"

# bun completions
[ -s "/Users/anton/.bun/_bun" ] && source "/Users/anton/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source /Users/anton/.config/fzf/fzf-git.sh
