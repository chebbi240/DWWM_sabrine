--Exercice 1
//Quelle semaine a lieu la validation du groupe 19002 ?
$y=count($a["19002"]);
     $st=0;
     for ($i=0;$i<$y;$i++){
         if($a["19002"][$i]=="Validation"){
             $st=$i;
             $st++;
             echo " la validation du groupe 19002 aura lieu la semaine".$st."<br/>";
  
         }}
--Exercice 2
//Trouver la position de la dernière occurrence de Stage pour le groupe 19001. 
$x =0;
     $t =count($a["19001"]);
     for ($i =0;$i < $t; $i++){
         if ($a["19001"][$i] == "Stage"){
          $x = $i;
         }else{}
     }
     echo " la derniere semaine de Stage pour le groupe 19001 est la semaine ".$x
 --Exercice 3
 //Extraire, dans un nouveau tableau, les codes des groupes.

 --Exercice 4
//Combien de semaines dure le stage du groupe 19003 ?
     $z =count($a["19003"]);
     $tab1 =array();
     for ($i =0; $i <$y; $i++){
         if ($a["19003"][$i] == "Stage"){
             array_push($tab1,"Stage");
         }else{}
     }
     echo "le stage du groupe 19003 dure ".count($tab1)." semaines.<hr>";