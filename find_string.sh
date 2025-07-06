#!/bin/bash
# usage : ./find_string_simple.sh
# Demande à l’utilisateur une chaîne, puis un fichier :

echo -n "Entrez la chaîne à chercher : "
read bonjour

echo -n "Entrez le fichier : "
read fichier

if grep -Fqx "$bonjour" "$fichier"; then
  echo "✅ La chaîne '$bonjour' a été trouvée dans $fichier."
else
  echo "❌ La chaîne '$bonjour' n'a PAS été trouvée dans $fichier."
fi
