export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# User bins
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Go
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"

# Snap
export PATH="/snap/bin:$PATH"

# scripts
export PATH="$HOME/.config/scripts:$PATH"

# pnpm
export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# OH MY ZSH
export ZSH="$HOME/.oh-my-zsh"
zstyle ':omz:update' mode reminder
DISABLE_MAGIC_FUNCTIONS="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="dd.mm.yyyy"

plugins=(
  # Version control
  git

  # Package managers & runtimes
  brew
  node
  npm
  golang
  rust
  python
  pip
  uv
  deno

  # Containers & cloud
  docker
  docker-compose
  kubectl
  gcloud

  # Fuzzy finder
  fzf

  # Quality of life
  sudo
  colored-man-pages
  extract
  history-substring-search
)

# ZSH_THEME="robbyrussell"
ZSH_THEME=""
source "$ZSH/oh-my-zsh.sh"

# history-substring-search key bindings (up/down arrow)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# GENERAL
export EDITOR="nvim"
export SUDO_EDITOR="nvim"

# prevent resolving to windows binaries
alias python=python3
alias pip=pip3

alias activatepy="source .venv/bin/activate"
alias window="cd /mnt/c/Users/User"
alias nvimcf="cd ~/.config/nvim && nvim"
alias folder="/mnt/c/Windows/explorer.exe"
alias gitbasename='basename $(git config --get remote.origin.url) .git'

# Linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# zoxide
eval "$(zoxide init zsh --cmd cd)"

eval "$(/home/naxocist/.local/bin/mise activate zsh)"

# SSH Agent - persist across WSL sessions
_SSH_ENV="$HOME/.ssh/agent.env"
if [ -f "$_SSH_ENV" ]; then
    source "$_SSH_ENV" > /dev/null
fi
if ! ssh-add -l &>/dev/null; then
    ssh-agent -s > "$_SSH_ENV"
    source "$_SSH_ENV" > /dev/null
    ssh-add ~/.ssh/id_ed25519
fi
unset _SSH_ENV
setopt NO_NOMATCH

# altimate
export PATH=/home/naxocist/.altimate/bin:$PATH

autoload -U promptinit; promptinit
prompt pure

# Added by dbt installer
export PATH="$PATH:/home/naxocist/.local/bin"

# dbt aliases
alias dbtf=/home/naxocist/.local/bin/dbt
