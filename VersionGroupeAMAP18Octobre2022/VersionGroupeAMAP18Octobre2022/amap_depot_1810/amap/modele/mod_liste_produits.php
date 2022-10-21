<?php

function get_produits($wIdCateg) {

    global $bdd;

    $req = $bdd->prepare('SELECT * FROM produit where idCateg = ?');
    $req->execute(array($wIdCateg));
    $lesproduits = $req->fetchAll();
    return $lesproduits;

    
   
}


?>