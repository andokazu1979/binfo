#!/bin/sh

PWD=$(pwd)
binfile=$1
infofile=${binfile}.info

if [ -f ${infofile} ]; then
  source $PWD/${infofile}
  #echo $repository
  #echo $commit
  #git --git-dir=$repository show $commit
  git --git-dir=$repository log $commit --oneline -1 --color
else
  echo "${infofile} is not found."
  exit 1
fi
