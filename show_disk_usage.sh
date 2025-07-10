#!/bin/bash

# Afficher l'utilisation globale du disque
echo "📦 Utilisation globale du disque :"
df -h
echo "----------------------------------------"

# Demander à l'utilisateur un dossier à analyser
read -p "Entrez le chemin d'un dossier pour voir son poids : " dossier

# Vérifier si le dossier existe
if [ -d "$dossier" ]; then
  echo "📁 Espace utilisé par '$dossier' :"
  du -sh "$dossier"
else
  echo "❌ Le dossier '$dossier' n'existe pas."
  exit 1
fi

echo "----------------------------------------"

# Vérifier si l'espace disque dépasse 80%
utilisation=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$utilisation" -ge 80 ]; then
  echo "⚠️ Attention : l'espace disque est à $utilisation% !"
else
  echo "✅ L'espace disque est raisonnable : $utilisation%"
fi
