<?php


include_once'LanguageModel.php';
if(isset($_REQUEST["id"]))
{
    $Lang_opj = new language($_REQUEST["id"]);
    echo($Lang_opj->name);
}


?>