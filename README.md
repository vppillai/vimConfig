vimConfig
=========

place vim configuration in ~/.vimrc

Install vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Then run `:PluginInstall`

compile YCM : 

```
sudo apt-get install build-essential cmake python-dev python3-dev
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

```
