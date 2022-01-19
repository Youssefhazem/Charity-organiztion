<?php

include_once 'connection.php';
$db=new connect();
$con= $db->connectToDB();

if(isset($_POST['singup']))
{
    $Fname=$_POST['supname'];
    $Lname=$_POST['suplname'];
    $email=$_POST['supemail'];
    $passwored=$_POST['suppass'];
   
    if($Fname!=null and $Lname!=null and $email!=null and $passwored!=null)
    {
        
        $sql="INSERT INTO user (id, Fname, Lname, email, user_type_id, user_address_id, passwoerd, Dateofbarht) VALUES (' ','$Fname', '$Lname', '$email',' ' ,' ', '$passwored', ' ')";
        if(mysqli_query($con,$sql))
        {
            echo '<script>Alert("ADD Successfuly");</script>';
            echo '<script>location.href="../user.html";</script>';
        }
        else
        {
            echo '<script>alert("Error Singup");</script>';
            echo '<script>location.href="../login.html";</script>';
        }
    }
    else
    { 
        echo '<script>alert("Please Full The Form !!");</script>';
        echo '<script>location.href="../login.html";</script>';
    }
}
?>