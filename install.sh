#!/bin/bash

echo "This thing is destructive with your files. Last chance to cancel."
echo "NB- When zsh is installing, it starts itself. Ctrl+D to exit the shell and continue"
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

echo Done. Congrats!
