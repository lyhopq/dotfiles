#!/bin/bash

dotfiles="$HOME/Works/dotfiles"

link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  rm -rf "$to"
  ln -s "$from" "$to"
}

home() {
  for location in $(find home -maxdepth 1 -name '.*'); do
    file="${location##*/}"
    file="${file%.sh}"
    link "$dotfiles/$location" "$HOME/$file"
  done
}

home
