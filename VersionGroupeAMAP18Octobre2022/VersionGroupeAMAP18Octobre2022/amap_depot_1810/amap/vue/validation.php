<?php

//echo les données du formulaire a la ligne pour chaque
//echo "Merci " . $_POST['nom'] . " de nous avoir contacté à propos de " . $_POST['sujet'] . ".<br>";
echo $nom;
echo "<br>";
echo $prenom;
echo "<br>";
echo $mail;
echo "<br>";
echo $tel;
echo "<br>";
echo $mess;
echo "<br>";



header('refresh:3;url=index.php?section=index');


?>

