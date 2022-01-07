<?php
include_once 'connection.php';

    $db=new connect();
    $con= $db->connectToDB();
    
    if (isset($_POST['Save'])) 
    {
        $id=$_POST["id"];
        $pay_id=$_POST["pay_id"];
        $user_id=$_POST["user_id"];

        $pay_type_id=$_POST["pay_type_id"];
        $Quantity=$_POST["Quantity"];
        $Qun_type_id=$_POST["Qun_type_id"];
        
        $status=$_POST["status"];
        $payment_type_options_id=$_POST["payment_type_options_id"];

	
        $sql="INSERT INTO payment_detaild (id, pay_id ,user_id, pay_type_id, Quantity,Qun_type_id,status,payment_type_options_id) VALUES ('$id', '$pay_id' ,'$user_id', '$pay_type_id', '$Quantity','$Qun_type_id','$status','$payment_type_options_id')";
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
        $pay_id=$_POST["pay_id"];
        $user_id=$_POST["user_id"];
        $pay_type_id=$_POST["pay_type_id"];
        $Quantity=$_POST["Quantity"];
        $Qun_type_id=$_POST["Qun_type_id"];
        $status=$_POST["status"];
        $payment_type_options_id=$_POST["payment_type_options_id"];


        $sql ="UPDATE payment_detaild SET Quantity='$Quantity' WHERE id='$id'";
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
        $pay_id=$_POST["pay_id"];
        $user_id=$_POST["user_id"];
        $pay_type_id=$_POST["pay_type_id"];
        $Quantity=$_POST["Quantity"];
        $Qun_type_id=$_POST["Qun_type_id"];
        $status=$_POST["status"];
        $payment_type_options_id=$_POST["payment_type_options_id"];

        $sql ="DELETE FROM payment_detaild WHERE id = $id";
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