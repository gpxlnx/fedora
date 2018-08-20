#!/usr/bin/sh

PID=$(pgrep hived)
if [[ -z $PID ]]; then
  echo ""
else
  echo hived
fi
