<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of StoringBlood
 *
 * @author USER
 */
class StoringBlood extends Store{
    
    //put your code here
    public function creat(store $x) {
         echo 'creat Blood store successfly';
    }

    public function delete(store $x) {
         echo 'delete Blood store successfly';
    }

    public function read(store $x) {
        echo 'read Blood store successfly';
    }

    public function search(store $x) {
        echo 'find Blood store successfly';
    }

    public function update(store $x) {
        echo 'update Blood store successfly';
    }
    
    public function Storing(/*Donation x*/ )
    {
         echo 'Do storing to Blood store';
    }

    public function CapactiyOfStore() 
    {
        return 9000;
    }

}
