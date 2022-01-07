<?php


include_once "Program_type_optionsModel.php";

if(isset($_REQUEST["id"]))
{
    $pro_type_op = new program_type_options($_REQUEST["id"]);

    echo($pro_type_op->option_id);
}






?>