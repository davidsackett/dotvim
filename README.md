# Vim config

This is largely tuned for Python and based on:
http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

## Currently included features

* Solarized Vim colour scheme
* Markdown syntax highlighting
* Command-t for fuzzy filename searching

## Install

Checkout then get the submodules

    git clone git@github.com:davidsackett/dotvim.git
    cd dotvim
    git submodule init
    git submodule update
    git submodule foreach git submodule init
    git submodule foreach git submodule update
    cd ..

Create symlinks

    ln -s dotvim ~/.vim 
    ln -s dotvim/.vimrc ~/.vimrc

Install other dependencies

    # required to compile command-t
    sudo apt-get install ruby ruby-dev rake

    # vim with ruby support is required for command-t
    # (vim-gnome etc for gui machines)
    sudo apt-get install vim-nox

Build Command-t

    cd ~/.vim/bundle/command-t
    rake make

## Buffers

* `:e <filename>` to place in a buffer
* `:buffers` to get a list of all buffers
* `:b<number>` to switch to the desired buffer

## Fuzzy Text File Search

* `\t` match anything in your project
* `\b` only search open buffers
