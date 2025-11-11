-- Insertion de clients
INSERT INTO clients (nom, email) VALUES
('Alice Dupont', 'alice.dupont@example.com'),
('Bob Martin', 'bob.martin@example.com'),
('Claire Leroy', 'claire.leroy@example.com');

-- Insertion de produits
INSERT INTO produits (nom, categorie, prix, stock) VALUES
('Macbook pro 2025', 'Informatique', 1899.99, 10),
('Samsung Galaxy S25', 'Téléphonie', 999.99, 25),
('Jabra Evolve 75', 'Accessoires', 79.99, 50),
('Roccat Vulkan 120', 'Informatique', 129.99, 15);

-- Insertion de commandes
INSERT INTO commandes (client_id, statut) VALUES
(1, 'expédiée'),
(2, 'en cours'),
(1, 'en cours');

-- Insertion de lignes de commande
INSERT INTO lignes_commandes (commande_id, produit_id, quantite, prix_unitaire) VALUES
(1, 1, 1, 1899.99),   -- Alice a acheté un ordinateur portable
(1, 3, 2, 79.99),    -- Alice a aussi pris 2 casques audio
(2, 2, 1, 999.99),   -- Bob a commandé un smartphone
(3, 4, 1, 129.99);   -- Alice a commandé un clavier mécanique
