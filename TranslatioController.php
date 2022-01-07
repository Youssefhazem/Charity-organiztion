<?php

include'Translation_detailsModel.php';
include_once'TranslationModel.php';
if(isset($_REQUEST["id"]))
{
    $Trans_opj = new translation($_REQUEST["id"]);
    
    echo($Trans_opj->trans_name);

}







?>