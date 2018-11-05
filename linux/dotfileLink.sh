#!/bin/sh

mkdir -p ~/.config/nvim
mkdir -p ~/.vim/rc
mkdir -p ~/.emacs.d

ln -sf ~/dotfiles/linux/.vimrc ~/.vimrc
ln -sf ~/dotfiles/linux/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/linux/init.vim ~/viminitfile
ln -sf ~/dotfiles/linux/dein.toml ~/.vim/rc/dein.toml
ln -sf ~/dotfiles/linux/dein_lazy.toml ~/.vim/rc/dein_lazy.toml
ln -sf ~/dotfiles/linux/dein_nvim.toml ~/.vim/rc/dein_nvim.toml
ln -sf ~/dotfiles/linux/init.el ~/.emacs.d/init.el
ln -sf ~/dotfiles/linux/init.el ~/emacsinitfile
