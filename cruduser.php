<?php
include_once 'connection.php';

    $db=new connect();
    $con= $db->connectToDB();
    
    if (isset($_POST['Save'])) 
    {
        $id=$_POST["id"];   
        $name=$_POST["name"];
	    $Lname=$_POST["Lname"];
	    $email=$_POST["email"];
	    $user_type_id=$_POST["user_type_id"];
        $user_address_id=$_POST["user_address_id"];
        $passwoerd=$_POST["passwoerd"];
        $Dateofbarht=$_POST["Dateofbarht"];
	


        //$sql = "INSERT INTO user (id,Fname) VALUES ('$id','$name')";
        $sql="INSERT INTO user (id, Fname, Lname, email, user_type_id, user_address_id, passwoerd, Dateofbarht) VALUES ('$id','$name', '$Lname', '$email','$user_type_id' ,'$user_address_id', '$passwoerd', '$Dateofbarht')";
        if(mysqli_query($con,$sql))
        {
           echo" ! تم حفظ البيانات بنجاح ";
            
        }
        else
        {
            echo" ! هنالك خطأ ما في حفظ البيانات ";
            
        }
    }
    if (isset($_POST['update'])) 
    {

        $uname=$_POST['name'];
        $idf=$_POST['id'];
        $sql ="UPDATE user SET Fname='$uname' WHERE id='$idf'";//DELETE FROM `user_type` WHERE `user_type`.`id` = 1000;
        if(mysqli_query($con,$sql))
        {
            echo" ! تم تعديل البيانات بنجاح ";
        }
        else
        {
            echo"! هنالك خطأ ما في تعديل البيانات";
            
        }
    }
    if (isset($_POST['delete'])) 
    {

        $uname=$_POST['name'];
        $idf=$_POST['id'];
        $sql ="DELETE FROM user WHERE id = $idf";
        if(mysqli_query($con,$sql))
        {
            echo" ! تم حذف البيانات بنجاح ";
        }
        else
        {
            echo"! هنالك خطأ ما في حذف البيانات";
            
        }
    }
    /*if (isset($_POST['ٌRead'])) 
    {

        $uname=$_POST['name'];
        $idf=$_POST['id'];
        $sql ="SELECT id,Fname into $idf,$uname FROM user";
        $row = mysqli_fetch_array($con,$sql);
        if(mysqli_query($con,$sql))
        {
            echo $row["id"];
            echo $row["name"];
            echo" ! تم قرأة البيانات بنجاح ";
        }
        else
        {
            echo"! هنالك خطأ ما في قرأة البيانات";
            
        }
    }*/
    mysqli_close($con);
    
?>