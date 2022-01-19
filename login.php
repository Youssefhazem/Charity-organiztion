<?php
 include_once 'connection.php';
 $db=new connect();
 $con= $db->connectToDB();

if(isset($_POST['login']))
{
    $email=$_POST['logemail'];
    $passwored=$_POST['logpass'];
    
    if($email!=null and $passwored!=null)
    {
        $count=0;
      
		$sql ="select * from user ";
		$userDataSet =mysqli_query($con,$sql);
        while($row=mysqli_fetch_array($userDataSet))
        {
            if($row>0)
            {
                if($row['email']==$email and $row['passwoerd']==$passwored)
                {
                    $count=1;
                }
                else
                {

                }
            }
            
        }
        if($count>0)
        {
            echo '<script>location.href="../user.html";</script>';
        }
        else
        {
            echo '<script>alert("Not Fined User");</script>';//notefication
            echo '<script>location.href="../login.html";</script>';
        }
       
    }
    else
    {
        echo '<script>alert("please inter your email and passwerd");</script>';//notefication
        echo '<script>location.href="../login.html";</script>';
    }

}
?>