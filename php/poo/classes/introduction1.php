<?php

class Employe
{
    public $nom ;
    public $prenom;
    public $age;

    public function __construct($prenom, $nom, $age){
        $this->nom = $nom;
        $this->prenom = $prenom;
        $this->age = $age;
        var_drump("je suis construit");
    }
function presentation($nom,$peznom,$age){

        var_drump("bonjour, je suis $this->prenom $this->nom et j'ai $this->age ans");
}

}
$employe1= new Employe("lior","chamla",32);



$employe2= new Employe("Magali","Pernin",32);


$Employe1->presentation();

