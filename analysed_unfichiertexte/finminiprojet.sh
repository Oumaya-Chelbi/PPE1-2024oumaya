#!/usr/bin/env bash

if [ $# -ne 1 ]
then
    echo "$0 prend un argument exactement"
    exit 1
fi

fichier=$1
n=1

echo "<!DOCTYPE html>"
echo "<html lang=\"fr\">"
echo -e "\t<head>"
echo -e "\t\t<meta charset=\"UTF-8\" />"
echo -e "\t\t<title>Tableau des Résultats</title>"
echo -e "\t\t<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bulma/css/bulma.min.css\" />"
echo -e "\t</head>"
echo -e "\t<body>"
echo -e "\t\t<section class=\"section\">"
echo -e "\t\t\t<div class=\"container\">"
echo -e "\t\t\t\t<h1 class=\"title\">Tableau des Résultats</h1>"
echo -e "\t\t\t\t<table class=\"table is-striped is-hoverable is-bordered\">"
echo -e "\t\t\t\t\t<thead>"
echo -e "\t\t\t\t\t\t<tr><th>#</th><th>URL</th><th>Code HTTP</th><th>Encodage</th><th>Nombre de mots</th></tr>"
echo -e "\t\t\t\t\t</thead>"
echo -e "\t\t\t\t\t<tbody>"

while read -r line
do
    code=$(curl -o /dev/null -s -I -L -w "%{http_code}" "${line}")
    encodage=$(curl -s -I -L "$line" | grep "charset" | cut -d "=" -f2 | tr -d "\r\n")
    mots=$(lynx -dump -nolist "${line}" | wc -w)
    echo -e "\t\t\t\t\t\t<tr><td>${n}</td><td>${line}</td><td>${code}</td><td>${encodage}</td><td>${mots}</td></tr>"
    n=$((n+1))
done < "$fichier"

echo -e "\t\t\t\t\t</tbody>"
echo -e "\t\t\t\t</table>"
echo -e "\t\t\t</div>"
echo -e "\t\t</section>"
echo -e "\t</body>"
echo "</html>"
