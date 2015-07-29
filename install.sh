#!/bin/bash

echo This thing is destructive with your files. Last chance to cancel.
read 

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

for i in .gitconfig .vimrc .vimrc.local .vimrc.bundles .vimrc.bundles.local .jshintrc .jscsrc .zshrc .tmux.conf bin
do
  rm -f ~/$i
  ln -s $PWD/$i ~/$i
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

cd ~/.vim/bundle/tern_for_vim && npm install

echo >> ~/.vimrc.local
echo "colorscheme Tomorrow-Night-Eighties" >> ~/.vimrc.local
