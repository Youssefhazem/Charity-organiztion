<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of a
 *
 * @author 20106
 */
include_once 'report.php';
include_once 'adaptor.php';

class repo implements report{

    public $ref;

    //put your code here
    public function sendrepo($type) {
        if($type == 'handwritten')
        {
            echo 'handwitten';
        }
        if($type == 'print')
        {
            echo 'print';
        }
        elseif($type == 'word')
        {
           $this->ref=new adaptor();
        }
        elseif($type == 'pdf')
        {
           $this->ref=new adaptor();
        }
           
    }

}
