# Vim config

This is largely tuned for Python and based on:
http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

## Install

Checkout then get the submodules

    git submodule init
    git submodule update
    git submodule foreach git submodule init
    git submodule foreach git submodule update
   
Install other dependencies

    # required to compile command-t
    sudo apt-get install ruby-dev
    sudo apt-get install vim-gnome

Build Command-t

    cd ~/.vim/bundle/command-t
    rake make

## Buffers

`:e <filename>` to place in a buffer
 
`:buffers` to get a list of all buffers

## Fuzzy Text File Search

`\t` match anything in your project
`\b` only search open buffers
