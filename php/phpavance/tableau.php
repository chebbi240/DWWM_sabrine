<?php
require "connexion_bdd.php";
$db = connexionBase();

$requete01 = "SELECT * FROM produits ";
$result = $db->query($requete01);


?>
<?php
session_start();


var_dump($_SESSION['client']);

if (!isset ($_SESSION['client'])) {
    header("Location:tab1.php");
    exit;
}

?>

<?php
include("head.php");
?>
<table class="table table-striped table-bordered container-fluid col-lg-8">
    <thead>
    <tr>
        <th scope="col">Photo</th>

        <th scope="col">Libell&eacute;</th>
        <th scope="col">Prix</th>
        <th scope="col">Couleur</th>

    </tr>
    </thead>
    <tbody>
    <?php
    $nbLigne = $result->rowCount();
    if ($nbLigne >1){
        while ($row = $result->fetch(PDO::FETCH_OBJ)) {?>
            <tr>
            <th scope="row" class="table-warning"><img src=jarditou_photos/<?php echo $row->pro_id.".".$row->pro_photo;?>" width="75"></th>

            <td class="table-warning"><a class="nav-link" ><?php echo $row->pro_libelle;?></a></td>
            <td ><?php echo $row->pro_prix;?></td>
            <td ><?php echo $row->pro_couleur;?></td>
                <?php
}
?>
            <?php
            }
        $result->closeCursor();
        ?>
        </tr>

    </tbody>
</table>
<?php
require "footer.php"
?>
</body>

</html>