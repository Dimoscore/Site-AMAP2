
<?php

include_once 'vue/vue_entete.php';

?>

<html>
<link rel="stylesheet" href="vue/css/style2.css">
<body>

    <h3 class="titreadherer">Devenez adhérent de notre AMAP:</h3>

    <section class="formulaireinsc"> 
    <form action="index.php?section=recup_adherent" method="post">
        
    <p><i>Complétez le formulaire. Les champs marqué par </i><em>*</em> sont <em>obligatoires</em></p>
        <fieldset>
            
    <div>
    <label for="nom">Nom <em>*</em></label>
    <input id="nomAdh" name="nomAdh" required><br>
    </div>
    <div>
        <label for="prenom">Prénom :<em>*</em></label>
        <input type="text" id="prenomAdh" name="prenomAdh" required>
    </div>
    <div>
        <label for="num">Numéro de télephone : <em>*</em></label>
        <input id="telephone" type="telAdh"  pattern="0[0-9]{9}"  name="telAdh" required><br>
    </div>
    <div>
        <label for="mail">e-mail&nbsp;:<em>*</em></label>
        <input type="email" id="emailAdh" name="emailAdh" required>
    </div>
    <div>
        <label for="adresse">Mot de passe&nbsp;:<em>*</em></label>
        <input type="password" id="mdpAdh" name="mdpAdh" required>
    <div>
        <label for="ville">Commune/Ville : <em>*</em></label>
        <input type="text" id="villeAdh" name="villeAdh" required>
    </div>
    <label for="comments">Pourquoi voulez-vous adhérer à l'AMAP?</label>
      <textarea id="comAdh" name="comAdh"></textarea>
    </fieldset>
    <p><input class="boutonadherer" type="submit" value="Adhérer"></p>
</form>
</section>




</section>


<?php
    include 'vue/vue_footer.php';
?>

</body>
</html>