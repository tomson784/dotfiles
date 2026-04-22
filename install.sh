#!/bin/bash

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

# tmuxを起動するためのエイリアスを追加
echo "alias tmux_start='tmux new-session \; split-window -v \; split-window -h \; source-file ~/.tmux.conf\;'" >> ~/.bashrc
# ターミナルの色を変えるための設定
echo "export LS_COLORS='di=01;35'" >> ~/.bashrc
# git branchをプロンプトに表示するための設定
echo "PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]$(__git_ps1)\n\$ '" >> ~/.bashrc
