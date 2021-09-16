
   <?php
   function connexionBase() {
    // Paramètre de connexi on serveur
                             $host = "localhost";
                             $login= "root";  // Votre loggin d'accès au serveur de BDD 
                             $password="Cheb}A123@*";    // Le Password pour vous identifier auprès du serveur
                             $base = "jarditou";  // La bdd avec laquelle vous voulez travailler

    //Tente de se connecter
    try {
       // $db = new PDO('mysql:host=localhost;charset=utf8;dbname=jarditou', 'root', 'Cheb}A123@*');
        //$db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
        //return $db;
        $db = new PDO('mysql:host=' .$host. ';charset=utf8;dbname=' .$base, $login, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
         return $db;
        } 


    //le catsh execute qiand  on a un erreu dans le try
    catch (Exception $e)
{
    echo 'N° : ' . $e->getCode() .'<br />';                      
    echo 'Erreur : ' . $e->getMessage() ;     // On affiche le message et le code de l'erreur                
    die('fin de script');
    //Le script s'arrête ici.
}


//$requete = "SELECT * FROM produits";
       
   }
    ?>

<?php
