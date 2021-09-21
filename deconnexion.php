<?php

session_start();

//Suppression de la session en cours
unset($_SESSION["user"]);

$_SESSION["message"] = ["Vous êtes déconnecté","success"];

header("Location: connexion.php");
die();