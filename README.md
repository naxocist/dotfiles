# dotfiles

Managed with [GNU Stow](https://www.gnu.org/software/stow/). Each top-level directory maps directly onto `$HOME`.

## Packages

| Directory | Target |
|-----------|--------|
| `zsh/` | `~/.zshrc` |
| `nvim/` | `~/.config/nvim/` (submodule → [naxocist/nvim](https://github.com/naxocist/nvim)) |
| `tmux/` | `~/.config/tmux/tmux.conf` |
| `scripts/` | `~/.config/scripts/` |

## Setup

### 1. Clone with submodules

```sh
git clone --recurse-submodules git@github.com:naxocist/dotfiles.git ~/dotfiles
```

If you already cloned without `--recurse-submodules`:

```sh
git submodule update --init --recursive
```

### 2. Handle existing configs

Stow will refuse to create a symlink if the target file already exists. Back up or remove any conflicting files first:

```sh
# Example conflicts to check
mv ~/.zshrc ~/.zshrc.bak
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.config/tmux ~/.config/tmux.bak
```

### 3. Stow everything

```sh
cd ~/dotfiles
./dostow.sh
```

This runs `stow <dir>` for every top-level directory, creating symlinks in `$HOME`.

To stow a single package instead:

```sh
stow zsh
```

## Uninstall

```sh
cd ~/dotfiles
./unstow.sh
```

Or for a single package: `stow -D zsh`

## Committing changes

Because stow uses symlinks, editing any config file (e.g. `~/.zshrc`) is the same as editing the file inside `~/dotfiles`. Just commit from there:

```sh
cd ~/dotfiles
git add zsh/.zshrc
git commit -m "zsh: update aliases"
git push
```

### Nvim (submodule)

Changes to nvim config must be committed in the **submodule repo first**, then the pointer updated here:

```sh
cd ~/dotfiles/nvim/.config/nvim
git add .
git commit -m "your message"
git push

cd ~/dotfiles
git add nvim/.config/nvim
git commit -m "nvim: bump submodule"
git push
```

If you skip the inner commit, the dotfiles repo will track an unpushed or uncommitted state and others won't be able to `git submodule update` correctly.

## Updating the nvim submodule

```sh
cd ~/dotfiles/nvim/.config/nvim
git pull
cd ~/dotfiles
git add nvim/.config/nvim
git commit -m "update nvim submodule"

```
