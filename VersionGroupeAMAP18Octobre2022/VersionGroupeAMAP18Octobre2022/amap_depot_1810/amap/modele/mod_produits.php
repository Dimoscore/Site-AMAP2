<?php

function get_produits() {
    global $bdd;

    $req = $bdd->prepare('SELECT * FROM produit');
    $req->execute();
    $lesproduits = $req->fetchAll();

    return $lesproduits;
}

function get_detailproduits($idProduit) {
    global $bdd;

    $req = $bdd->prepare("SELECT * FROM produit where idProduit=$idProduit");
    $req->execute();
    $lesdetailsproduits = $req->fetch();

    return $lesdetailsproduits;
}


function get_categproduits($wIdCateg) {

    global $bdd;

    $req = $bdd->prepare('SELECT * FROM produit where idCateg = ?');
    $req->execute(array($wIdCateg));
    $lesproduits = $req->fetchAll();
    return $lesproduits;

    
   
}

?>


