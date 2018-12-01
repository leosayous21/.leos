#!/usr/bin/env bash
files='bashrc vimrc tmux.conf inputrc'
PWD=$(pwd)
for file in $files
do
  rm "$HOME/.$file"
  ln -s "$PWD/$file" "$HOME/.$file"
  echo "Symbolic link created for file $file"
done

#install plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


#install z
curl https://raw.githubusercontent.com/rupa/z/master/z.sh > "$HOME/z.sh"
