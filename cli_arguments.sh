#!/bin/bash

i=1

while [ $# -gt 0 ]
do 
echo "argument $i:" $1
shift
i=$((i + 1))
done