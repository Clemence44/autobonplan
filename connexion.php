<?php

session_start();

// Inclu notre fichier de bdd
include "inc/db.php";

$errors=false;

// Traitement du form pour la connexion
if(!empty($_POST)){
    $identifiant = strip_tags($_POST["identifiant"]);
    $mot_de_passe = $_POST["mot_de_passe"];

    $user =selectUserByIdMdp($identifiant, $mot_de_passe);

    if($user == null){
        $errors = true;
    }

    if(!$errors){

        $_SESSION["message"] =["Bienvenue","success"];
    
        $_SESSION["user"] =$user;
        unset($_SESSION["user"]["mot_de_passe"]);
    
        header("Location: index.php");
        die();
    
    } else {
        $_SESSION["message"] = ["Identifiants incorrects", "danger"];
    }
}
?>

<!-- Fragment php partie : top -->
<?php include "inc/top.php"; ?>

<main class="section">
    <div class="container">
        <h2 class="title is-4  has-text-centered"> Connexion </h2>
        <div class="box">
            <form method="post" novalidate>
                <div class="field">
                    <label for="identifiant_input">Identifiant</label>
                    <div class="control">
                        <input name="identifiant" type="text" class="input" id="identifiant_input">
                    </div>
                </div>
                <div class="field">
                    <label for="mot_de_passe_input">Mot de passe</label>
                    <div class="control">
                        <input name="mot_de_passe" type="mot_de_passe" class="input" id="mot_de_passe_input">
                    </div>
                </div>
                <div class="field">
                    <div class="control">
                        <button class="button is-dark is-light">Me connecter</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</main>

<!-- Fragment php partie : botom -->
<?php include "inc/bottom.php"; ?>