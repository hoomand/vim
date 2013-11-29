### My Vim setup & Plugins

In order to set it up:
```bash
 git clone git@github.com:sirbijan/vim.git ~/.vim
 ln -s ~/.vim/vimrc ~/.vimrc
 cd ~/.vim
 git submodule init
 git submodule update
```

In future, if you like to update your submodules [anything in bundle/ and pathogenStuff/], you can run:

```bash
git submodule foreach git pull origin master
```
