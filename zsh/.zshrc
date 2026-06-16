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

# opencode
export PATH=/home/naxocist/.opencode/bin:$PATH

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

ZSH_THEME="robbyrussell"
source "$ZSH/oh-my-zsh.sh"

# history-substring-search key bindings (up/down arrow)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# GENERAL
export EDITOR="nvim"

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
export PATH=/home/naxocist/bin:/home/naxocist/.local/share/mise/installs/cargo-cargo-binstall/1.19.1/bin:/home/naxocist/.local/share/mise/installs/go/1.26.3/bin:/home/naxocist/.local/share/mise/installs/node/26.1.0/bin:/home/naxocist/.local/share/mise/installs/postgres/18.3/bin:/home/naxocist/.cargo/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/home/naxocist/.opencode/bin:/home/naxocist/.config/scripts:/snap/bin:/home/naxocist/bin:/home/naxocist/.local/bin:/usr/local/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/home/naxocist/.opencode/bin:/home/naxocist/.local/share/pnpm:/home/naxocist/.config/scripts:/snap/bin:/home/naxocist/bin:/home/naxocist/.local/bin:/usr/local/bin:/home/naxocist/.local/share/bob/nvim-bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Program Files/WindowsApps/MicrosoftCorporationII.WindowsSubsystemForLinux_2.6.3.0_x64__8wekyb3d8bbwe:/mnt/c/WINDOWS/system32:/mnt/c/WINDOWS:/mnt/c/WINDOWS/System32/Wbem:/mnt/c/WINDOWS/System32/WindowsPowerShell/v1.0/:/mnt/c/WINDOWS/System32/OpenSSH/:/mnt/c/Users/User/AppData/Local/mise/shims:/mnt/c/Program Files/dotnet/:/mnt/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/mnt/c/Program Files/mingw64/bin:/mnt/c/Program Files/Tesseract-OCR:/mnt/c/Program Files/MATLAB/R2025b/bin:/mnt/c/Program Files/whkd/bin/:/mnt/c/ProgramData/chocolatey/bin:/mnt/c/Program Files (x86)/Windows Kits/10/Windows Performance Toolkit/:/mnt/c/Program Files/Git/cmd:/mnt/c/Program Files/GitHub CLI/:/mnt/c/Program Files/PowerShell/7/:/Docker/host/bin:/mnt/c/Users/User/Desktop/naxocist/Tools/oss/jdks/jdk24/bin:/mnt/c/Users/User/Desktop/naxocist/Tools/oss/jdks/jdk-bats:/mnt/c/Users/User/Desktop/naxocist/Tools/oss/FFmpeg/bin:/mnt/c/Users/User/Desktop/naxocist/Tools/oss/javafx-sdk-25.0.2/bin:/mnt/c/Users/User/Desktop/naxocist/Tools/oss/mongodb-database-tools-windows-x86.64-100.14.1/bin:/mnt/c/Users/User/AppData/Local/Muse Hub/lib:/mnt/c/Users/User/scoop/shims:/mnt/c/Users/User/.local/bin:/mnt/c/Users/User/AppData/Local/pnpm:/mnt/c/Users/User/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/User/AppData/Local/Programs/MiKTeX/miktex/bin/x64/:/mnt/c/Users/User/AppData/Local/Programs/mongosh/:/mnt/c/Users/User/AppData/Local/Programs/cursor/resources/app/bin:/mnt/c/Program Files/Graphviz/bin:/mnt/c/tools/neovim/nvim-win64/bin:/mnt/c/Users/User/AppData/Local/Microsoft/WinGet/Links:/mnt/c/Users/User/AppData/Local/Programs/Microsoft VS Code/bin:/mnt/c/Users/User/AppData/Local/PowerToys/DSCModules/:/mnt/c/Users/User/AppData/Local/Programs/Kiro/bin:/mnt/c/Users/User/AppData/Local/pixi/bin/:/mnt/c/Users/User/.pixi/bin:/mnt/c/Users/User/AppData/Local/Programs/Antigravity/bin:/mnt/c/Users/User/.lmstudio/bin:/mnt/c/Users/User/AppData/Local/Programs/Zed/bin:/usr/local/go/bin:/home/naxocist/go/bin:/usr/local/go/bin:/home/naxocist/go/bin:/home/naxocist/.claude/plugins/cache/claude-plugins-official/frontend-design/unknown/bin:/home/naxocist/.claude/plugins/cache/claude-plugins-official/superpowers/6fd450765978/bin:/home/naxocist/.claude/plugins/cache/claude-plugins-official/code-simplifier/1.0.0/bin:/home/naxocist/.claude/plugins/cache/claude-plugins-official/claude-md-management/1.0.0/bin:/home/naxocist/.claude/plugins/cache/karpathy-skills/andrej-karpathy-skills/1.0.0/bin:/home/naxocist/.claude/plugins/cache/fullstack-dev-skills/fullstack-dev-skills/0.4.15/bin:/home/naxocist/.claude/plugins/cache/ecc/ecc/2.0.0/bin:/home/naxocist/.claude/plugins/cache/ponytail/ponytail/4.2.0/bin
