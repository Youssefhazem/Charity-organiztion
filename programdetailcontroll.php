<?php


include_once "ProgramDetailsModel.php";

if(isset($_REQUEST["id"]))
{
    $prodtscont = new ProgramDetails($_REQUEST["id"]);
    echo ($prodtscont->Num_volunteer);
}

?>