
--1_Creer une ligne retraite dans la table post.--
INSERT INTO posts(pos_libelle)
VALUE
    ('retraite');
-- Cela créé à une ligne pos_id 36 , dont le pos_libelle à bien la valeur "retraite"


--2_  On Modifie emp_pos_id de Hannah Amity dans la tables employées pour qu'il corresponde a son pos_id dans la table posts qui est à la ligne 36  --
UPDATE
    employees
SET emp_pos_id =(
    SELECT pos_id FROM posts
    WHERE pos_libelle = 'retraite'
)
WHERE emp_lastname = 'HANNAH' AND emp_firstname = 'Amity';
--3_ Transferer son poste au plus ancien pépiniériste du magasin d'ARRAS et on  augmente son salaire de 1.05--
-- Ici on situe comment aller chercher l'employé promut Hilary Dorian -- 
SELECT emp_enter_date,emp_pos_id,pos_libelle,emp_id,
    CONCAT(emp_lastname,'  ',emp_firstname) AS emp_name,emp_salary
FROM employees
JOIN posts ON emp_pos_id = pos_id
WHERE emp_enter_date =(
    SELECT MIN(emp_enter_date)
    FROM employees
    JOIN shops ON emp_sho_id = sho_id
    WHERE emp_pos_id = 14 AND sho_city = 'Arras'
);

-- Transfert de poste --
UPDATE employees
SET emp_pos_id = '2'
WHERE emp_id = 1

--augmentation de salaire -- 

UPDATE employees
SET emp_superior_id = 10
WHERE emp_pos_id = 14 AND emp_sho_id = 2

START Transaction;

UPDATE employees
SET emp_pos_id =(
    SELECT pos_id
    FROM posts
    WHERE pos_libelle = 'retraite'
)
WHERE emp_lastname = 'HANNAH' AND emp_firstname = 'Amity';

UPDATE employees
SET emp_pos_id = '2'
WHERE emp_id = 10;

UPDATE employees
SET emp_superior_id = 10
WHERE emp_pos_id = 14 AND emp_sho_id = 2
commit 