# vcs_info modifications from Bart Trojanowski's zsh prompt:
# http://www.jukie.net/bart/blog/pimping-out-zsh-prompt
#
# git untracked files modification from Brian Carper:
# http://briancarper.net/blog/570/git-info-in-your-zsh-prompt

function virtualenv_info {
  if [[ -a ./bin/activate ]]; then
    source ./bin/activate > /dev/null
  fi
  [ $VIRTUAL_ENV ] && echo ' ('`basename $VIRTUAL_ENV`') '
}
#add-zsh-hook chpwd virtualenv_info

PR_GIT_UPDATE=1

setopt prompt_subst

autoload -U add-zsh-hook
autoload -Uz vcs_info

#use extended color pallete if available
if [[ $TERM = *256color* || $TERM = *rxvt* ]]; then
turquoise="%F{81}"
orange="%F{166}"
purple="%F{135}"
hotpink="%F{161}"
limegreen="%F{118}"
lorange="%F{222}"
batyellow="%F{226}"
muckgreen="%F{29}"
batgreen="%F{76}"
batred="%F{88}"
purblue="%F{69}"
swampgreen="%F{64}"
purple4="%F{54}"
deeppink="%F{109}"
limblue="%F{154}"
skyblue="%F{30}"
teal="%F{31}"
new="%F{45}"
new2="%F{50}"
sneakyc="%F{151}"
gnew="%F{65}"
gnew2="%F{67}"
else
turquoise="$fg[cyan]"
orange="$fg[yellow]"
purple="$fg[magenta]"
hotpink="$fg[red]"
limegreen="$fg[green]"
batyellow="%fg[yellow]"
batgreen="%fg[green]"
batred="%fg[red]"
fi

# enable VCS systems you use
zstyle ':vcs_info:*' enable git svn

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stagedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
PR_RST="%{${reset_color}%}"
FMT_BRANCH=" on %{$turquoise%}%s-➜%r-➜%b%u%c%a${PR_RST} "
FMT_ACTION=" performing a %{$limegreen%}%a${PR_RST}"
FMT_UNSTAGED="%{$orange%} ●"
FMT_STAGED="%{$limegreen%} ●"

zstyle ':vcs_info:*:prompt:*' unstagedstr "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats ""


function steeef_preexec {
#case "$(history $HISTCMD)" in
case "$2" in
*git*)
PR_GIT_UPDATE=1
;;
*svn*)
PR_GIT_UPDATE=1
;;
esac
}
add-zsh-hook preexec steeef_preexec

function steeef_chpwd {
PR_GIT_UPDATE=1
}
add-zsh-hook chpwd steeef_chpwd

function steeef_precmd {
if [[ -n "$PR_GIT_UPDATE" ]] ; then
# check for untracked files or updated submodules, since vcs_info doesn't
if [[ ! -z $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
PR_GIT_UPDATE=1
FMT_BRANCH="${PM_RST} on %{$turquoise%}%s-➜%r-➜%b%u%c%a%{$hotpink%} ●${PR_RST} "
else
FMT_BRANCH="${PM_RST} on %{$turquoise%}%s-➜%r-➜%b%u%c%a${PR_RST} "
fi
zstyle ':vcs_info:*:prompt:*' formats "${FMT_BRANCH}"

vcs_info 'prompt'
PR_GIT_UPDATE=
fi
}
add-zsh-hook precmd steeef_precmd

function guess_who {
upower -e > /dev/null 2>&1

if [ $? -eq 0 ]; then
os="lin"
else
os="win"
fi
}
add-zsh-hook precmd guess_who

function time_function {
$guess_who
if [[ "$os" = "win" ]]; then
date | gawk 'BEGIN{RS=","}END{print $2" "$3}'
else
date | gawk '{print $4}'
fi
}

function sudo_query {
  sudo -nv > /dev/null 2>&1
  if [[ $? == 0 ]]; then
#echo 
    echo " "
  else
    :
  fi
}

function dir_writeable {
  if [ -w "$(pwd)" ]; then :;else echo ;fi
}

function sneaky {
  if [[ $! -ne 0 ]]; then
    echo $!
  fi
}

function gitadditions {
  git rev-parse --git-dir > /dev/null 2>&1
  if [[ $? == 0 ]]; then
    insertions=$(git --no-pager diff --numstat | awk '{sum1+=$1}END{print sum1}')
    echo " "$insertions:
  fi
}

function gitdeletions {
  git rev-parse --git-dir > /dev/null 2>&1
  if [[ $? == 0 ]]; then
    deletions=$(git --no-pager diff --numstat | awk '{sum2+=$2}END{print sum2}')
    echo $deletions" "
  fi
}

PROMPT=$'%{$new2%}$(sudo_query)%{$reset_color%}%{$swampgreen%}%n%{$reset_color%} on %{$purblue%}%M%{$reset_color%} in %{$limegreen%}%/%{$reset_color%} at %{$muckgreen%}$(time_function)%{$reset_color%}$(ruby_prompt_info " with%{$fg[red]%} " v g "%{$reset_color%}")$vcs_info_msg_0_%{$limblue%}%{$gnew%}$(gitadditions)%{$gnew2%}$(gitdeletions)%{$reset_color%}%{$deeppink%}$(virtualenv_info)%{$reset_color%} %{$sneakyc%}$(sneaky)%{$reset_color%} %{$new%}$(rebuildquery)%{$reset_color%} %{$batred%}$(dir_writeable)%{$reset_color%} \n%{$limblue%}--➜%{$reset_color%}'

function rebuildquery {
  make -q > /dev/null 2>&1
  if [[ $? == 1 ]]; then
    echo ::rebuild::
  else
    :
  fi
}

function zle-line-init zle-keymap-select {
    VIM_PROMPT_NORMAL="%{$fg_bold[green]%}% [% NORMAL]% %{$reset_color%}"
    VIM_PROMPT_INSERT="%{$fg_bold[blue]%}% [% INSERT/MAIN]% %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT_NORMAL}/(main|viins)/$VIM_PROMPT_INSERT} %{$lorange%}%?↵%{$reset_color%}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
