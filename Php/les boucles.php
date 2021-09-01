--Exercice 1
/*Ecrire un script PHP qui affiche tous les nombres impairs entre 0 et 150, par ordre croissant : 1 3 5 7... */
    <?php

    for ($a =1; $a<150; $a++){
        echo "$a<br>";
        $a++;
     }
    ?>
--Exercice 2
/*Écrire un programme qui écrit 500 fois la phrase Je dois faire des sauvegardes régulières de mes fichiers */

<?php
$a =1;
do{
    echo "$a- Je dois faire des sauvegardes réguliéres de mes fichiers<br>";
    $a++;
}
while ($a <= 500);
?>
--Exercice 3
Ecrire un script qui affiche la table de multiplication totale de {1,...,12} par {1,...,12}
<?php
    $a = 0;
    while ($a <= 12) {
?>
            <th><?= $a ?></th>
<?php
    $a++;
    }
?>
          </tr>
         </thead>

         <tbody>
<?php
    $b = 0;
    while ($b <= 12) {
?>
          <tr>
           <td>
            <?= $b ?>
           </td>
<?php
    $a = 0;
    while ($a <= 12) {
?>
           <td>
            <?= $a * $b ?>
            <?php $a++; ?>
           </td>
<?php
    } 
?>
          </tr>
<?php
    $b++;
    }
?>