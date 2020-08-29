#!/usr/bin/env bash

source common.sh

RESULT=$(date)
DAY=$(echo $RESULT | gawk '{print $1}')
DATE=$(echo $RESULT | gawk '{print $2" "$3" "$4}')
TIME=$(echo $RESULT | gawk '{print $5}')

echo $SEPARATOR_LEFT_BOLD $DAY $SEPARATOR_LEFT_THIN $DATE $SEPARATOR_LEFT_THIN $TIME
