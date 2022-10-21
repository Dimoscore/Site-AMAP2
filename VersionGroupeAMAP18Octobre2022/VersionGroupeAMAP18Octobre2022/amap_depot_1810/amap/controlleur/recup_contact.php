<?php


$nom = $_POST['nom'];
$prenom = $_POST['prenom'];
$mail = $_POST['mail'];
$tel = $_POST['tel'];
$mess = $_POST['mess'];


include_once 'modele/mod_contact.php';

set_contact($nom, $prenom, $mail, $tel, $mess);

include_once('vue/validation.php');



?>