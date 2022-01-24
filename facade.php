<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of facade
 *
 * @author زياد
 */

 include_once 'DonateBlood.php';
include_once 'DonateMoney.php';
include_once 'DonateFood.php';
include_once 'Donateclothes.php';

class facade {

    public $mon;
    public $blo;
    public $foo;
    public $cloth;
    public $type2;
    public function _get_donate_methods($type) 
    {
        $this->type2 =$type;
        
        $this->mon=new DonateMoney();
        $this->blo=new DonateBlood();
        $this->foo=new DonateFood();
        $this->cloth=new DonateClothes();

    }
    public function donatemoney()
    {
        if($this->type2 == 'money')
    {
        $this->mon->donate();
    }
    }
    public function donateblood()
    {
        if($this->type2 == 'blood')
        {
        $this->blo->donate();
        }
    }
    public function donateclothes()
    {
        if($this->type2 == 'clothes')
        {
        $this->cloth->donate();
        }
    }
    public function donatefood()
    {
        if($this->type2 == 'food')
        {
        $this->foo->donate();
        }
    }
}
