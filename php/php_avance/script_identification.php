<?php 
session_start();
include 'connexion_bdd.php';

$db = connexionBase(); // Appel de la fonction de connexion
var_dump($_POST);
if(isset($_POST['valider'])){
$uti_ident=$_POST['uti_ident'];
$uti_mdp=MD5($_POST["uti_mdp"]);
if(!empty($uti_ident) & !empty($uti_mdp)){

   if ($uti_ident=="chebbi" AND $uti_mdp="chebbi"){
 
header("location: tableau.php");
exit;
}// compte admin  
if ($uti_ident !=="chebbi" AND $uti_mdp !=="chebbi"){
 
   header("location: tableau_c.php");
   exit;
   }
$requser= $db->prepare("SELECT *FROM utilisateur WHERE uti_ident=$uti_ident & uti_mdp=$uti_mdp");
var_dump($requser);

$requser->execute($uti_ident,$uti_mdp);
$userexist=$requser->rowcount();
var_dump($requser->errorInfo());
var_dump($userexist);
if($userexist==1){
$userinfo=$requser->fetch();
//var_dump($userexist);
//header("location: tableau_c.php");
var_dump($_SESSION['identifiant']);
header("location:tableau_c.php");
exit;
}
else{
   $erreur='mauvais mail ou mdp';
}
}
else{
$err ="Tous les champs doivent etre remplis";
}
}


