<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of singletoon
 *
 * @author USER
 */
class singletoon {
    private static $instance =null;
    

    public static function getinstance($param) 
    {
        if(!isset(self::$instance))
        {
            self::$instance=new singletoon();
        }
        return self::$instance;
    }
    //put your code here
}
