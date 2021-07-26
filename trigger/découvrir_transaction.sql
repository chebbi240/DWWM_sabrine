
/*Créer une table commander_articles constituées de colonnes 
dans la base de données gescom_afpa:*/
CREATE table commander_articles(
    codart INT  NOT NULL AUTOINCRIMENT PRIMARY KEY,
    qte int ,
    date date not null,
    FOREIGN KEY(codart) REFERENCES products(pro_id)
)

DELIMITER |

Create TRIGGER after_products_update 
After update 
on products
for each row 

BEGIN
    IF NEW.pro_stock < NEW.pro_stock_alert THEN
        INSERT ignore INTO commander_articles (qte,codart,datedujr) VALUES ((NEW.pro_stock_alert - NEW.pro_stock),NEW.pro_id,NOW());
    END IF;
END;
DELIMITER |



 --test-- 
--base--
 update products
 set pro_stock_alert = 5 
 where pro_id = 8 and pro_name = 'Athos'

--cas1--
update products
set pro_stock_alert = 6
where pro_id = 8 and pro_name = 'Athos'
-- cas 2 --
update products
set pro_stock_alert = 4
where pro_id = 8 and pro_name = 'Athos'

 --cas 3 -- 
update products
set pro_stock_alert = 3
