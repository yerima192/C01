#!/bin/bash
read -a args
i=1
for arg in "${args[@]}"; do
echo "Argument $i : $arg" 
i=$((i + 1))
done 