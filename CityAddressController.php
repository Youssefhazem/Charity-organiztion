<?php


include_once'CityAddressModel.php';

if(isset($_REQUEST["id"]))
{

    $cityAdd_opj =new CityAddress($_REQUEST["id"]);
    echo($cityAdd_opj->name);

}


?>