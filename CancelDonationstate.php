<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of CancelDonationstate
 *
 * @author DELL
 */
include_once 'Donationstate.php';
class CancelDonationstate  implements Donationstate {
    
    public function DoProcess() {
        echo 'Donation cancel process is pending';
        echo '<br>';        
    }

}
