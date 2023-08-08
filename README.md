# Config Raspberry Pi

## prerequisites
```
sudo apt install -y mc tmux
wget -O .tmux.conf https://raw.githubusercontent.com/emmtte/Config-Raspberry/blob/main/.tmux.conf
wget -O .config/nvim/init.vim https://raw.githubusercontent.com/emmtte/Config-Raspberry/blob/main/.config/nvim/init.vim
wget -O .config/mc/mc.ext https://raw.githubusercontent.com/emmtte/Config-Raspberry/blob/main/.config/mc/mc.ext
wget -O .local/share/mc/skins/me.ini https://raw.githubusercontent.com/emmtte/Config-Raspberry/blob/main/.local/share/mc/skins/me.ini
```

## Neovim & neovim-remote
- https://github.com/mhinz/neovim-remote
```
sudo apt install -y neovim git python3-pip
sudo pip3 install neovim-remote
update-alternatives --config editor
NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim
```

## Nodejs
- https://github.com/nodesource/distributions
```
curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
sudo npm install --global yarn
```




## installation
```curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh```

## cargo
```cargo new hello_world```

