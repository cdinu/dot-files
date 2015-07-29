#!/bin/bash

echo 'Overwriting your config files'

for i in .gitconfig .vimrc .vimrc.local .vimrc.bundles .vimrc.bundles.local .jshintrc .jscsrc .zshrc .tmux.conf bin
do
  rm -f ~/$i
  ln -s $PWD/$i ~/$i
done

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

cd ~/.vim/bundle/tern_for_vim && npm install

echo Done. Congrats!
