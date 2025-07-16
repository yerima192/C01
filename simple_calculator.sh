#!/bin/bash

read -p "l'utilisaion des operations : " a b op
if [ "$op" = "+"]; then
echo "Results: $((a + b))"; 
fi