#!/usr/bin/bash
#./lemonbar.sh| lemonbar -f "DejaVu Sans Mono for Powerline:size=7"

NORMAL="%{F-}%{B-}"

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
  echo -e "%{r}%{F#00ffff}%{B#ff0000}%{R} S:$(MEM_SWAP)%{F#ffff00}%{B#00ffff}\ue0b2%{R} M:$(MEM_RAM)%{F#0000ff}%{B#ffff00}\ue0b2%{R} $(DATETIME)$NORMAL"
  sleep 1
done
