# Qu’est-ce qu’une branche ?
Une branche est un mécanisme qui permet de travailler sur une copie logique du projet afin de développer ou tester de nouvelles fonctionnalités sans modifier directement la version principale.

Contrairement à d’autres systèmes de gestion de versions qui dupliquent physiquement tout le répertoire, Git adopte une approche plus légère :

 - Une branche est simplement un pointeur vers un commit.

 - Chaque commit contient :
  - l’auteur,
  - un message descriptif,
  - un instantané des fichiers indexés,
  - et des références vers les commits précédents.

La branche par défaut créée lors d’un git init s’appelle master (ou main dans les versions récentes). Elle évolue automatiquement à chaque nouveau commit.

En résumé : créer une branche dans Git revient à créer un nouveau pointeur, pas à recopier tout le projet.

# Créer une nouvelle branche
Commande :

```bash
git branch nom-de-la-branche
```
Cela crée un pointeur vers le dernier commit. Vous avez alors deux branches : master et la nouvelle.

Pour savoir sur quelle branche vous travaillez, Git utilise un pointeur spécial appelé HEAD.

Par défaut, HEAD pointe sur master.

La commande git branch crée une branche mais ne déplace pas HEAD.

Pour basculer sur une autre branche :

```bash
git checkout nom-de-la-branche
```
Astuce : créer et basculer directement sur une nouvelle branche en une seule commande :

```bash
git checkout -b nom-de-la-branche
```
# Basculer entre les branches
Revenir sur master :

```bash
git checkout master
```
Cela replace HEAD sur master et restaure le projet dans l’état du commit pointé par cette branche.

Si vous modifiez des fichiers et validez un commit sur une autre branche (ex. test), les branches divergent : chacune conserve son propre historique et ses instantanés.

# En bref :

 - Une branche = un pointeur vers un commit.
 - HEAD indique la branche active.
 - git branch crée une branche, git checkout permet de changer de branche.
 - Les branches facilitent le développement parallèle sans perturber la version principale.
