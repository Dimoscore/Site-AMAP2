<?php

$wIdCateg = $_POST['categ'];

include_once 'modele/mod_produits.php';

$lesproduits = get_categproduits($wIdCateg);
$nbProduits = count($lesproduits);
$wCategSelectionne = get_produits($wIdCateg);


include_once 'vue/vue_categproduit.php';



?>