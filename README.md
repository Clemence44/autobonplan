# Autobonplan

## Informations
Projet réalisé avec :
*  Chart.js (bibliothèque JS)
*  Php
*  MySQL
*  Bulma (framework CSS)

Dossier "document" comprend :
* "vehicules.csv"  fichier csv comprenant des exemples de véhicules au format .csv
* "autobonplan.sql" script de la BDD

Dossier "inc" comprend :
* différents fragments du site (top /bottom)
* requetes et connexions à la BDD

## Important

La bdd comprend une table "arrivage " dont toutes les entités sont de type : VARCHAR et une table "utilisateur"

L'ajout d'une fiche véhicule dans la bdd s'effectue depuis un fichier .csv envoyé depuis un 
formulaire et traité afin que ses données puissent être insérées en BDD

En effet, ayant peu de temps j'ai priviligé l'aspect fonctionnel de l'application.
Je peux tout de même vous proposer une amélioration pour la suite (que je serai ravie de réaliser) :

Créer un algorithme reconnaisant chaque type de donnée de la table : "arrivage" (table maj en focnction du format des données)
afin de pouvoir, lors de l'insertion du fichier .csv mettre les données au bon format.

Cette solution permettrait de gagner en place, facilité d'usage et optimisation.

## Consignes

- Donner la possibilité d'uploader un nouveau fichier de véhicules  DONE
- Créer un système d'authentification avec 2 users (1 lecture/import et 1 lecture) DONE
- Créer une base de données relationnelle DONE
- Utiliser Php/Javascript  DONE
- Gestion de projet via Git DONE

