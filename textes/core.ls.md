# ls liste des fichiers

## Invocation de la commande

`ls options fichiers`

### options

    -a tous les fichiers, y compris les fichiers cachés dont le nom commence par .
    -l format long, avec type de fichiers, droits d'accès, propriétaire, groupe et taille
    -r 'reverse' inverser l'ordre d'affichage.
    -t "time" trier par date de dernière modification 
    -h "huaman readable" affichage des tailles en octets ou ko ou Mo ou Go
    -b afficher les caractères non imprimables 
    -S trier par taille décroissante
    -R "recursive" Afficher le contenu des sous-répertoires

ls a de très nombreuses autres options. consultez les pages de manuel ou d'info. 

##

##  Exercices 

### affichage du contenu du répertoire data

Afficher la liste des noms fichiers: 

`ls data`

Afficher la liste des fichiers avec des détails:

`ls -l data`

Affichier la même liste avec un alias de ls -l fréquement défini:

`ll data`
Sur certaines machines il n'est pas défini, cette commande provoque alors un message d'erreur.

Afficher les fichiers dit cachés dont le nom commence par un point:

`ls -la`

Retrouver les fichiers les plus récemment modifiés:

`ls -lrt`

## Pour aller plus loin

ls n'affiche aucune information sur le contenu des fichiers,
file permet d'afficher un classement des fichiers;
file, en général, utilise  l'extension du nom du fichier
et lit  le début du fichier.

La commande find, bien plus complexe à l'usage,
permet de retrouver des fichiers dans des sous-répertoires
et même d'effectuer des actions sur ceux-ci.

Si la liste des fichiers est trop longe pour être affichée à l'écran
Les commandes less et head permettent la lecture
less permet un affichage par page, head affiche le début de la liste.
