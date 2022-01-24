<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of RecieveDonationstate
 *
 * @author DELL
 */
include_once 'Donationstate.php';
class RecieveDonationstate implements Donationstate {
    //put your code here
    public function DoProcess() {
        echo 'Donation Is recieved';
        echo '<br>';
    }

}
