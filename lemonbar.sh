#!/usr/bin/bash
#./lemonbar.sh| lemonbar -f "DejaVu Sans Mono for Powerline:size=7"

NORMAL="%{F-}%{B-}"
sep_left=""
sep_right=""
sep_l_left=""
sep_l_right=""

DATETIME() {
  DATETIME=$(date "+%a %b %d, %T")
  echo -n "$DATETIME"
}

MEM_RAM() {
  RESULT=$(free -m | sed "1d"| gawk '{if (NR==1){print int($3/100)/10"G""/"int($2/100)/10"G"}}')
  echo -n "$RESULT"
}

MEM_SWAP() {
  RESULT=$(free -m | sed "1d"| gawk '{if (NR==2){print int($3/100)/10"G""/"int($2/100)/10"G"}}')
  echo -n "$RESULT"
}

while true; do
  echo -e "%{r}%{F#00ffff}%{B#ff0000}$sep_left%{R} S:$(MEM_SWAP)%{F#ffff00}%{B#00ffff}$sep_left%{R} M:$(MEM_RAM)%{F#0000ff}%{B#ffff00}$sep_left%{R} $(DATETIME)$NORMAL"
  sleep 1
done
