#!/usr/bin/env zsh

set -o pipefail
source ~/.zshrc
COMMAND=$(echo "" | dmenu -p "Quick Term:")
RESULT=$(eval "$COMMAND")
echo $RESULT | dmenu -p "Quick Term Out:" > /dev/null
