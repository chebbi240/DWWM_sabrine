<?php
function connexionBase()
{
   // Paramètre de connexion serveur
   $host = "localhost";
   $login= "root";  // Votre loggin d'accès au serveur de BDD 
   $password="Cheb}A123@*)";    // Le Password pour vous identifier auprès du serveur
   $base = "jarditou";  // La bdd avec laquelle vous voulez travailler 

       try 
          {
           $db = new PDO('mysql:host=localhost;dbname=jarditou','root','Cheb}A123@*)');
           $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
        return $db;
          } 
        catch (Exception $e) {  
                echo 'Erreur : ' . $e->getMessage() . '<br>';
                echo 'N° : ' . $e->getCode() . '<br>';
        die('Connexion au serveur impossible.');
    } 
}
?>



