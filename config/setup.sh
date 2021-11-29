#!/bin/zsh

cd ~
ln -s dotfiles/.zshrc .zshrc
ln -s dotfiles/.zsh_functions .zsh_functions
ln -s dotfiles/.zprofile .zprofile
ln -s dotfiles/githooks .githooks

cd ~/.config

# sway
ln -s ~/dotfiles/config/sway sway
ln -s ~/dotfiles/config/waybar waybar

# I3
#ln -s ~/dotfiles/config/i3 i3
ln -s ~/dotfiles/config/polybar polybar


ln -s ~/dotfiles/config/termite termite
ln -s ~/dotfiles/config/systemd systemd
systemctl --user enable ssh-agent && systemctl --user start ssh-agent