#!/bin/bash
string=$1
match="New message from"
if [[ $string =~ $match ]]
  then
    sound=`ls /your/path/sounds | shuf -n 1`
    mpg123 "/your/pathsounds/$sound"
fi
