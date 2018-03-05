# Path to your oh-my-zsh installation.
  export ZSH=/home/bloodstalker/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="devi"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime svn zsh-syntax-highlighting autojump vi-mode virtualenv virtualenvwrapper)

# User configuration

  export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/bloodstalker/.local/bin:/home/bloodstalker/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

[[ -s /home/bloodstalker/.autojump/etc/profile.d/autojump.sh ]] && source /home/bloodstalker/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias devihome=/home/bloodstalker/devi/hell
alias devihome1=/home/bloodstalker/devi/hell1
alias devihome2=/home/bloodstalker/devi/hell2
alias devihome3=/home/bloodstalker/devi/hell3
alias "$SHELL"="echo $SHELL"
#alias clang="/home/bloodstalker/llvm/llvm/build/bin/clang"
#alias clang++="/home/bloodstalker/llvm/llvm/build/bin/clang++"
#alias llvm-config="/home/bloodstalker/llvm/llvm/build/bin/llvm-config"
#alias "clang-query"="/home/bloodstalker/llvm/llvm/build/bin/clang-query"
alias la="ls -A"
alias ee="nautilus ."
#aliias "clang-format"="/home/bloodstalker/llvm/llvm/build/bin/clang-format"
alias updaterc="cp ~/scripts/.zshrc ~/.zshrc"
alias mutivim="vim ./test/main.c ./test/testFuncs2.h ./test/testFuncs1.h ./test/testFuncs3.h ./test/testFuncs2.c ./test/testFuncs1.c ./test/testFuncs3.c ./mutator-lvl0.cpp ./mutator-lvl1.cpp ./mutator-lvl2.cpp ./mutator_aux.cpp ./mutator_aux.h ./test/auto-refac-tdd/auto-refac-tdd01.h ./test/auto-refac-tdd/auto-refac-tdd01.c ./makefile .travis.yml ./mutator.sh ./tinyxml2/makefile ./json/makefile ./extra-tools/dumper.sh ./extra-tools/ReportPrintPretty.sh ./test/misrareport.json ./test/misrareport.xml ./samples/mutator0-report-schema.xsd ./README.md ./docs/tests.md ./mutator-lvl0.h ./macros.mk" 
alias fixvimrc='cp ~/scripts/.vimrc ~/.vimrc'
alias fixtmuxrc='cp ~/scripts/.tmux.conf ~/.tmux.conf'
alias fixtmuxpowerline='cp ~/scripts/default.sh ~/tmux-powerline/themes/default.sh'
alias fixctagsrc='cp ~/scripts/.ctags ~/.ctags'
alias fixtvrc='cp ~/scripts/.tvrc ~/.tvrc'
alias tmuxpowerline='vim ~/scripts/default.sh'
alias lss="ls -s"
alias speedtest="curl -o /dev/null http://speedtest.sea01.softlayer.com/downloads/test100.zip"
alias zshrc="vim ~/scripts/.zshrc"
alias vimrc="vim ~/scripts/.vimrc"
alias tmuxrc="vim ~/scripts/.tmux.conf"
alias zshtheme="vim ~/scripts/devi.zsh-theme"
alias quit="exit"
alias xx="dtrx"
alias angband="/home/bloodstalker/angband-4.1.0/angband-master/src/angband"
alias startdocker="sudo systemctl start docker"
alias vv="vim"
alias mm="cmatrix -s -C blue"
alias contest="ping 4.2.2.4 -c 7"
alias solide="vim ~/scripts/makefile"
alias dropsolide="cp ~/scripts/makefile ./"
alias genjctags="find . -type f -iregex \".*\.js$\" -not -path \"./node_modules/*\" -exec jsctags {} -f \; | sed '/^$/d' | sort > tags"
alias isup="ps -aux | grep "
alias devi-wasm="/home/bloodstalker/devi/devi-python-offchain/argparser.py"
alias ipfsd="ipfs daemon > /dev/null 2>&1 &; disown"
alias i3rc="vim ~/scripts/.config/i3/config"
alias fixi3rc="cp ~/scripts/.config/i3/config ~/.config/i3/config && i3-msg restart"
alias muttrc="vim ~/scripts/.muttrc"
alias fixmuttrc="cp ~/scripts/.muttrc ~/.muttrc"
alias dropcmake="cp ~/scripts/makefilec ./makefile"
alias dropcppmake="cp ~/scripts/makefilecpp ./makefile"
alias droppy="cp ~/scripts/python/main.py ./main.py"
alias diff="colordiff"
alias yy="~/scripts/coinmarketcap.py"
alias fixurls="cp ~/scripts/urls ~/.newsbeuter/urls"
alias qtrc="vim ~/scripts/qtbrowser/config.py"
alias fixqtrc="cp ~/scripts/qtbrowser/config.py ~/.config/qutebrowser/config.py"
alias dropcextra="cp ~/scripts/c/devi_extra.h ./devi_extra.h"
alias tg="telegram-cli"
alias telebot="/home/bloodstalker/scripts/telebot.py > /dev/null 2>&1 &"
function gdd {
  #git --no-pager diff --numstat | gawk \'{print$1$2}\'
  git --no-pager diff --numstat | gawk '{sum1+=$1;sum2+=$2}END{print "additions:"sum1"  ""deletions:"sum2}'
}

function pid {
  ps -aux | grep "$1" | grep -v grep | awk '{print$2}'
}

REPORTTIME=4
STARDICT_DATA_DIR="/home/bloodstalker/.stardict"
export STARDICT_DATA_DIR
alias def="sdcv --color"

export LESS='-R'
export LESSOPEN='|~/scripts/lesscolor.sh %s'

function fixrc {
	cp ~/scripts/.zshrc ~/.zshrc
	source ~/.zshrc
}

function fixtheme {
  cp ~/scripts/devi.zsh-theme ~/.oh-my-zsh/themes/devi.zsh-theme
  source ~/.zshrc
}

export PATH=$PATH:/home/bloodstalker/extra/cov-analysis-linux64-8.5.0.5/bin
export PATH=:$PATH:/home/bloodstalker/extra/llvm-6/build/bin
#export PATH=:$PATH:/home/bloodstalker/extra/llvm-clang-4/build/bin
export PATH=:$PATH:/home/bloodstalker/arcanist/arcanist/bin
export PATH=:$PATH:/home/bloodstalker/devi/abbatoir/hole58/solidity_0.4.18/build/solc
export PATH=:$PATH:/home/bloodstalker/binaryen/bin
export PATH=:$PATH:/home/bloodstalker/extra/wabt/bin
export PATH=:$PATH:/home/bloodstalker/extra/go-ethereum/build/bin
export PATH=:$PATH:/home/bloodstalker/.cargo/bin
export PATH=:$PATH:/home/bloodstalker/extra/parity/target/release
export PATH=:$PATH:/home/bloodstalker/extra/wasm-jit-prototype/build/bin
export PATH=:$PATH:/home/bloodstalker/extra/emscripten/emscripten/1.37.22
export PATH=:$PATH:/home/bloodstalker/scripts/bin
export PATH=:$PATH:/home/bloodstalker/extra/android-ndk/android-ndk-r16b
export EDITOR=vim

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

function nn {
  echo $1 >> ~/.devi/notes.txt
}

function nnshow {
  cat ~/.devi/notes.txt
}

function nnedit {
  vim ~/.devi/notes.txt
}

function nnpurge {
  rm ~/.devi/notes.txt
}

bindkey -v
export VIRTUAL_ENV_DISABLE_PROMPT=yes

#nvm
export NVM_DIR="/home/bloodstalker/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# OPAM configuration
. /home/bloodstalker/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
