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

plugins=(git)

# ZSH_THEME="sunrise"
ZSH_THEME="robbyrussell"
# ZSH_THEME="robbyrussell-fullpath"
# ZSH_THEME="af-magic"
# ZSH_THEME="arrow"
# ZSH_THEME="aphrodite/aphrodite"

SPACESHIP_PROMPT_ASYNC="false"
SPACESHIP_CHAR_SYMBOL="> "
SPACESHIP_GIT_BRANCH_COLOR="red"
SPACESHIP_PROMPT_ORDER=(
  dir
  git
  node
  venv
  line_sep
  char
)

source "$ZSH/oh-my-zsh.sh"

# GENERAL
export EDITOR="nvim"

alias window="cd /mnt/c/Users/User"
alias nvimcf="cd ~/.config/nvim && nvim"
alias folder="explorer.exe"
alias gitbasename='basename $(git config --get remote.origin.url) .git'

# Linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Fast Node Manager
FNM_PATH="/home/naxocist/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

# zoxide
eval "$(zoxide init zsh --cmd cd)"


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# opencode
export PATH=/home/naxocist/.opencode/bin:$PATH
