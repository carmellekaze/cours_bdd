--SELECT * FROM clients WHERE date_inscription > '2025-01-01';
--SELECT * FROM clients WHERE nom LIKE '%e%' AND email LIKE '%e%';
--SELECT * FROM clients WHERE email NOT LIKE '%@gmail.com';
--SELECT * FROM clients WHERE client_id BETWEEN 5 AND 10;
--SELECT * FROM clients WHERE nom NOT LIKE 'M%';
--SELECT * FROM clients WHERE date_inscription < '2023-01-01' OR nom LIKE '%ad%';
--SELECT * FROM clients WHERE email LIKE '%@gmail.com' 

--SELECT * FROM clients WHERE date_inscription BETWEEN 2024-01-01 AND 2024-03-01;

--SELECT * FROM clients c INNER JOIN commandes o ON c.client_id=o.client_id
--WHERE c.nom LIKE 'Bob Martin'; #séléctionner que les commandes de Bob Martin

--SELECT c.nom,c.email,co.commande_id
--FROM clients c
--LEFT JOIN commandes co ON c.client_id = co.client_id;

--EXERCICE
--1:
--SELECT c.nom,co.commande_id FROM clients c
--LEFT JOIN commandes co ON c.client_id = co.client_id;

--2:
--SELECT co.commande_id, c.nom, co.statut 
--FROM commandes co
--INNER JOIN clients c ON co.client_id = c.client_id;

--3:Affiche les produits commandés par "Alice Dupont".
--SELECT co.commande_id 
--FROM commandes co
--INNER JOIN clients c ON co.client_id = c.client_id
--WHERE c.nom LIKE 'Alice Dupond';

--Fonctions d'agrégation
--EXERCICE
--1:Compter le nombre de produits disponibles dans la table produits.
--SELECT COUNT(*) AS nombre_produits FROM produits;

--2:Afficher le prix moyen des produits par catégorie (GROUP BY categorie).
--SELECT categorie, AVG(prix) AS prix_moyen FROM produits GROUP BY categorie;

--3:Calculer le montant total de chaque commande (somme des quantite * prix_unitaire).
-- SELECT commande_id, SUM(Calculer le montant total de chaque commande (somme des quantite * prix_unitaire).) AS montant_total;
--SELECT commande_id,SUM( quantite * prix_unitaire) FROM lignes_commandes
--GROUP BY commande_id;

--4:Afficher le client qui a passé le plus de commandes.
--SELECT c.client_id, c.nom, COUNT(co.commande_id) AS nombre_commandes
--FROM clients c
--INNER JOIN commandes co ON c.client_id = co.client_id
--GROUP BY c.client_id, c.nom
--ORDER BY nombre_commandes DESC
--LIMIT 1;

--5:Calculer la somme des stocks disponibles par famille de produits.
--SELECT famille, SUM(stock) AS total_stock
--FROM produits
--GROUP BY famille;

--6:Afficher l’écart-type des prix des produits pour analyser la dispersion.
--SELECT STDDEV(prix) AS dispersion_prix
--FROM produits;


--7:Calculer le montant total des ventes par client.
SELECT c.client_id, c.nom, SUM(quantite*prix_unitaire) AS nombre_commandes
FROM clients c 
INNER JOIN commandes co ON c.client_id = co.client_id
INNER JOIN lignes_commandes lc ON co.commande_id = lc.commande_id
GROUP BY c.client_id, c.nom;

