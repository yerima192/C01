#!/bin/bash

# Vérification du nombre d'arguments
if [ $# -ne 3 ]; then
  echo "Usage: $0 nombre1 nombre2 opérateur"
  echo "Exemple: $0 5 3 +"
  exit 1
fi

# Affectation des arguments à des variables
a=$1
b=$2
op=$3

# Calcul selon l'opérateur
case "$op" in
  +) result=$((a + b));;
  -) result=$((a - b));;
  \*) result=$((a * b));;
  /)
    if [ "$b" -eq 0 ]; then
      echo "Erreur : division par zéro"
      exit 1
    fi
    result=$((a / b))
    ;;
  *)
    echo "Opérateur invalide. Utilisez +, -, * ou /"
    exit 1
    ;;
esac

echo "Résultat : $result"
