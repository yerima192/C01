#!/bin/bash

# L'utilisateur entre tout sur une seule ligne
read -p "Entrez l'opération (ex : 5 3 +) : " a b op

# Calcul selon l'opérateur
if [ "$op" = "+" ]; then
  echo "Résultat : $((a + b))"
elif [ "$op" = "-" ]; then
  echo "Résultat : $((a - b))"
elif [ "$op" = "*" ]; then
  echo "Résultat : $((a * b))"
elif [ "$op" = "/" ]; then
  if [ "$b" -eq 0 ]; then
    echo "❌ Division par zéro impossible"
  else
    echo "Résultat : $((a / b))"
  fi
else
  echo "❌ Opérateur invalide. Utilisez +, -, *, /"
fi
 
