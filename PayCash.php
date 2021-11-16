<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PayCash
 *
 * @author osama
 */
class PayCash implements Ipay {
    
    
    public $amountOfCash;
    public $DonorID = 1;
    public $CashType =null;
    public $bool =true;
    public  function  CheckCashType($x)
    {
        if($this->CashType == x)
        {
            echo 'We have this type of cash';
            return true;
        }
        else 
        {
            echo 'We donot have this type of cash';
            return false;
        }
    }

    public function pay() {
        $ct = CheckCashType(x);
        
        
        if($ct==true)
        {
            echo 'Payed by cash successed';
        }
        else
        {
            echo 'Payed by cash not successed';
        }
        
    }

}
