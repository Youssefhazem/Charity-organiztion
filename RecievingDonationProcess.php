<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DonationProcess
 *
 * @author DELL
 */

include_once 'RecieveDonationstate.php';
include_once 'CheckDonationstate.php';
include_once 'Approvestate.php';
include_once 'CancelDonationstate.php';
class RecievingDonationProcess {
    public $CurrStatee ;
    
    public function __construct(){
        $this->CurrStatee = 0;
    }
    public function ChangeState()
    {
        if($this->CurrStatee==0)
        {
            $ReDonSt = new RecieveDonationstate();
            $ReDonSt->DoProcess();
            $this->CurrStatee=1;
        }
        if($this->CurrStatee==1)
        {
            $ChDonSt = new CheckDonationstate();
            $ChDonSt->DoProcess();
             $this->CurrStatee=2;
        }
        if($this->CurrStatee==2)
        {
            $ADonSt = new Approvestate();
            $ADonSt->DoProcess();
             $this->CurrStatee=3;
        }
        if($this->CurrStatee==3)
        {
            $CanDonSt = new CancelDonationstate();
            $CanDonSt->DoProcess();
             $this->CurrStatee=0;
        }
        
    }

    
    
    
}

    