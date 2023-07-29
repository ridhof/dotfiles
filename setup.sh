#!/bin/bash

TMPDIR=$(mktemp -d)

CURRENT=$PWD

cd $TMPDIR

for script in ~/.dotfiles/scripts/*; do
  bash "$script"
done

cd $CURRENT

rm -rf $TMPDIR

mkdir -p ~/.config/

cp ~/.dotfiles/init.vim ~/.config/nvim
