/*Créer une table commander_articles*/
DROP TABLE IF EXISTS commander_articles;
CREATE TABLE IF NOT EXISTS commander_articles
(codart int  AUTO_INCREMENT NOT NULL PRIMARY KEY,
qte int,
Date DATETIME NOT NULL)
/*
Créer un déclencheur after_products_update sur la table products*/
DELIMITER |

Create TRIGGER after_products_update 
After update 

on products
for each row 

BEGIN
    IF NEW.pro_stock < NEW.pro_stock_alert THEN
        INSERT  INTO commander_articles (qte,codart,datedujr) VALUES ((NEW.pro_stock_alert - NEW.pro_stock),NEW.pro_id,NOW());
    END IF;
END;
--base
|update products
 set pro_stock= 5 
 where pro_id = 8 and pro_name = 'Athos'

--cas 1
  update products
 set pro_stock = 6

 where pro_id = 8 and pro_name = 'Athos'

--cas 2
update products
 set pro_stock= 4

 where pro_id = 8 and pro_name = 'Athos'
 --cas 3
  update products
 set pro_stock = 3

 where pro_id = 8 and pro_name = 'Athos'