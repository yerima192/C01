#!/bin/bash

read chaine
read fichier
echo "Entrez le nom du fichier:"
if grep -q "$chaine" "$fichier"; then
echo "La chaine '$fichier' a été trouvée dans $fichier ."
else 
echo " La chaine '$chaine' n'a pas été trouvée dans le $fichier . "
fi