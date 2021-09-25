# vimrc

## [Vundle](https://github.com/VundleVim/Vundle.vim)

```console
ubuntu@paranlee:~$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## .vimrc

```console
ubuntu@paranlee:~$ git clone https://github.com/paranlee/vimrc.git ~/vimrc
ubuntu@paranlee:~$ cp ~/vimrc/.vimrc ~
```

## Preinstall Plugins

Install dependency plugins in ubuntu ≥ 20.04

```console
ubuntu@paranlee:~$ apt -y install build-essential cmake python3-dev universal-ctags cscope
```

## Install Plugins

Launch `vim` and run `:PluginInstall`

```console
ubuntu@paranlee:~$ vim .vimrc

:PluginInstall
```
