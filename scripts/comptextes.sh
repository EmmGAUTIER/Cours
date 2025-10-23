#/bin/bash

for fichier in ${REPERTOIRE_COURS}/textes/*.md
do
    nom_court=$(basename "${fichier%.*}")
    echo $nom_court
    pandoc  ${REPERTOIRE_COURS}/textes/${nom_court}.md   --resource-path ${REPERTOIRE_COURS}/textes   -o ${REPERTOIRE_COURS}/pdf/${nom_court}.pdf 
done
