--Exercice 1 : base hotel
/*Afficher la liste des hôtels avec leur station.*/
CREATE VIEW v_hotels_station
AS
SELECT  hot_id,hot_nom,sta_nom FROM
hotel 
JOIN station
ON hot_sta_id=sta_id
--Afficher la liste des chambres et leur hôtel
CREATE VIEW v_hotels_chambre
AS
SELECT cha_numero, cha_capacite,cha_type FROM 
chambre
JOIN hotel
ON cha_hot_id=hot_id
/*Afficher la liste des réservations avec le nom des clients*/
CREATE VIEW v_reservation_client
AS
SELECT cli_id,cli_nom, cli_prenom, res_id,res_date, res_date_debut,res_date_fin
FROM reservation
JOIN CLIENT 
ON cli_id= res_cli_id
-- affichage le nom des clients
SELECT cli_nom FROM v_reservation_client
/*Afficher la liste des chambres avec le nom de l'hôtel et le nom de la station*/

CREATE VIEW v_chambre_hotel_station
AS
SELECT cha_id, hot_nom, sta_nom,cha_numero
FROM chambre
JOIN hotel 
ON cha_hot_id=hot_id
JOIN station
ON hot_sta_id=sta_id
--affichage
SELECT* FROM v_chambre_hotel_station
/*Afficher les réservations avec le nom du client et le nom de l'hôtel*/
CREATE VIEW v_reservation_client_hotel
AS
SELECT
cli_id, cli_nom,cli_prenom,res_id,res_date, res_date_debut, res_date_fin,hot_nom
FROM CLIENT
JOIN reservation
ON cli_id=res_cli_id
JOIN chambre
ON cha_id=res_cha_id
JOIN hotel
ON hot_id=cha_hot_id
--affichage
SELECT*FROM v_reservation_client_hotel
