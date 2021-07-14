-- Définit les privilèges insert, update , delete sur le table products
GRANT Insert, UPdate, delete
ON gescom_afpa.products 
TO 'r_gescom_marketing'@'localhost'
-- Définit les privilèges insert, update , delete sur le table categories
GRANT Insert, UPdate, delete
ON gescom_afpa.categories 
TO 'r_gescom_marketing'@'localhost'
---- Définit les privilèges  sur le table orders
GRANT SELECT
ON gescom_afpa.orders
TO 'r_gescom_marketing'@'localhost'
-- Définit les privilèges  sur le table details_orders
RANT SELECT
ON gescom_afpa.orders_details
TO 'r_gescom_marketing'@'localhost'
-- Définit les privilèges  sur le table suppliers
GRANT SELECT
ON gescom_afpa.suppliers
TO 'r_gescom_marketing'@'localhost'
