#!/bin/bash

i=1
while [ $# -gt 0 ]; do
  echo "Argument $i: $1"
  shift
  ((i++))
done
