--Exercice 3 : création d'une procédure stockée avec plusieurs paramètres


DELIMITER |

CREATE PROCEDURE CA_Supplier ()
BEGIN
    SELECT*FROM orders
    WHERE 
    ord_status like 'commande urgente';
   
       
END |

DELIMITER ;
/*Pour exécuter une procédure stockée, il faut procéder à un appel */
CALL CA_Supplier
--Lister les procédures stockées :
SHOW PROCEDURE STATUS
--supprimer une procédure :
DROP PROCEDURE listeClient;