<?php


 // 1 - Connexion à la BDD


 $connect = new PDO(
    "mysql:host=localhost;dbname=wf3_php_intermediaire_nicolas_j",
    "root",
    "root",
    array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'
    )
    );

    // var_dump($connect);

    $alert = '';

    define('URL', 'http://localhost:8888/le_bon_appart/');
    define('CSS', 'http://localhost:8888/le_bon_appart/css/style.css');