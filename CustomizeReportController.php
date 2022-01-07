<?php


include_once'CustomizeReport.php';
if(isset($_REQUEST["id"]))
{
    $CustRepo_Opj = new customized_reports($_REQUEST["id"]);
    echo($CustRepo_Opj->report_name);
    
}


?>