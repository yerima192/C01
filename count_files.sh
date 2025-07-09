#!/bin/bash

read dossier
count=$(ls $dossier | wc -l) 
number=$(echo "$count")
echo "Le dossier $dossier contient $count fichier(s)."

