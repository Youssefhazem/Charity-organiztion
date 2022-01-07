<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of StoringFood
 *
 * @author USER
 */
class StoringFood extends Store
{
     public function creat(store $x) {
         echo 'creat Food store successfly';
    }

    public function delete(store $x) {
         echo 'delete Food store successfly';
    }

    public function read(store $x) {
        echo 'read Food store successfly';
    }

    public function search(store $x) {
        echo 'find Food store successfly';
    }

    public function update(store $x) {
        echo 'update Food store successfly';
    }
    
    public function Storing(/*Donation x*/ )
    {
         echo 'Do storing to Food store';
    }

    public function CapactiyOfStore() 
    {
        return 10000;
    }
    //put your code here
}
