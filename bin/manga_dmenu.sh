#!/usr/bin/env zsh
# until kaminokumo --manga; do done | dmenu -nhb "dark slate gray" -nhf white -shb "forest green" -shf white -l 12 -p "Manga List:" > /dev/null
until kaminokumo --manga; do done | dmenu -p "Manga List:" > /dev/null

