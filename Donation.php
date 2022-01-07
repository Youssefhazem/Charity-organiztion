<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Donation
 *
 * @author USER
 */
 include_once 'I_donate.php';
class  Donation {
    public $id;
    public $reciver_id;
    public $manager_id;
    public $user_id;
    public I_donate $ref;
  
    function __construct(I_donate $x) {
        $this->ref=$x;    
    }
    public function identify() 
    {
        $this->ref->donate();
    }
    public function adddonation(I_donate $x) {
        echo 'donation is add ';
        
    }
    public function updatedonation(I_donate $x) {
        echo 'donation is update ';
        
    }
    public function deletedonation(I_donate $x) {
        echo 'donation is delete ';
        
    }
    public function searchdonation(I_donate $x) {
        echo 'donation is delete ';
        
    }
    
    //put your code here
}
