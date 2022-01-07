<?php
include_once 'connection.php';

    $db=new connect();
    $con= $db->connectToDB();
    
    if (isset($_POST['Save'])) 
    {


        $id=$_POST["id"];
        $Don_id=$_POST["Don_id"];
        $date_time=$_POST["date_time"];
        $user_id=$_POST["user_id"];
        $Quantity=$_POST["Quantity"];
        $Qun_type_id=$_POST["Qun_type_id"];
        $Don_type_id=$_POST["Don_type_id"];
        $py_type_id=$_POST["py_type_id"];
        $status=$_POST["status"];

	
        $sql="INSERT INTO donation_details (id, Don_id, date_time, user_id ,Quantity,Qun_type_id,Don_type_id,py_type_id, status) VALUES ('$id','$Don_id','$date_time' ,'$user_id', '$Quantity','$Qun_type_id','$Don_type_id','$py_type_id','$status')";
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
        $Don_id=$_POST["Don_id"];
        $date_time=$_POST["date_time"];
        $user_id=$_POST["user_id"];
        $Quantity=$_POST["Quantity"];
        $Qun_type_id=$_POST["Qun_type_id"];
        $Don_type_id=$_POST["Don_type_id"];
        $py_type_id=$_POST["py_type_id"];
        $status=$_POST["status"];

        $sql ="UPDATE donation_details SET Quantity='$Quantity',status='$status',id='$id' WHERE id='$id'";
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
        $Don_id=$_POST["Don_id"];
        $date_time=$_POST["date_time"];
        $user_id=$_POST["user_id"];
        $Quantity=$_POST["Quantity"];
        $Qun_type_id=$_POST["Qun_type_id"];
        $Don_type_id=$_POST["Don_type_id"];
        $py_type_id=$_POST["py_type_id"];
        $status=$_POST["status"];

        $sql ="DELETE FROM donation_details WHERE id = $id";
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