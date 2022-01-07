<?php


include_once "user&usertypeModel.php";

if(isset($_REQUEST["id"]))
{
    $UserTypeob =  new UserType($_REQUEST["id"]);
    echo ($UserTypeob->type);
}



?>