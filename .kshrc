
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias ......="cd ../../../../../"
alias ll="ls -l"
alias la="ls -a"
alias lss="ls -sSA"
alias ~="cd ~"

alias quit="exit"
alias xx="dtrx"
alias mv="mv -i"
alias cp="cp -i"
alias digg="dig && clear"
alias clean="clear"
alias quit="exit"

PS1='$(print -n "`logname`@`hostname`:";if [[ "${PWD#$HOME}" != "$PWD" ]] then; print -n "~${PWD#$HOME}"; else; print -n "$PWD";fi;print "$ ")'

function docpp {
  cp ~/scripts/makefilecpp ./makefile
  cp ~/scripts/c/main.cpp ./
  cp ~/scripts/c/header.hpp ./
  cp ~/scripts/.ycm_extra_config.py ./.ycm_extra_conf.py
  cp ~/scripts/cfam.vimrc ./.vimrc
  cp ~/scripts/compiler-explorer/ceconfig.json ./
  cp ~/scripts/c/debug.dbg ./
}

function docc {
  cp ~/scripts/makefilec ./makefile
  cp ~/scripts/c/main.c ./
  cp ~/scripts/.ycm_extra_config.py ./.ycm_extra_conf.py
  cp ~/scripts/cfam.vimrc ./.vimrc
  cp ~/scripts/compiler-explorer/ceconfig.json ./
  cp ~/scripts/c/debug.dbg ./
}

function dig {
  globalholecounter=0
  if test "$(ls -A "/home/bloodstalker/devi/abbatoir")"; then
    while [ 1 ]; do
      if [ -d "/home/bloodstalker/devi/abbatoir/hole$globalholecounter" ]; then
        # if its not empty
        if test "$(ls -A "/home/bloodstalker/devi/abbatoir/hole$globalholecounter")"; then
          :
        # if its empty
        else
          cd /home/bloodstalker/devi/abbatoir/hole$globalholecounter
          break
        fi
      else
        mkdir /home/bloodstalker/devi/abbatoir/hole$globalholecounter
        cd /home/bloodstalker/devi/abbatoir/hole$globalholecounter
        echo $globalholecounter
        break
      fi
      ((globalholecounter++))
    done
  else
    mkdir /home/bloodstalker/devi/abbatoir
    mkdir /home/bloodstalker/devi/abbatoir/hole$globalholecounter
    cd /home/bloodstalker/devi/abbatoir/hole$globalholecounter
  fi
}
