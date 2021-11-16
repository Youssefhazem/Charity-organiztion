<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        
       <?php
        include_once 'User.php';
        include_once 'Admin.php';
        include_once 'HR.php';
        
       $xx =new Admin();
       $xx ->Login();
       $Xy = new HR();
       $Xy->Login();
       
       
        
                        
        ?>
    </body>
</html>
