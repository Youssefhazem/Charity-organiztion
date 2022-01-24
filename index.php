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

        include_once 'DBproxyyyy.php';
        include_once 'CharityDB.php';
        include_once 'GetQuery.php';
        $X = new DBproxyyyy("Admin");
        $X->DoQuery("Delete");                
       ?>
    </body>
</html>
