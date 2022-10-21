<?php

include_once 'vue/vue_entete.php';

?>

<html>
<body>

    <h3 class="titrepanier">Nos paniers :</h3>


    <section class="panier"></section>
        <?php
            $n = 1;
            foreach ($lespaniers as $unpanier) {
                

                $wIdPanier = $unpanier['idPanier'];
                $wNomPanier = $unpanier['nomPanier'];
                $wDescPanier = $unpanier['descPanier'];
                $wImgPanier = $unpanier['imgPanier'];
            
                if ($n == 1) {
                    echo '<div class="row">';
                }
                
                echo "<div class='container'>";
                echo "<div class='card'>";
                echo "<div class = 'imgBx'>";
                echo "<img src='vue/imgs/$wImgPanier'>";
                echo "</div>";
                echo "<div class='contentBx'>";
                echo "<h2>$wNomPanier</h2>";
                echo "<p>$wDescPanier</p>";
                echo "<a href='index.php?section=panier&id=$wIdPanier' class='btn'>Voir le panier</a>";
                echo "</div>";
                echo "</div>";
                echo "</div>";
                

                if ($n == 3) {
                    echo '</div>';
                    $n = 0;
                }

                $n++;
                

            }
            if ($n != 1) {
                echo '</div>';
            }

            

        ?>
</section>

<section>
    <div class="titreliste">
          <h3>Les paniers sont récuperables :</h3>
    </div>
     <div class="lieuxpaniers">
           <ul>
                 <li class="listelieux">Le mercredi de 16h à 18h à la ferme de Vouvray</li>
                 <li class="listelieux">Le jeudi de 9h à 14h à la place du marché à MontLouis Sur Loire</li>
                 <li class="listelieux">Le samedi de 10h à 12h à la ferme de Vouvray</li>
           </ul>
     </div>
</section>

<?php

include_once 'vue/vue_footer.php';

?>


</body>
</html>