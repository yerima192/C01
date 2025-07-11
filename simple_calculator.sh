#!/bin/bash
read a b op
if [ "$op" = "+" ]; then
  echo $((a + b))
elif [ "$op" = "-" ]; then
  echo $((a - b))
elif [ "$op" = "*" ]; then
  echo $((a * b))
elif [ "$op" = "/" ]; then
  echo $((a / b))
else
  echo "Opérateur invalide"
fi
