# vimConfig
=========

Install prerequsites

```

sudo apt-get install build-essential cmake python-dev python3-dev cscope

```

place vim configuration in ~/.vimrc

Install vundle
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Then run `:PluginInstall`

compile YCM : 

```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

```

# Shortcuts and keymaps

## NerdTree

- `\\` Toggle NerdTree
- `\f` Find current file in NerdTree
