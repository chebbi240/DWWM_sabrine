--Q1. Afficher dans l'ordre alphabétique et sur une seule colonne, les noms et prénoms des employés qui ont des enfants.SELECT concat (emp_lastname,'',emp_firstname) As employé,
SELECT emp_children As Nb_enfants
FROM employees
ORDER BY ( emp_children>0) DESC, 
 emp_lastname  ASC 
 --Q2
 SELECT cus_lastname, cus_firstname, cus_countries_id
FROM customers
WHERE cus_countries_id !='FR';
--Q 3SELECT cus_lastname ,cus_firstname ,cus_countries_id
SELECT cus_city,
       cus_countries_id,
       cou_name
FROM customers,countries
WHERE cus_countries_id =cou_id
ORDER BY cus_city ASC
--Q4 afficher les Nom  dont les fichiers modifiées
SELECT cus_lastname,
       cus_update_date
FROM customers
WHERE cus_update_date is NOT Null
--Q5
SELECT 
cus_lastname ,
cus_firstname,
cus_city
FROM customers
WHERE cus_city LIKE'%divos%'
--Q6
SELECT 'client n°',pro_id,',', pro_name ,' , vendu ',pro_price
FROM products
ORDER BY pro_price ASC
LIMIT 1
 --Q7
 SELECT pro_id,pro_ref, pro_name FROM
products
WHERE pro_id not in (SELECT ode_pro_id FROM orders_details);

 --Q8
SELECT pro_id , pro_ref , pro_color, pro_name, cus_id ,cus_lastname, ord_id , ode_id FROM
 customers
 
  JOIN orders
 ON ord_cus_id=ord_id 

  JOIN orders_details
  ON cus_id=ode_ord_id

  JOIN products
  ON pro_id =ode_pro_id
  WHERE cus_lastname="Pikatchien";

  --Q9
SELECT cat_id , cat_name, pro_name FROM
  categories
JOIN products ON 
products.pro_cat_id= categories.cat_id
ORDER BY cat_name, pro_name ASC;

  --Q10
SELECT CONCAT(emp1.emp_lastname,'   ', emp1.emp_firstname) as Employé, CONCAT(emp2.emp_lastname,'   ',emp2. emp_firstname) as Supérieur
FROM employees as emp1 
JOIN employees as emp2 on emp2.emp_id =emp1.emp_superior_id
JOIN shops on sho_id = emp1.emp_sho_id
WHERE sho_id=3
ORDER BY emp1.emp_lastname;
--Fonctions d'agrégation
  --Q11

SELECT ode_discount , pro_id , pro_name , ord_id , ode_id FROM 
orders
JOIN orders_details on ode_ord_id=ord_id
JOIN products on pro_id=ode_pro_id
WHERE ode_discount = (SELECT max(ode_discount) FROM orders_details);

--Q12
SELECT COUNT(cus_id) AS 'Nb clients canada' FROM 
customers
WHERE cus_countries_id='CA';
-- Q13
SELECT ode_id,ode_unit_price, ode_discount, ode_quantity, ode_ord_id,ode_pro_id, ord_order_date
FROM orders_details
JOIN orders ON ode_ord_id= ord_id
WHERE YEAR(ord_order_date)=2020
ORDER BY ode_ord_id;

--Q14
SELECT sup_id,sup_name,sup_city sup_countries_id,sup_address,sup_zipcode,sup_contact,sup_phone,sup_mail
FROM suppliers
JOIN products ON suppliers.sup_id= products.pro_sup_id
GROUP BY pro_sup_id


--Q15. Quel est le chiffre d'affaires de 2020 ?
select sum((ode_unit_price-(ode_unit_price*ode_discount/100))*ode_quantity) as chiffre_aff FROM orders_details 
JOIN orders on orders_details.ode_ord_id=orders.ord_id 
WHERE YEAR(ord_order_date)=2020;


--Q16. Quel est le panier moyen ?

SELECT ord_id, cus_lastname, ord_order_date,ode_quantity, ANY_VAlUE((ode_unit_price-(ode_unit_price/100*ode_discount))*ode_quantity)AS
total
FROM orders
JOIN customers ON ord_cus_id=cus_id
JOIN orders_details on ode_ord_id=ord_id
ORDER BY total DESC; 

--Q17. Lister le total de chaque commande par total décroissant (Afficher numéro de commande, date, total et nom du client).
SELECT ord_id AS numéro_de_commande,cus_lastname AS nom_du_client ,ord_order_date AS'date',
sum((ode_unit_price-(ode_unit_price*ode_discount/100))*ode_quantity) as total from orders_details
 JOIN orders
 on orders_details.ode_ord_id = orders.ord_id
 JOIN customers
 ON orders.ord_cus_id = customers.cus_id
 GROUP BY ord_id
 ORDER BY sum((ode_unit_price-(ode_unit_price*ode_discount/100))*ode_quantity) DESC;
--les besoins de mise ajours
--Q18. La version 2020 du produit barb004 s'appelle désormais Camper et, bonne nouvelle, son prix subit une baisse de 10%.



UPDATE products
SET
pro_name = 'Camper',
pro_price = pro_price*0.9,
pro_update_date = CURRENT_TIME()
WHERE pro_id =12
and  pro_ref = 'barb004';


--Q19. L'inflation en France en 2019 a été de 1,1%, appliquer cette augmentation à la gamme de parasols.

UPDATE products
set pro_price = pro_price * 1.011,  pro_update_date = CURRENT_TIME()
where pro_id= 25 or pro_id= 27;

--Q20. Supprimer les produits non vendus de la catégorie "Tondeuses électriques". Vous devez utiliser une sous-requête sans indiquer de valeurs de clés.

DELETE FROM products
WHERE pro_cat_id = (select cat_id from categories where cat_name='Tondeuses électriques')  and pro_id not in (select ode_pro_id from orders_details)


