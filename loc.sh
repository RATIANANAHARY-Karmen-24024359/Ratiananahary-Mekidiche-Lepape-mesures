#!/bin/bash

dossier=$1

echo "Nombre de lignes de code dans $dossier :"
find "$dossier" -type f \( -name "*.java" -o -name "*.js" -o -name "*.py" -o -name "*.php" -o -name "*.c" \) -not -path "*/node_modules/*" -exec cat {} + | wc -l
