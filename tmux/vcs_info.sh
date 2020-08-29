#!/usr/bin/env bash

source common.sh

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

branch_info=$(git rev-parse --abbrev-ref HEAD)
untracked_info=$(echo ⋯ $(git ls-files --others --exclude-standard | wc -w))
deletions_info=$(gitdeletions)
additions__info=$(gitadditions)

echo $(pwd)  $branch_info $SEPARATOR_RIGHT_BOLD $additions__info $SEPARATOR_RIGHT_BOLD $deletions_info $SEPARATOR_RIGHT_BOLD $untracked_info $SEPARATOR_RIGHT_BOLD
