<?php
include_once 'php/connection.php';

$db=new connect();
$con= $db->connectToDB();

if (isset($_POST['submit'])) 
{

    $word=$_POST["word"]; 
    $trnd=$_POST["trnd"];
    $sql ="select * from word where id= $trnd";
    $userDataSet= mysqli_query($con,$sql);
    if ($row= mysqli_fetch_array($userDataSet)) 
    {
        echo '<script>alert("Transelat Successfuly");</script>';
        echo $row["word"];
    }
}
?>

