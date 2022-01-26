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
        include_once 'report.php';
        include_once 'repo.php';
        include_once 'report_type.php';
        $opject =new repo();
        $opject->sendrepo('handwritten');
        $opject->sendrepo('print');
        $opject->sendrepo('pdf');
        $opject->sendrepo('word');

        
         ?>
    </body>
</html>
