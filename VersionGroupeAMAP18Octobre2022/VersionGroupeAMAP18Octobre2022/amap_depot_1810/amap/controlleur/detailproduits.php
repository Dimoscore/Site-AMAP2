<?php
//r�cup�ration de l'identifiant artiste pass� en param�tre
$idlesproduitschoisi = $_GET['id'];
include_once 'modele/mod_produits.php';

$lesdetailsproduits = get_detailproduits($idlesproduitschoisi);

include_once 'vue/vue_detailproduit.php';

?>