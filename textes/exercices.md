# Exercices avec les filtres


## Afficher le contenu de fichiers avec cat 

`cat depts24.txt depts53.txt`

Le verlan de cat est tac, tac affiche les lignes en ordre inverse.

`cat depts.txt`

`tac depts.txt`

## Formattage grossier de texte avec fmt

`fmt txt`

## Coupure des lignes trop longues avec fold

`fold -s -w20 txt`

## Afficher le début ou la fin d'un fichier

head comms.txt
tail comms.txt -n 20

Suivre un fichier
Afficher les nouvelles lignes lorsqu'elle sont disponibles, utile aux administrateurs.
Avec cet exemple il faut des écrivans avec la commande echo par exemple.

`tail -f tube`

## Numéroter des lignes avec nl

`nl personnes.txt`

Voir tous les caractères d'un fichier avec od
od affiche les codes des caractères en hexadécimal, octal ...
Il met en évidence le codage des lettres accentuées.
od est utilisé surtout pour lire des fichiers binaires.

`od -ax depts.txt`

## Trier avec sort

La commande sort effectue les tris.
Elle utilise l'ordre alphabétique.
Elle permet de choisir le champ (la colonne) et son type à utiliser pour le tri

Trier la liste des personnes

`sort personnes.txt`

Afficher les noms des  communes ayant le plus d'habitants par ordre décroissant.

`sort comms.txt -t, --key=7 --sort=general-numeric -r |head -n20 |cut -d, -f2,7`

|option|usage|
|------|-----|
|sort|Commande de tri|
|-t, | le séparateur est la virgule|
|key==7 | 7ème colonne|
|--sort=general-numeric | nombre et nom chaîne|
|-r | ordre décroissant, les plus grandes d'abord|
|------|-----|
|head|Afficher les premières lignes: la tête|
|-n20|Les 20 premières lignes|
|------|-----|
|cut| Sélectionner des colonnes|
|-d,| le séparateur est la virgule|
|-f2,7| icolonnes 2 et 7 : nom et nombre d'habitants|
|------|-----|

## Regroupements avec uniq

`cut -d, -f5 comms.txt | sort |uniq -c`
essayer avec les champs 6 et 12

## compter des lignes mots, caractères avec wc

`wc *`
`wc -l personnes.txt`

`wc -w personnes.txt`

`wc -m personnes.txt`

`wc -c personnes.txt`

`wc -L personnes.txt`

## Recherche et sélection avec grep 

## Aller plus loin avec awk

## Les expressions régulières avec sed
