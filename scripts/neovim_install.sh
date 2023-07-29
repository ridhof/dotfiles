#!/bin/bash

if command -v nvim &> /dev/null; then
    exit
fi

sudo apt-get install neovim --yes
