#!/bin/bash

# Script : calculatrice.sh
# Objectif : Effectuer une opération (+, -, *, /) sur deux nombres entiers
# Auteur : Mira 😊

# Demande des entrées à l'utilisateur
read -p "Entrez le premier nombre : " nb1
read -p "Entrez le deuxième nombre : " nb2
read -p "Entrez l'opérateur (+, -, *, /) : " op

# Vérification : les deux nombres doivent être des entiers
if ! [[ "$nb1" =~ ^[0-9]+$ && "$nb2" =~ ^[0-9]+$ ]]; then
  echo "❌ Erreur : veuillez entrer uniquement des nombres entiers."
  exit 1
fi

# Traitement de l'opération
case "$op" in
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
      echo "⚠️ Erreur : division par zéro interdite."
      exit 1
    fi
    resultat=$((nb1 / nb2))
    ;;
  *)
    echo "❌ Erreur : opérateur non valide. Utilisez +, -, * ou /"
    exit 1
    ;;
esac

# Affichage du résultat
echo "✅ Résultat : $resultat"
