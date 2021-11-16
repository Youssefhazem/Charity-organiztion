<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of PayVodafoneCash
 *
 * @author osama
 */
class PayVodafoneCash implements Ipay {
    
    public  $PhoneNum;
    public  $SendCodePhoneNum;
    public  $DonorID;
    public function pay() {
        
    }
    public function ValidVodafoneCash($Pn)
    {
        if($this->PhoneNum==Pn)
        {
            echo '';
        }
        else
        {
            echo ''; 
        }
    }
   

}
