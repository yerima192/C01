#!/bin/bash

# Lecture de 3 valeurs sur une seule ligne
read -p "L'utilisation de deux nombres et un operateur : " a b op

# Vérifie et effectue l'opération
if [ "$op" = "+" ]; then
  echo "Résultat : $((a + b))"

elif [ "$op" = "-" ]; then
  echo "Résultat : $((a - b))"

elif [ "$op" = "*" ]; then
  echo "Résultat : $((a * b))"

elif [ "$op" = "/" ]; then
  if [ "$b" -eq 0 ]; then
    echo "Impossible de diviser par zéro"
  else
    echo "Résultat : $((a / b))"
  fi

else
  echo "Opération invalide. Utilisez +, -, * ou /"
fi
