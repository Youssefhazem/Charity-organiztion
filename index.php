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
        include_once 'facade.php';
        

        $donatee=new facade();
        $donatee->_get_donate_methods('money');
        $donatee->donateblood();
        $donatee->donateclothes();
        $donatee->donatefood();
        $donatee->donatemoney();
        
        

        ?>
    </body>
</html>
