<?php
    $db_host = "localhost";
    $db_name = "moviestar";
    $db_user = "root";
    $db_pass = "My-N7w_And.5ecure-P@s5w0rd";

    $conn = new PDO("mysql:host=$db_host;dbname=$db_name;unix_socket=/var/run/mysqld/mysqld.sock", $db_user, $db_pass); //socket Unix

    // Habilitar erros PDO

    $conn -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn -> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    
?>