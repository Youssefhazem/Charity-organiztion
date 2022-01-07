<?php


include_once'WordModel.php';

if(isset($_REQUEST["id"]))
{
    $Word_opj = new word($_REQUEST["id"]);
    echo($Word_opj->word);


}




?>