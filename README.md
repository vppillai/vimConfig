# PS1 prompt

```bash
# Colors
BLUE='\[\033[38;5;33m\]'
GREEN='\[\033[38;5;40m\]'
RED='\[\033[38;5;196m\]'
RESET='\[\033[0m\]'
BOLD='\[\033[1m\]'

# Get Python virtual environment if it exists
function get_virtualenv() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "($(basename $VIRTUAL_ENV))-"
    fi
}
# Set the prompt
PS1="${debian_chroot:+($debian_chroot)}┌──\$(get_virtualenv)(${BOLD}${BLUE}\uⓊ \h${RESET})-[${BOLD}\w${RESET}]\n└─${BOLD}${BLUE}\$${RESET} "

# If you're root, change the colors to red
if [ "$EUID" -eq 0 ]; then
    PS1="${debian_chroot:+($debian_chroot)}┌──\$(get_virtualenv)(${BOLD}${RED}\uⓊ \h${RESET})-[${BOLD}\w${RESET}]\n└─${BOLD}${RED}#${RESET} "
fi
```


# shopt
========

 ```
 shopt -s autocd direxpand dirspell histverify checkwinsize cdspell cdable_vars
```
# vimConfig
=========

Install prerequsites

```

sudo apt-get install build-essential cmake python-dev python3-dev cscope git vim -y

```

place vim configuration in ~/.vimrc

```

wget https://raw.githubusercontent.com/vppillai/vimConfig/master/.vimrc ~/

```

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
