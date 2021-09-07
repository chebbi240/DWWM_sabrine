
   <?php
   function connexionBase() {
    // Paramètre de connexi on serveur
                             $host = "localhost";
                             $login= "root";  // Votre loggin d'accès au serveur de BDD 
                             $password="Cheb}A123@*";    // Le Password pour vous identifier auprès du serveur
                             $base = "jarditou";  // La bdd avec laquelle vous voulez travailler

    //Tente de se connecter
    try {
        $db = new PDO('mysql:host=' .$host. ';charset=utf8;dbname=' .$base, $login, $password);
        $db->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_WARNING);
        return $db;
        } 


    //Si échec de la connexion (du try), on attrape l'exception avec catch
    catch (Exception $e) 
{
    // On affiche le message et le code de l'erreur
    echo 'Erreur : ' . $e->getMessage() . '<br />';
    echo 'N° : ' . $e->getCode();
    die('Fin du script');
    //Le script s'arrête ici.
}


//$requete = "SELECT * FROM produits";
       
   }
    ?>