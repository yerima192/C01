#!/bin/bash

echo -n "Entrez le nom du dossier :"
read dossier

if [  "$dossier" ]; then
  count=$(ls "$dossier" | wc -l)
  echo "Le dossier '$dossier' contient $count fichier(s)."
else
  echo "Erreur : le dossier '$dossier' n'existe pas."
fi