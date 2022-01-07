<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of StoreDecorator
 *
 * @author USER
 */
abstract class StoreDecorator extends Store{
    public function creat(store $x) {
         echo 'creat store successfly';
    }

    public function delete(store $x) {
         echo 'delete store successfly';
    }

    public function read(store $x) {
        echo 'read store successfly';
    }

    public function search(store $x) {
        echo 'find store successfly';
    }

    public function update(store $x) {
        echo 'update store successfly';
    }
    
    public function Storing(/*Donation x*/ )
    {
         echo 'Do storing to store';
    }

    public function CapactiyOfStore() 
    {
        return 0000;
    }
    
}
