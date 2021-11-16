<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Donor
 *
 * @author osama
 */
class Donor implements User {
    public function Login()
    {
        
    }

    public function SignUp() {
        
    }
    
    public function Donate($Don,$Donatype)
    {
        $x =true;

            if ($Donatype ==1)
            {
                echo 'Food Donate';
            }
            if($Donatype==2)
            {
                echo 'clothes Donate';
            }
            if ($Donatype ==3)
            {
                echo 'Blood Donate';
            }
            if ($Donatype ==4)
            {
                echo 'Money Donate';
                $this->CheckPayType();
            }
             
    }
    
    public function CheckPayType($Pay_type)
    {
        
        if($Pay_type ==1)
        {
            echo 'Pay by cash';
        
        }
        if($Pay_type ==2)
        {
            echo 'Pay by Visa';
        
        }
        if($Pay_type ==3)
        {
            echo 'Pay by VodafoneCash';
        
        }
        if($Pay_type ==4)
        {
            echo 'Pay by Fawry';
        
        }
        
    }

}
