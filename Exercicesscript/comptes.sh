#!/usr/bin/bash

Annee=$1

nb_locations=$(cat /Users/oumayachelbi/documents/coursppe1/Exercice1/ann/$Annee/*/*.ann | grep -c 'Location')
echo "Le nombre de Locations est : $nb_locations" 




