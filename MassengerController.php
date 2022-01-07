<?php


include'MassengerModel.php';

if(isset($_REQUEST["id"]))
{
    $mess_opj = new massenger($_REQUEST["id"]);
    
   echo($mess_opj->messag_id);

}





?>