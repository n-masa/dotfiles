#!/bin/sh

mkdir -p ~/.config/nvim
mkdir -p ~/.vim/rc
mkdir -p ~/.emacs.d

ln -sf ~/dotfiles/vim/.vimrc ~/.vimrc
ln -sf ~/dotfiles/vim/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotfiles/vim/init.vim ~/viminitfile
ln -sf ~/dotfiles/vim/dein.toml ~/.vim/rc/dein.toml
ln -sf ~/dotfiles/vim/dein_lazy.toml ~/.vim/rc/dein_lazy.toml
ln -sf ~/dotfiles/vim/dein_nvim.toml ~/.vim/rc/dein_nvim.toml
ln -sf ~/dotfiles/vim/dein_nvim.toml ~/.vim/rc/dein_nvim_lazy.toml
ln -sf ~/dotfiles/emacs/init.el ~/.emacs.d/init.el
ln -sf ~/dotfiles/emacs/init.el ~/emacsinitfile
