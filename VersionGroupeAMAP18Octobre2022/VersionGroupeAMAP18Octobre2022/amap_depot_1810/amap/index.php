<?php

include_once('modele/ConnexionChampBio.php');


if (!isset($_GET['section']) OR $_GET['section'] == 'index')
{
    include_once('controlleur/accueil.php'); //include_once signifie que le fichier est inclus une seule fois
}

else {
    if ($_GET['section'] == 'paniers')
    {
        include_once('controlleur/paniers.php');
    }

    if ($_GET['section'] == 'produits')
    {
        include_once('controlleur/produits.php');
    }

    if ($_GET['section'] == 'mentions')
    {
        include_once('vue/mentions_legales.php');
    }

    if ($_GET['section'] == 'panier')
    {
        include_once('controlleur/detailPanier.php');
    }

    if ($_GET['section'] == 'detailproduit')
    {
        include_once('controlleur/detailproduits.php');
    }
    if ($_GET['section'] == 'contact')
    {
        include_once('controlleur/contact.php');
    }
    if ($_GET['section'] == 'recup_contact')
    {
        include_once('controlleur/recup_contact.php');
    }
    if ($_GET['section'] == 'adherer')
    {
        include_once('controlleur/adherer.php');
    }
    if ($_GET['section'] == 'recup_adherent')
    {
        include_once('controlleur/recup_adherent.php');
    }
    if ($_GET['section'] == 'categorie')
    {
        include_once('controlleur/categProduits.php');
    }
    


}



?>
