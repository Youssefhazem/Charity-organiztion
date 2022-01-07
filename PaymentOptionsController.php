<?php

include_once'Payment_optionsModel.php';
include_once'Payment_type_optionsModel.php';

if(isset($_REQUEST["id"]))
{
    $Pay_type_opj = new payment_type_options($_REQUEST["id"]);
    echo ($Pay_type_opj->option_id);
}

?>