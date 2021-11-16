<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PayVisa
 *
 * @author osama
 */
class PayVisa implements Ipay {
    
    
    public $VisaNum;
    private $VisaPass;
    public $DonorID;
    
    

    public function pay() {
        
        $CV = $this->ChecKVisaPay($Vn, $Vp);
        if($CV == true)
        {
            echo 'payed by Visa successed';
        }
        else
        {
            echo 'payed by Visa successed';
        }
        
    }
    public function ChecKVisaPay($Vn,$Vp)
    {
        if($this->VisaNum==Vn)
        {
            if($this->VisaPass==Vp)
            {
                echo 'Visa is valid';
                return true;
            }
            else
            {
                echo 'Visa is not valid';
                return false;
            }
        }

    }

}
