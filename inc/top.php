<?php 

session_start();

$autorisation = false;
$estConnecte = false;

// Vérifie si user est connecté et si il est autorisé à ajouter un véhicule
if (!empty($_SESSION["user"] )){
    if(((int) $_SESSION["user"]["droit_ajout_vehicule"]) != 0){
    $autorisation = true;
    } 
    $estConnecte = true;
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Autobonplan - ARRIVAGE</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="icon" href="https://communication.autobonplan.com/abp-home/img/Logo_Autobonplan.png">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body >
<header class="section">
    <div class="container has-text-centered">
        
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a class="navbar-item" href="index.php">
                <img src="https://communication.autobonplan.com/abp-home/img/Logo_Autobonplan.png">
            </a>

            <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
                    <a class="navbar-item" href="index.php">
                    <span class="icon-text">
                        <span class="icon">
                            <i class="fas fa-home"></i>
                        </span> 
                        <span>Accueil</span>
                    </span>
                    </a>
                    <a class="navbar-item <?= !$autorisation  ? "is-hidden" : "" ?>" href="fiche_vehicule.php">
                    <span class="icon-text">
                        <span class="icon">
                        <i class="fas fa-file-import"></i>                        
                        </span> 
                        <span>Importer un véhicule</span>
                    </span>
                </a>
                </div>
            <div class="navbar-end">
                <a class="navbar-item button is-dark is-light <?= $estConnecte ? "is-hidden" : "" ?>" href="connexion.php">
                    Connexion
                </a>
                <div class="navbar-item <?= !$estConnecte  ? "is-hidden" : "" ?> ">
                <span class="icon-text">
                        <span class="icon">
                            <i class="fas fa-user"></i>
                        </span> 
                        <span><?= $_SESSION["user"]["prenom"]?> <?= $_SESSION["user"]["nom"]?></span>
                    </span>
                </div>
                <a class="navbar-item button is-dark is-light <?=  !$estConnecte ? "is-hidden" : "" ?>" href="deconnexion.php">
                    Déconnexion
                </a>
            </div>

            </div>
        </div>
    </nav>
    </div>
</header>

<!-- php : affichage message connexion / déconnexion -->
<?php if(!empty($_SESSION["message"])) : ?>
<div class="container">
    <div class="notification has-text-centered is-<?=$_SESSION["message"][1]?>"> <?=$_SESSION["message"][0]?></div>
</div>
<?php
    unset($_SESSION["message"]);?>
<?php endif;?>

