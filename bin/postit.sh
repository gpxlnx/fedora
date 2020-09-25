#!/usr/bin/env zsh

RESULT=$(cat ~/devi/abbatoir/postit | dmenu -l 20 -p "Select Postit:")
xsel -p $RESULT
