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
asdf
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
