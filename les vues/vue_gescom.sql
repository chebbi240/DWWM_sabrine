--Exercice 2: base gescom
/*v_Details correspondant à la requête : _A partir de la table orders_details, afficher par code produit, la somme des quantités commandées et le prix total correspondant : on nommera la colonne correspondant à la somme des quantités commandées, QteTot et le prix total, PrixTot. */
CREATE VIEW v_details
AS
SELECT pro_ref AS'code produit',
SUM(ode_quantity)AS QteTot,
round(SUM(ode_quantity*(ode_unit_price-ode_discount)))AS'PrixTOt'
FROM orders_details
JOIN products ON ode_pro_id=pro_id
GROUP BY pro_ref;


/*v_Ventes_Zoom correspondant à la requête :
 Afficher les ventes dont le code produit est ZOOM*/
CREATE VIEW v_Ventes_ZOOM
AS
SELECT*FROM orders_details
JOIN products
ON ode_pro_id=pro_id
where pro_ref='ZOOM'
--affichage
SELECT*FROM v_Ventes_ZOOM
