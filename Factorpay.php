<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Factorpay
 *
 * @author USER
 */
class Factorpay {
    public function get_pay_methods($type) 
    {
        if($type==null)
        {
            return null;
        }
        elseif ($type=='card') 
        {
            //return new mastercard();
            echo ' is bay by cards ';
        }
        elseif ($type=='cach') 
        {
            echo ' is bay by cach ';
            //return new cach();
        }
        elseif ($type=='visa') 
        {
            //return new visa();
            echo ' is bay by visa ';
        }
        return null;
    }
    //put your code here
}
