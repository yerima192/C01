#!/bin/bash
echo "=== Utilisation du disque (df -h) ==="
df -h

echo ""
echo "=== Taille des fichiers/dossiers dans $(pwd) ==="
du -sh ./*
