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
        /*$ss=singletoon::getinstance();*/
        
        include_once 'Factorpay.php';
        $opj =new Factorpay();
        $opj->get_pay_methods('cach');
        /*
        include_once 'Donation.php';
        include_once 'DonateFood.php';
        include_once 'StoringFood.php';
        include_once 'Store.php';
        $x=new DonateFood();
        $opj=new Donation($x);
        $opj->identify();
        $opj2=new StoringFood();
        $opj2=new MaxCapacity();
        */
        ?>
    </body>
</html>
