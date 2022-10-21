
<html>
<link rel="stylesheet" href="vue/css/style2.css">
    <body>
        
        <!--Message de bienvenue avec le nom et prénom de l'adhèrent-->
        <h1 class="titreadherer">Bienvenue <?php echo $nomAdh . ' ' . $prenomAdh; ?> !</h1>
        <h3 class="recapSousTitre">Voici un récapitulatif de vos informations rentrées : </h3>

        <div class="coordAdh">
            <p>Nom : <?php echo $_POST['nomAdh']; ?></p><br>
            <p>Prénom : <?php echo $_POST['prenomAdh']; ?></p><br>
            <p>Téléphone : <?php echo $_POST['telAdh']; ?></p><br>
            <p>e-mail : <?php echo $_POST['emailAdh']; ?></p><br>
            <p>Ville : <?php echo $_POST['villeAdh']; ?></p><br>
            <p>Commentaire : <?php echo $_POST['comAdh']; ?></p><br>
        </div>


        
    </body>

    <?php

    header('refresh:10;url=index.php?section=index');


    ?>











</html>