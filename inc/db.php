<?php

function connect()
{
    $dbName = "autobonplan"; 
    $dbUser = "root"; 
    $dbPass = ""; 
    $dbHost = "localhost"; 

    $dsn = "mysql:dbname=$dbName;host=$dbHost;charset=utf8";

    $pdo = new PDO($dsn, $dbUser, $dbPass, [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    ]);
    return $pdo;
}


function selectUserByIdMdp($identifiant, $mot_de_passe){
    $sql = "SELECT * FROM utilisateur u WHERE u.identifiant= :identifiant and u.mot_de_passe= :mot_de_passe";
    $pdo = connect();
    $pstmt = $pdo->prepare($sql);
    $pstmt->execute([
        ':identifiant' => $identifiant,
        ':mot_de_passe' => $mot_de_passe
    ]);
    $rs = $pstmt->fetch();
    return $rs ? $rs : null;
}

function selectVehiculesModele($modele){
    $sql = "SELECT * FROM arrivage a WHERE a.modele = :modele";
    $pdo = connect();
    $pstmt = $pdo->prepare($sql);
    $pstmt->execute([
        ':modele' => $modele,
    ]);
    $rs = $pstmt->fetchAll();
    return $rs ? $rs : null;
}

function selectAllVehicules(){
    $sql = "SELECT * FROM arrivage a";
    $pdo = connect();
    $pstmt = $pdo->prepare($sql);
    $pstmt->execute();
    $rs = $pstmt->fetchAll();
    return $rs ? $rs : null;
}

function selectAllModeles(){
    $sql = "SELECT DISTINCT(modele) FROM arrivage a";
    $pdo = connect();
    $pstmt = $pdo->prepare($sql);
    $pstmt->execute();
    $rs = $pstmt->fetchAll();
    return $rs ? $rs : null;
}


function insertVehicule($donnees){
    $insert = "INSERT INTO arrivage (no_vo, etat, fournisseur, immat, date_mec, annee, marque, VIN, modele, version, places, energie, puissance_fiscale, carrosserie, segment, portes, genre, kms, couleur, couleur_interieure, sellerie, date_achat, date_entree_parc, date_h_vente, puissance_DIN, boite_vitesse, nb_rapports, prix_achat, TVA_achat, prix_particulier_TTC, TVA_vente_vehicule, prix_professionnel_TTC, type_garantie, code_radio, frais, frais_reel_HT, equip_serie, equip_option, cylindree, provenance, conso_carbone, no_lot_achat, poids_vide_min, duree_mois, type_CNIT, date_entree_arrivage, parc, livraison_prevue_BC, livraison_prevue_BT, dispo_le) VALUES (";
    $values= "";
    for ($i=0; $i < count($donnees) ; $i++) { 
        if ($i == count($donnees)-1){
            $values = $values . "'". ((string)$donnees[$i] . "');");
        }else {
            $values = $values . "'". ((string) $donnees[$i] . "',");
        }
    }
    $sql = $insert . $values;
    $pdo = connect();
    $pstmt = $pdo->prepare($sql); 
    $pstmt->execute();
    
    
}