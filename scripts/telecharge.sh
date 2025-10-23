#/bin/bash

# Pages :
# communes : https://www.data.gouv.fr/datasets/communes-et-villes-de-france-en-csv-excel-json-parquet-et-feather/
# départements : https://www.insee.fr/fr/information/3363419#titre-bloc-23
#


lien_communes=https://www.data.gouv.fr/api/1/datasets/r/f5df602b-3800-44d7-b2df-fa40a0350325
lien_departements=https://www.insee.fr/fr/statistiques/fichier/3363419/depts2018-txt.zip

liste_cols="code_insee,\
nom_standard,\
nom_standard_majuscule,\
code_postal,\
type_commune_unite_urbaine,\
statut_commune_unite_urbaine,\
population,\
superficie_hectare,\
densite,\
altitude_moyenne,\
dep_code,\
dep_nom"

curl -L -o ${REPERTOIRE_DATA}/depts.zip $lien_departements && unzip ${REPERTOIRE_DATA}/depts.zip -d ${REPERTOIRE_DATA}
curl -L -o ${REPERTOIRE_DATA}/communes.csv $lien_communes

csvcut -d , -c $liste_cols ${REPERTOIRE_DATA}/communes.csv > ${REPERTOIRE_DATA}/comms.csv

sed -e 's/\r//g' -e 's/\t/,/g' ${REPERTOIRE_DATA}/depts2018.txt |  iconv -f ISO-8859-1 -t UTF-8 > ${REPERTOIRE_DATA}/depts.csv

awk -e 'NR>1{print}' ${REPERTOIRE_DATA}/depts.csv > ${REPERTOIRE_DATA}/depts.txt
awk  -e 'NR>1{print}' ${REPERTOIRE_DATA}/comms.csv > ${REPERTOIRE_DATA}/comms.txt

#lst_cr=`sort depts.txt | cut -d , --fields=1 |uniq`

for region in 24 53
do
    echo $region
    awk -e "/^$region/{print \$0}" ${REPERTOIRE_DATA}/depts.txt  > ${REPERTOIRE_DATA}/depts${region}.txt
done

rm ${REPERTOIRE_DATA}/communes.csv ${REPERTOIRE_DATA}/depts.zip

