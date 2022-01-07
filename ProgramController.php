<?php



include_once'Program&ProgramTypeModel.php';

if(isset($_REQUEST["id"]))
{
    $Program_opj = new ProgramType($_REQUEST["id"]);
    echo($Program_opj->type);
}



?>