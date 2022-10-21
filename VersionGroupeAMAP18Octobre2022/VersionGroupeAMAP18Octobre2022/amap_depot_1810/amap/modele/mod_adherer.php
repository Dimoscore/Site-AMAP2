<?php

function set_adherent($WnomAdh, $WprenomAdh, $WtelAdh, $WemailAdh, $WmdpAdh, $WvilleAdh, $WcomAdh) {
    
    global $bdd;

    $req = $bdd->prepare("INSERT INTO adherent(nomAdh, prenomAdh, telAdh, emailAdh, mdpAdh, villeAdh, comAdh) VALUES (?,?,?,?,?,?,?)");
    $req->execute([$WnomAdh, $WprenomAdh, $WtelAdh, $WemailAdh, $WmdpAdh, $WvilleAdh, $WcomAdh]);
    

}




?>