<?php

function get_paniers() {
    
    global $bdd;

    $req = $bdd->prepare("SELECT * FROM panier");
    $req->execute();
    $lespaniers = $req->fetchAll();

    return $lespaniers;
}

function get_detailPanier($id) {

    global $bdd;
    $req = $bdd->prepare("SELECT * FROM panier WHERE idPanier = ?");
    $req->execute([$id]);
    $unpanier = $req->fetch();

    return $unpanier;

}



?>