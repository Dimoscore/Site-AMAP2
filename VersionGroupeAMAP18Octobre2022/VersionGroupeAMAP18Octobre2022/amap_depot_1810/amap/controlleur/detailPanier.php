<?php

$idPanier = $_GET['id'];

include_once('modele/mod_paniers.php');
$unpanier = get_detailPanier($idPanier);

include_once('vue/vue_detailPanier.php');

?>