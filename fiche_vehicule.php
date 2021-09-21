<?php

session_start();

// Inclu notre fichier de bdd
include "inc/db.php";

// Sécurité : pas d'accès à la page si on n'est pas connecté et autorisé
if (empty($_SESSION["user"])){
    header("Location: index.php");
    die();
} else if (((int) $_SESSION["user"]["droit_ajout_vehicule"]) == 0){
    header("Location: index.php");
    die();
}

    // Traitement du form
    if(!empty($_POST)){
    
    $tmpName  =$_FILES['csv']['tmp_name'];
    
    // Ouverture et lecture du fichier CSV
    $file = fopen($tmpName, 'r');
    while (($donnees = fgetcsv($file)) !== FALSE) {
       
        for ($i=0; $i < count($donnees) ; $i++) { 
            if(empty($donnees[$i])){
                $donnees[$i] = "NULL";
            }
        }   

        // Insertion des données du fichier dans la BDD
        insertVehicule($donnees);

    }

    fclose($file);

}
  
?>

<!-- Fragment php partie : top -->
<?php include "inc/top.php"; ?>

<main class="section">
    <div class="container">
        <h2 class="title is-4  has-text-centered"> Vehicule </h2>
        <div class="box">
            <form method="post" enctype="multipart/form-data" novalidate>
                <div class="field">
                    <label>Fiche Véhicule</label>
                    <div class="control">
                    <input type="file" name="csv" id="file" accept=".csv">
                    </div>
                </div>
                <div class="field">
                    <div class="control">
                        <button name="import" class="button is-dark is-light">Inserer</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</main>

<!-- Fragment php partie : botom -->
<?php include "inc/bottom.php"; ?>
