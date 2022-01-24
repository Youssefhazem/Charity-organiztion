<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Approvestate
 *
 * @author DELL
 */
include_once 'Donationstate.php';
class Approvestate implements Donationstate {
    
    public $IsApproved = false;


    public function DoProcess()
    {
       echo 'The Donation Approving process is pendinggg';
       echo '<br>';       
    }

    
}
