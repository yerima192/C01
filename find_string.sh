#!/bin/bash
read fichier
read chaine
if grep "$chaine" "$fichier"; then 
echo " la chaine '$chaine' a été trouvée dans le fichier ."
else 
echo "la chaine '$chaine' n a pas été trouvée dans le fichier ."
fi