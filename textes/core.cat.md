# cat Concaténation de fichiers


# SYNOPSIS


`cat [options] [fichiers]`

fichiers : noms des fichiers à concaténer, - désigne l'entrée standard,
S'il n'y a pas de nom de fichier alors cat lit l'entrée standard.


Concatène des fichiers et envoie la sortie vers la sortie standard.


## EXEMPLES

### Afficher plusieur fichiers
Afficher le contenu de deux fichiers contenant 
les département de la Bretagne et de la région Centre :

`cat depts24.txt depts53.txt`

### Voir le contenu d'un petit fichier
Le fichier txt est de petite taille, cat convient très bien pour l'afficher en entier à l'écran.

`cat txt`

### Démonstration de l'usage de - pour introduire du texte au clavier

Et pour ajouter un texte frappé au clavier il faut ajouter - dans la liste des fichiers.

``cat - depts24.txt  depts53.txt
> Départements de la Bretagne et de la Région Centre :``
>^D
Cet essai sert à montrer l'usage du -. 
Cette méthode n'est pas recommandée, L'utilisateur doit savoir que la saisie est terminée par ^D.
La commande read est plus appropriée. 


