# Les redirections

Unix utilisait des télétypes à ses origines puis des écrans en mode texte.
Les première commandes étaient conçues pour fonctionner avec du texte lu 
au clavier, envoyé sur des écrans ou dans des fichiers. Le texte permettait
d'écrire facilement les fichiers de configuration de et de lire à l'écran

Le programme qui dialogue avec l'utilisateur est un shell,
il y en a de nombreuses version. Nous utiliserons principalement le bash.
Il affiche un $ à l'utilisateur et attend des commandes.

Le format texte s'est avéré très pratique par sa souplesse et sa relative facilité 
de lecture. les commandes de bases d'Unix ont été considérablement enrichies.

Ces commandes font des traitements spécialisés. Le shell permet de faire des
séquences de traitement et de rediriger les entrées et sorties des commandes
et d'enchaîner les commandes et de leur faire lires des données depuis des fichiers
et de les enregistrer dans des fichiers. C'est de la "plomberie" !

## Les entrées et sorties standard d'une commande


![Mon diagramme](stdinouterr.svg)

Habituellement les commandes commencent leur exécution avec les fichiers  suivants :


| Numéro | nom | direction | par défaut |
|--------|-----|-------|-------------------|
|      0 |stdin|Entrée|Clavier|
|      1 |stdout|Sortie|Écran|
|      2 |stderr|Sortie|Écran|
