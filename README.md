# Instalación 
## Dependencies:
1. sudo apt-get install ninja-build gettext cmake curl build-essential nodejs npm golang git pip libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl binutils bison gcc ripgrep
## Installing go:
1. bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
2. source ~/.gvm/scripts/gvm
3. gvm install go1.20.8
4. gvm use go1.20.8
5. gvm install 1.23.0
6. gvm use 1.23.0
7. gvm install go1.24.3
8. gvm use 1.24.3 --default
## Installing rust:
1. curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
2. source ~/.cargo/env
## Installing python 3.12
1. wget https://www.python.org/ftp/python/3.12.0/Python-3.12.0.tgz
2. cd Python-3.12.0
3. ./configure --enable-optimizations
4. make -j 8
5. make altinstall
## Installing typescript
1. sudo npm install -g typescript
Configuring Git
1. git config --global user.name "MrClusmy-ai"
2. git config --global user email "eduardomenchaca01@hotmail.com"
3. git config --global init.default branch main
## Installing nvim
1. git clone https://github.com/neovim/neovim
2. cd neovim
3. git fetch --all
4. git pull --all
5. git checkout stable
6. make CMAKE_BUILD_TYPE=RelWithDebInfo
7. cd build && cpack -G DEB && sudo dpkg -i nvim-linux-x86_64.deb
