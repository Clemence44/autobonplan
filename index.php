<?php

session_start();

// Inclu notre fichier de bdd
include "inc/db.php";

$errors=false;
// Traitement du form
if(!empty($_POST)){
    $modele = strip_tags($_POST["modele"]);

    $vehicules_modele_choisit = selectVehiculesModele($modele);
    // Tableau comprenant les véhicules par mois d'arrivage
    $vehicules_arrives = array();

    for ($i=1; $i <=12 ; $i++){
        $nb=0;
        foreach($vehicules_modele_choisit as $vehicule_modele_choisit){
            if(date("m",strtotime($vehicule_modele_choisit["date_entree_arrivage"])) == $i){
            $nb++;
            }
        } 
        array_push($vehicules_arrives,$nb);
    }

    //var_dump($modele);

    if($vehicules_arrives == null){
        $errors = true;
    }

}
    // Selection de tous les véhicules pour affichage tableau 
    $all_vehicules = selectAllVehicules();
    // Selection de tous les modeles pour l'affichage des options dans le select
    $all_modeles = selectAllModeles();

?>


<!-- Fragment php partie : top -->
<?php include "inc/top.php"; ?>

<main class="section">
    <div class="container <?= empty($_SESSION["user"]) ? "is-hidden" : "" ?> ">
        <form method="post" novalidate="novalidate">
        <div class="columns is-mobile">
            <div class="column is-2">
                <div class="field">
                    <div class="control">
                        <div class="select is-dark is-light">
                        <select name="modele">
                            <option value="">Modèle...</option>
                            <?php foreach($all_modeles as $one_modele ): ?>
                              <option value="<?=($one_modele["modele"])?>"> <?=($one_modele["modele"])?> </option>;
                            <?php endforeach; ?>
                        </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column is-1">
                <div class="field">
                    <div class="control">
                        <button class="button is-dark is-light" type="submit">Valider</button>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</main>

<main class="section">
    <div class="container">
        <canvas id="graphique"></canvas>
            <script>
            // javascript : graphique du nombre de véhicules par mois d'arrivage
            var graphique = new Chart(
            document.getElementById('graphique'),
                    {
                    type: 'bar',
                    data: {
                        labels: labels = [
                        'Janvier',
                        'Février',
                        'Mars',
                        'Avril',
                        'Mai',
                        'Juin',
                        'Juillet',
                        'Août',
                        'Septembre',
                        'Octobre',
                        'Novembre',
                        'Décembre',
                    ],
                        datasets: [{
                        label: 'Arrivée des véhicules : <?= $modele?>',
                        data: [<?php  foreach($vehicules_arrives as $vehicule_arrive ){
                        echo  $vehicule_arrive .',';
                        };?>],
                        backgroundColor: 'rgb(0,0,0)',
                        borderColor: 'rgb(0,0,0)',
                        borderWidth: 1
                        }]
                    },
                    options: {
                    scales: {
                        y: {
                        max: 10,
                        min: 0,
                        }
                    }
                }
                }
                    );
                
            </script>
    </div>
    <div class="container pt-6 mt-6 <?= empty($_SESSION["user"]) ? "is-hidden" : "" ?>">
        <table class = "table is-bordered is-fullwidth">
        <thead>
            <tr>
                <td>NO VOITURE</td>
                <td>MARQUE</td>
                <td>MODELE</td>
                <td>ENERGIE</td>
                <td>DATE ENTREE ARRIVAGE</td>
                <td>FOURNISSEUR</td>
            </tr>
        </thead>
        
        <tbody>
        <!-- Tableau : comprend principales données véhicules -->
        <?php foreach($all_vehicules as $vehicules){ ?>
            <?= "<tr>" ."<td>" . strtoupper($vehicules["no_vo"]) ."</td>" . "<td>" . strtoupper($vehicules["marque"]) ."</td>".
                "<td>" . strtoupper($vehicules["modele"]) ."</td>" . "<td>" . strtoupper($vehicules["energie"]) ."</td>".
                "<td>" . strtoupper($vehicules["date_entree_arrivage"]) ."</td>" . "<td>" . strtoupper($vehicules["fournisseur"]) .
                "</td>". "</tr>"?>
                <?php } ?>
        </tbody>
        </table>     
    </div>
</main>


<!-- Fragment php partie : botom -->
<?php include "inc/bottom.php"; ?>
