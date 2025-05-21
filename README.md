# Instalación 
1. Dependencies
```
sudo apt-get install ninja-build gettext cmake curl build-essential nodejs npm golang git pip libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl binutils bison gcc ripgrep zsh neofetch unzip fzf tmux 
```
2. Installing go
```
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
source ~/.gvm/scripts/gvm
gvm install go1.20.8
gvm use go1.20.8
gvm install 1.23.0
gvm use 1.23.0
gvm install go1.24.3
gvm use 1.24.3 --default
```
3. Installing rust
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
```
4. Installing python 3.12
```
wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz
cd Python-3.12.0
./configure --enable-optimizations
make -j 8
make altinstall
```
5. Installing typescript
```
sudo npm install -g typescript
```
6. Configuring Git
```
git config --global user.name "MrClusmy-ai"
git config --global user email "eduardomenchaca01@hotmail.com"
git config --global init.default branch main
```
7. Terminal configuration
```
chsh eduardo
```
/bin/zsh <CR>
download Jetbrains mono nerd font
```
sudo unzip Downloads/JetBrainsMonoNaerd.zip -d /usr/share/fonts/truetype
nvim ~/.zshrc
```
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# download zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# plugins

zinit ice depth=1; zinit light romkatv/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# snippets
zinit snippet OMZP::git

autoload -U compinit && compinit

bindkey '^k' autosuggest-accept
bindkey '^h' history-search-backward
bindkey '^l' history-search-forward

# history
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# aliases
alias ls='ls --color'
alias c='clear'

# shell integrations
# eval "$(fzf --zsh)"

# supress warnings
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
```
source ~/.zshrc
```

7. Installing nvim
```
git clone https://github.com/neovim/neovim
cd neovim
git fetch --all
git pull --all
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux-x86_64.deb
```
