<?php
/**
 * Created by PhpStorm.
 * User: nemzag
 * Date: 2018-03-29
 * Time: 14:56
 */

function connect() {
    $dsn = 'mysql:dbname=2018_scripts_serveurs_blog;host=localhost;charset=utf8';
    $userName = 'root';
    $passwd = '';
    try {
        $dbh = new PDO($dsn, $userName, $passwd);
        $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
    catch (Exception $e) {
        die('Error: '.$e->getMessage());
    }
    return $dbh;
}
?>

