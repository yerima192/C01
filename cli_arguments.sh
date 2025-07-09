#!/bin/bash
read -a args
i=1
for args in "${args[@]}"; do
echo "Argument $i : $args" 
shift
done 
