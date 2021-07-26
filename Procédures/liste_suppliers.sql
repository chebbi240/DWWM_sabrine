--Exercice 1 : création d'une procédure stockée sans paramètre
/*créez la procédure stockée Lst_Suppliers correspondant à la requête 
afficher le nom des fournisseurs pour lesquels une commande a été passée */
DELIMITER |

CREATE PROCEDURE lst_suppliers()
BEGIN
    SELECT sup_name 
    FROM suppliers
    jOIN products ON pro_sup_id=pro_sup_id
    jOIN orders_details ON pro_id= ode_pro_id
    WHERE ode_pro_id is not null
    GROUP by sup_name;
       
END |

DELIMITER ;
/*Pour exécuter une procédure stockée, il faut procéder à un appel */
CALL lst_suppliers

/*Exécutez la commande SQL suivante pour obtenir des informations*/
SHOW CREATE PROCEDURE  lst_suppliers;
