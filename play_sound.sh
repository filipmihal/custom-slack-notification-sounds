#!/bin/bash
string=$1
match1="New message from"
match2="New message in"
if [[ "$string" =~ "$match1" || "$string" =~ "$match2" ]]
  then
    sound=`ls /your/path/sounds | shuf -n 1`
    mpg123 "/your/path/sounds/$sound"
fi
