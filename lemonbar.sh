#!/usr/bin/bash
#./lemonbar.sh| lemonbar -f "DejaVu Sans Mono for Powerline:size=11.3" -g "x16"

NORMAL="%{F-}%{B-}"
sep_left=""
sep_right=""
sep_l_left=""
sep_l_right=""

color_back="#FF1D1F21"
color_fore="#FFC5C8C6"
color_head="#FFB5BD68"
color_sec_b1="#FF282A2E"
color_sec_b2="#FF454A4F"
color_sec_b3="#FF60676E"
color_icon="#FF979997"
color_mail="#FFCE935F"
color_chat="#FFCC6666"
color_cpu="#FF5F819D"
color_net="#FF5E8D87"
color_disable="#FF1D1F21"
color_wsp="#FF8C9440"

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
  echo -e "%{r}%{F#ff1d1f21}%{B$color_net}$sep_left%{R} S:$(MEM_SWAP)%{F#ffcc6666}%{B#ff1d1f21}$sep_left%{R} M:$(MEM_RAM)%{F$color_cpu}%{B#ffcc6666}$sep_left%{R} $(DATETIME)$NORMAL"
  sleep 1
done
