<?php



function set_contact($Wnom, $Wprenom, $Wmail, $Wtel, $Wmess) {
    global $bdd;
    $req = $bdd->prepare('INSERT INTO contact (nom, prenom, mail, tel, mess) VALUES (?,?, ?, ?, ?)');
    $req->execute([$Wnom, $Wprenom, $Wmail, $Wtel, $Wmess]);
    
}
    

    


?>
