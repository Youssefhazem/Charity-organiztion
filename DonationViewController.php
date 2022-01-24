<?php

include_once 'connection.php';

$db=new connect();
$con= $db->connectToDB();

if (isset($_POST['Done'])) 
{

    $word=$_POST["Money"]; 
    $trnd=1;
    $sql ="select * from donationtype where id=$trnd";
    $userDataSet= mysqli_query($con,$sql);
    if ($row= mysqli_fetch_array($userDataSet)) 
    {
        echo '<script>alert("Transelat Successfuly");</script>';
        echo $row["word"];
    }
}


?>