My Vim setup and plugins.

In order to set it up:

1- git clone git@github.com:sirbijan/vim.git ~/.vim
2- ln -s ~/.vim/vimrc ~/.vimrc
3- cd ~/.vim
4- git submodule init
5- git submodule update

In future, if you like to update your submodules [anything in bundle/ and pathogenStuff/], you can run:

git submodule foreach git pull origin master
