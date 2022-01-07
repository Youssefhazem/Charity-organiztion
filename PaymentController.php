<?php



include_once "payment&paymentTypeModel.php";

if(isset($_REQUEST["id"]))
{
    $payTypeob = new PaymentType($_REQUEST["id"]);
    echo($payTypeob->type);
}





?>