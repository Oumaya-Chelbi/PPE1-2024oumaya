#Journal de bord du projet encadré


## Premier devoir pour le 02/10/2024 :


- La tâche de la semaine dernière consistait à trier le dossier que vous nous aviez donné. Au début, tout se passait bien : je n'ai pas rencontré de difficultés pour créer les nouveaux dossiers via le terminal en utilisant la commande mkdir. Mais le vrai défi est apparu au moment de déplacer les fichiers dans leurs dossiers respectifs! Après quelques essais infructueux, j'ai compris que le problème venait d'une erreur dans la commande que j'avais saisie. Heureusement, une camarade m'a fait remarquer mon erreur, et j'ai pu la corriger. ^o^

- Cependant, un autre souci est survenu. Après avoir utilisé la commande ls à de nombreuses reprises pour vérifier que tout était au bon endroit (désolé pour les longues lignes à lire -.-" ), j'ai découvert que j'avais mal écrit le nom du dossier principal. Au lieu de "exercice1", j'avais écrit "exercie1". J'ai pensé un instant que je devrais tout refaire ಠ_ಠ. Après quelques tentatives, où je créais sans le vouloir un sous-dossier "exercice1" vide -.-, un ami plus expérimenté m'a aidé à résoudre le problème en me montrant comment modifier correctement le nom du dossier sans perdre mon travail, j'ai donc pu finalement changer le nom du dossier sans avoir à tout refaire ^o^ . 

- Une fois tout cela terminé, j'ai lancé la commande history, mais j'ai remarqué que, contrairement à une camarade sur Linux qui pouvait voir toutes ses commandes, je n'avais accès qu'aux quinze dernières sur mon Mac. Cela m'a un peu inquiété.Après quelques tests et par hasard, j'ai essayé la commande "history1", qui a miraculeusement fonctionné ! ^o^ J'ai été soulagée de voir enfin l'historique complet de mes commandes.


## Devoirs pour la séance du 09/10/2024 :


- Jusqu'à présent, j'ai suivi les instructions de la fiche d'exercice et tout s'est globalement bien déroulé. Cependant, j'avoue que j'ai eu du mal à comprendre le fonctionnement de GitHub, notamment en ce qui concerne les commandes push et pull. En plus de cela, avant de pouvoir écrire et modifier mon journal sur mon ordinateur, je ne voyais pas le fichier de journal dans mon dossier. Pourtant, en tapant la commande git status, j'avais le message "up to date". Cela m'a laissé perplexe. Finalement, après avoir exécuté la commande git pull, le journal est apparu sur ma machine. Par contre en testant une autre commande qui est git commit j'ai eu le message d'erreurs suivant et je ne sais pas trop comment y remédier : 

git commit
Author identity unknown

*** Please tell me who you are.

Run

  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"

to set your account's default identity.
Omit --global to set the identity only in this repository.
fatal: unable to auto-detect email address (got 'oumayachelbi@MBP-de-Oumaya.(none)')

- et lorsque j'ai mit mon email le terminale n'a pas compris : oumayachelbi@gmail.com
zsh: command not found: oumayachelbi@gmail.com

- Mais finalement j’ai compris qu’il fallait reprendre les commandes donné : git config --global user.email "you@example.com"
  git config --global user.name "Your Name" , en remplaçant avec mes informations. 

- Pour les fichiers Mac inutiles à ignorer, je ne l’ai pas encore fait car je n’ai pas encore très bien compris ce qu’il faut faire mais donc j’essayerai de le faire d’ici la semaine prochaine  ^.^" 

# Séance 3 
## exercices git

cette ligne doit rester après correction


je ne sais pas ce qu'il c'est passé mais lorsque j'ai fait git revert , le terminale m'a affiché un messge d'erreur : MBP-de-Oumaya:PPE1-2024oumaya oumayachelbi$ git revert 6c8391564ba90cb3491015fb2aba0bfa03912af1
Auto-merging journal.md
CONFLICT (content): Merge conflict in journal.md
error: could not revert 6c83915... I AM ERROR
hint: After resolving the conflicts, mark them with
hint: "git add/rm <pathspec>", then run
hint: "git revert --continue".
hint: You can instead skip this commit with "git revert --skip".
hint: To abort and get back to the state before "git revert",
hint: run "git revert --abort".
MBP-de-Oumaya:PPE1-2024oumaya oumayachelbi$ 
je ne comprend pas commment remédier à cela sachant que pour chaque étape j'ai bien fait git add et git commit ?

# Exercices des scripts
## Description de fonctionnement du code de la dèrniere diapo

 Alors voilà ce que j’ai compris du script :

Au début, il y a la ligne #!/usr/bin/bash, qui est là pour dire à l’ordinateur d’utiliser Bash pour tout le reste. Ensuite, le script commence par vérifier si on lui donne bien un seul argument quand on le lance. Il fait ça avec une condition if qui regarde si le nombre d'arguments est différent de 1 (if [ $# -ne 1 ]). Si on ne lui donne pas cet argument, il nous dit juste que "ce programme demande un argument" et arrête tout (exit), un peu comme si le script boudait parce qu’on ne lui a pas donné ce qu’il attendait (-.-") .
.
Si on lui donne l'argument qu'il attend (^^ !), cet argument est stocké dans une variable appelée FICHIER_URLS. Ça sera le fichier que le script va analyser. Après on a : OK=0 et NOK=0, qui comptent respectivement les lignes qui ressemblent à des URL valides et celles qui sont..."douteuses".
- Ensuite, on entre dans une boucle while, et là, le script commence à lire le fichier ligne par ligne. À chaque ligne, il affiche d’abord son contenu pour qu’on puisse voir ce qu'il est en train de vérifier. Puis, il regarde si la ligne ressemble à une URL avec quelque chose comme http:// ou https://. Si c’est le cas, il affiche "ressemble à une URL valide" et augmente 'OK' d'une unité (une URL correcte ! ^o^). Sinon, il dit "ne ressemble pas à une URL valide" et c’est 'NOK' qui grimpe d’un cran (une ligne suspecte -.-).

- Quand le script a fini de lire toutes les lignes, il affiche le nombre total de lignes valides et 'douteuses' avec un message je pense du genre "$OK URLs et $NOK lignes douteuses". ^.^

ps : Par contre j'ai l'impression de pas tout à fait avoir compris à quoi sert le "-r" pour le while read et aussi à quoi ça sert le ^ avant le https parce le "?" je l'ai vu dans le cours de M.Nouvelle et donc je sais à quoi ça sert mais le ^ devant le https je n'est pas trop compris.^.^"

# Mini Projet
## réponses à l'exercice 1 :

Aujourd'hui, j'ai appris grâce à cet exercice pourquoi il vaut mieux éviter d'utiliser `cat` pour lire un fichier dans une boucle. En effet, l'utilisation de `cat` peut entraîner une lecture token par token, ce qui complique le traitement des données lorsqu'on souhaite simplement lire le fichier ligne par ligne. En utilisant directement `while read -r line`, je peux traiter chaque ligne entière, ce qui rend le script plus propre et efficace pour manipuler des chaînes de caractères complètes sans séparations inutiles.