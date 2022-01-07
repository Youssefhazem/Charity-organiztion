<?php
include_once 'connection.php';

    $db=new connect();
    $con= $db->connectToDB();
    
    if (isset($_POST['Save'])) 
    {


        $id=$_POST["id"]; 

	    $date_time=$_POST["date_time"];

	    $Reciver_id=$_POST["Reciver_id"];

	    $manager_id=$_POST["manager_id"];

	    $user_id=$_POST["user_id"];


	
        $sql="INSERT INTO payment (id, user_id ,date_time, Reciver_id, manager_id) VALUES ('$id','$user_id','$date_time', '$Reciver_id', '$manager_id')";
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

        $id=$_POST["id"]; 

	    $date_time=$_POST["date_time"];

	    $Reciver_id=$_POST["Reciver_id"];

	    $manager_id=$_POST["manager_id"];

	    $user_id=$_POST["user_id"];

        $sql ="UPDATE payment SET manager_id='$manager_id' WHERE id='$id'";
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

        $id=$_POST["id"]; 

	    $date_time=$_POST["date_time"];

	    $Reciver_id=$_POST["Reciver_id"];

	    $manager_id=$_POST["manager_id"];

	    $user_id=$_POST["user_id"];

        $sql ="DELETE FROM payment WHERE id = $id";
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