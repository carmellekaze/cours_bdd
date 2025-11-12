
# Cours : Introduction à l'éditeur de texte Vim

### Objectifs du cours
- Comprendre le fonctionnement modal de Vim
- Apprendre à naviguer, éditer et sauvegarder dans Vim
- Maîtriser les commandes essentielles pour une utilisation efficace
- S'exercer à travers des cas pratiques

---

## 1. Qu'est-ce que Vim ?
Vim est un éditeur de texte en ligne de commande, puissant et hautement configurable, utilisé principalement pour l'édition de fichiers texte et de code source.

- Inspiré de vi, disponible sur presque tous les systèmes Unix
- Fonctionne en modes : normal, insertion, commande, visuel
- Très rapide une fois maîtrisé, idéal pour les développeurs et administrateurs système

### Lancer Vim
- `vim monfichier.txt`  va créer ou ouvrir un fichier nommé 'monfichier.txt' suivant si il existe ou pas à cet emplacement.

---

## 2. Les modes de Vim

| Mode        | Description |
|-------------|-------------|
| Normal      | Mode par défaut pour naviguer et manipuler le texte |
| Insertion   | Permet d’écrire du texte comme dans un éditeur classique |
| Commande    | Pour exécuter des commandes (sauvegarde, recherche, etc.) |
| Visuel      | Pour sélectionner du texte |

### Changement de mode
- i, a ou o : passer en mode insertion, '-- INSERT --' est alors écrit en bas à gauche dans ce mode
- Esc : revenir au mode normal
- : : entrer en mode commande
- v : passer en mode visuel

---

## 3. Navigation dans un fichier

| Commande | Action |
|----------|--------|
| h | gauche |
| l | droite |
| j | bas |
| k | haut |
| w | mot suivant |
| b | mot précédent |
| 0 | début de ligne |
| $ | fin de ligne |
| gg | début du fichier |
| G | fin du fichier |

---

## 4. Édition de texte

| Commande | Action |
|----------|--------|
| i | insérer avant le curseur |
| a | insérer après le curseur |
| o | insérer dans une nouvelle ligne en dessous |
| dd | supprimer la ligne |
| x | supprimer le caractère |
| u | annuler |
| Ctrl + r | rétablir |
| yy | copier la ligne |
| p | coller après le curseur |

---

## 5. Sauvegarde et sortie

| Commande | Action |
|----------|--------|
| :w | sauvegarder |
| :q | quitter |
| :wq ou ZZ | sauvegarder et quitter |
| :q! | quitter sans sauvegarder |

---

## 6. Recherche et remplacement

| Commande | Action |
|----------|--------|
| /mot | rechercher "mot" vers le bas |
| ?mot | rechercher "mot" vers le haut |
| n | résultat suivant |
| N | résultat précédent |
| :%s/ancien/nouveau/g | remplacer tous les "ancien" par "nouveau" |

---

## 7. Exercices pratiques

Exercice 1 : Navigation
Ouvre un fichier avec vim monfichier.txt et utilise :
- gg pour aller au début
- G pour aller à la fin
- $ et 0 pour naviguer dans une ligne

Exercice 2 : Édition
- Ajoute une ligne avec o
- Supprime une ligne avec dd
- Copie une ligne avec yy et colle-la avec p

Exercice 3 : Sauvegarde
- Sauvegarde avec :w
- Quitte avec :q
- Force la sortie sans sauvegarde avec :q!

---

## 8. Ressources utiles
- Vim Adventures : jeu interactif pour apprendre Vim
- :help dans Vim pour accéder à l’aide intégrée
- Tutoriel intégré : lancez vimtutor dans votre terminal
