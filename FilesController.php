<?php
include_once'FilesModel.php';
include_once'File_typeModel.php';

if(isset($_REQUEST["id"]))
{
    $File_typ_opj = new file_type($_REQUEST["id"]);
    echo($File_typ_opj->type);
}




?>