#!/usr/bin/env bash

source common.sh
SEPARATOR_RIGHT_BOLD=""
SEPARATOR_RIGHT_THIN=""

MIN_MAJOR_VERSION="2"
MIN_MINOR_VERSION="1"
TMUX_VERSION="$(tmux -V)"

get_tmux_cwd() {
  tmux display -p -F "#{pane_current_path}"
}
tmux_path=$(get_tmux_cwd)
cd $tmux_path
IFS='/' read -ra tmux_path_array <<< "$tmux_path"
for i in "${tmux_path_array[@]}"
do
  shortened_path+=${i:0:1}/
done

function gitadditions {
  git rev-parse --git-dir > /dev/null 2>&1
  if [[ $? == 0 ]]; then
    insertions=$(git --no-pager diff --numstat | awk '{sum1+=$1}END{print sum1}')
    echo + $insertions
  fi
}

function gitdeletions {
  git rev-parse --git-dir > /dev/null 2>&1
  if [[ $? == 0 ]]; then
    deletions=$(git --no-pager diff --numstat | awk '{sum2+=$2}END{print sum2}')
    echo - $deletions
  fi
}

function git_untracked_info {
  git rev-parse --git-dir > /dev/null 2>&1
  if [[ $? == 0 ]]; then
    untracked=$(git ls-files --others --exclude-standard | wc -w)
    echo ⋯ $untracked
  fi
}

tmux_session_info=" #S:#I.#P"
branch_info="#[fg=colour255 bg=colour65]"$(git rev-parse --abbrev-ref HEAD)
untracked_info="#[fg=colour255 bg=colour244]"$(echo ⋯ $(git ls-files --others --exclude-standard | wc -w))
deletions_info="#[fg=colour255 bg=colour1]"$(gitdeletions)
additions__info="#[fg=colour255 bg=colour22]"$(gitadditions)

echo "#[fg=colour255 bg=colour61]$shortened_path #[fg=colour61 bg=colour26]$SEPARATOR_RIGHT_BOLD#[fg=colour255 bg=colour26]$tmux_session_info #[fg=colour26 bg=colour65]$SEPARATOR_RIGHT_BOLD $branch_info #[fg=colour65 bg=colour22]$SEPARATOR_RIGHT_BOLD $additions__info #[fg=colour22 bg=colour1]$SEPARATOR_RIGHT_BOLD $deletions_info #[fg=colour1 bg=colour244]$SEPARATOR_RIGHT_BOLD $untracked_info #[fg=colour244 bg=colour16]$SEPARATOR_RIGHT_BOLD"
