<?php

include_once('vue/vue_entete.php');


?>

<html>
<body>



    <h3 class="titrepanier">Description :</h3>



    <?php
        
        $wIdPanier = $unpanier['idPanier'];
        $wNomPanier = $unpanier['nomPanier'];
        $wDescriptionPanier = $unpanier['descPanier'];
        $wDescLonguePanier = $unpanier['descLonguePanier'];
        $wImgPanier = $unpanier['imgPanier'];

    ?>

    <div class="panier">
        <div class="panier__img">
            <?php echo "<img src='vue/imgs/$wImgPanier' alt=''>"; ?>
        </div>
        <div class="panier__content">
            <?php 
            echo "<h3 class='panier__title'>$wNomPanier</h3>";
            echo "<p class='panier__desc'>$wDescriptionPanier</p>";
            echo "<p class='panier__desclong'>$wDescLonguePanier</p>"; 
            ?>
        </div>
            <a href="index.php?section=paniers" class="cta"><button class="btnpanier">Retour</button></a>
        </div>

    

    



    



    

    <?php

    include_once('vue/vue_footer.php');

    ?>
    



</body>


</html>