#!/bin/bash

# Lire les 3 éléments
read -p "Entrez le premier nombre : " nb1
read -p "Entrez le deuxième nombre : " nb2
read -p "Entrez l'opérateur (+, -, *, /) : " op

# Vérifier que les deux entrées sont bien des nombres
if ! [[ "$nb1" =~ ^[0-9]+$ && "$nb2" =~ ^[0-9]+$ ]]; then
  echo "❌ Erreur : veuillez entrer uniquement des nombres."
  exit 1
fi

# Calcul selon l’opérateur choisi
case $op in
  +)
    resultat=$((nb1 + nb2))
    ;;
  -)
    resultat=$((nb1 - nb2))
    ;;
  \*)
    resultat=$((nb1 * nb2))
    ;;
  /)
    if [ "$nb2" -eq 0 ]; then
      echo "⚠️ Erreur : division par zéro impossible."
      exit 1
    fi
    resultat=$((nb1 / nb2))
    ;;
  *)
    echo "❌ Opérateur non valide. Utilisez +, -, * ou /"
    exit 1
    ;;
esac

# Affichage du résultat
echo "Résultat : $resultat"
