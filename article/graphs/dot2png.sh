#!/bin/bash
#title           :dot2png.sh
#description     :This script will generate png files from dot files.
#author		       :garciparedes
#date            :2017-04-30
#version         :1
#usage		       :bash dot2png.sh *.dot
#==============================================================================
files=( "$@" )
for var in "${files[@]:1}"
do
  name="${var%.*}"
  dot -Tpng ${var} -o ${name}.png
done
