<?php

include_once ('vue/vue_entete.php');

?>

<html>
    <body>
        <section class="contact">
            <!-- un form qui envoie les infos dans la base de données -->
            <form action="index.php?section=recup_contact" method="post">
                
                <!-- Titre et sous-titre -->
                <h1 class="titre__contact">
                Contactez-nous
                </h1>
                <p class="soustitre__contact">
                Vous avez une question, une remarque, une suggestion ? N'hésitez pas à nous contacter !
                </p>

                <div class="name__info">
                    <label for="nom" id="nomlabel">Nom : </label><br>
                    <input type="text" id="nom" name="nom" placeholder="Votre nom">
                </div>
                
                <div class="name__info">
                    <label for="nom" id="nomlabel">Prenom : </label><br>
                    <input type="text" id="nom" name="prenom" placeholder="Votre prenom">
                </div>

                    <img src="vue/imgs/formulaireimage.png"  class="texte_centrer2"> 
                    <img src="vue/imgs/formamap.png"  class="texte_centrer3">   

                <div class="mail__info">
                    <label for="mail" id="maillabel">Mail : </label><br>
                    <input type="mail" id="mail" name="mail" placeholder="Votre mail">
                </div>

                <div class="tel__contact">
                    <label for="tel" id="tellabel">Téléphone : </label><br>
                    <input type="number" id="tel" name="tel" placeholder="Votre tél">
                </div>

                <div class="message__contact">
                    <label for="message" id="messagelabel">Message : </label><br>
                    <textarea id="message" name="mess"  rows="3" cols="30"></textarea>
                </div>

                <div class="bouton__contact">
                    <button type="submit" id="bouton__contact">Envoyer</button>
                </div>
                
            </form>
        </section>
        
<?php

include 'vue/vue_footer.php';

?>
    
</body>
    
</html>


