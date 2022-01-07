<?php

include_once 'Message_typeModel.php';
include_once 'MessageModel.php';

if(isset($_REQUEST["id"]))
{
    $Mess_type_opj = new message_type($_REQUEST["id"]);
    echo ($Mess_type_opj->name);
}

?>