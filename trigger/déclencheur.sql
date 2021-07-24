--Cas pratique
--Création de la base de données de test.
base de données test
/*un déclencheur sur la table lignedecommande, qui va se charger de 
recalculer le total puis mettre à jour la table commande*/
DELIMITER |
CREATE TRIGGER maj_total AFTER INSERT ON lignedecommande
 FOR EACH ROW BEGIN
    DECLARE id_c INT;
    DECLARE tot DOUBLE;
    SET id_c = NEW.id_commande;
    SET tot = (SELECT sum(prix*quantite)
    FROM lignedecommande WHERE id_commande=id_c); 
    UPDATE commande SET total=tot WHERE id=id_c; 

END |
DELIMITER;
/*puis ajoutez un produit dans une commande(dans la table ligne de commande*/ 


INSERT INTO lignedecommande (id_commande, id_produit, quantite, prix) VALUES
(1, 3, 3, '10.00')

/*vérifiez que le champ total est bien mis à jour.*/
--oui le champ est bien mis à jour  la colonne total de id1 dans la table commande est passé de 100 euros à 90 euros
