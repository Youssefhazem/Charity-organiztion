<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of DBproxyyyy
 *
 * @author osama
 */

include_once 'GetQuery.php';
include_once 'CharityDB.php';
class DBproxyyyy implements CharityDB {
    public GetQuery $GQ ;
    public bool $IsGood = false;
    
    public function __construct($UserType) {
        
        if($UserType=="Admin" || $UserType=="ManagerOfDonations" || $UserType=="ManagerOfVolunteer")
        {
            //echo 'hhhhhhh';
            $this->IsGood = true;
            $this->GQ = new GetQuery();
        }
        else
        {
           
        }
    }
    public function DoQuery($QueryStatment) {
       
        if($this->IsGood == true)
        {
            $this->GQ->DoQuery($QueryStatment);
        }
        else
        {
            if(stristr($QueryStatment,"Delete") == "Delete")
            {
                 echo 'You do not Have permission';
            }
            else
            {
                $this->GQ->DoQuery($QueryStatment);
            }
        }
        
        
    }

}
