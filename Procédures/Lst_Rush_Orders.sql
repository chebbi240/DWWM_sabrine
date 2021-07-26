--Exercice2:création d'une procédure stockée avec un paramètre en entrée
DELIMITER |

CREATE PROCEDURE Lst_Rush_Orders ()
BEGIN
    SELECT*FROM orders
    WHERE 
    ord_status like 'commande urgente';
   
       
END |

DELIMITER ;