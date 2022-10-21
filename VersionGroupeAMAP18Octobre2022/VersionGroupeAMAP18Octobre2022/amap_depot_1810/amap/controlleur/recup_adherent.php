<?php

$nomAdh = $_POST['nomAdh'];
$prenomAdh = $_POST['prenomAdh'];
$telAdh = $_POST['telAdh'];
$emailAdh = $_POST['emailAdh'];
$mdpAdh = $_POST['mdpAdh'];
$villeAdh = $_POST['villeAdh'];
$comAdh = $_POST['comAdh'];

include 'modele/mod_adherer.php';

set_adherent($nomAdh, $prenomAdh, $telAdh, $emailAdh, $mdpAdh, $villeAdh, $comAdh);

include_once('vue/validationAdh.php');



?>