<?php


include_once'ThemesModel.php';

if(isset($_REQUEST["id"]))
{
    $Theme_opj = new thems($_REQUEST["id"]);
    echo($Theme_opj->name);
    echo($Theme_opj->posation_id);
}



?>