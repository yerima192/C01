#!/bin/bash
read -a args         # Lit une ligne et stocke chaque mot dans le tableau 'args'
i=1
for arg in "${args[@]}"; do
  echo "Argument $i : $arg"  # Affiche chaque élément avec son numéro
  i=$((i + 1))               # Incrémente le compteur
done
