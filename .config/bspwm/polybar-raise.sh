#!/bin/sh

wid=$1
class=$2
instance=$3

if [ "$instance" = "polybar" ]; then
  echo $instance >> /home/apiqnzr/temp
  echo $wid >> /home/apiqnzr/temp
  echo $class >> /home/apiqnzr/temp
  xdo raise $wid
fi
