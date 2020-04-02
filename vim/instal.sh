#!/bin/bash

DIR="$(dirname "$0")"

installVimPlug()
{
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

installVimRc()
{
    cp ${DIR}/.vimrc ~/
}

main()
{
    installVimPlug
    installVimRc
}

main "$@"