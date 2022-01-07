<?php

include_once'Donation_type_optionsModel.php';
include_once'Donatio_OptionsModel.php';

if(isset($_REQUEST["id"]))
{
    $Don_type_opj = new donation_type_options($_REQUEST["id"]);
    echo ($Don_type_opj->option_id);
}


?>