# vimrc

## [Vundle](https://github.com/VundleVim/Vundle.vim)

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## .vimrc

```sh
git clone https://github.com/paranlee/vimrc.git ~/vimrc
cp ~/vimrc/.vimrc ~
```

## Preinstall Plugins

Install dependency plugins in ubuntu ≥ 20.04

```sh
sudo apt -y install build-essential cmake python3-dev universal-ctags cscope
```

## Install Plugins

Launch `vim` and run `:PluginInstall`

```sh
vim .vimrc

# go to vim and 
#   :PluginInstall
```

## Portable

We can use portable vimrc tar in intranet.

```sh
tar cvf vimrc.tar vimrc
# some moving via network
tar xvf T.tar -C ~/vimrc
```
