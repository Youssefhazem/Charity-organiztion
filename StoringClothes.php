<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of StoringClothes
 *
 * @author USER
 */
class StoringClothes extends Store
{
      public function creat(store $x) {
         echo 'creat Clothes store successfly';
    }

    public function delete(store $x) {
         echo 'delete Clothes store successfly';
    }

    public function read(store $x) {
        echo 'read Clothes store successfly';
    }

    public function search(store $x) {
        echo 'find Clothes store successfly';
    }

    public function update(store $x) {
        echo 'update Clothes store successfly';
    }
    
    public function Storing(/*Donation x*/ )
    {
         echo 'Do storing to Clothes store';
    }

    public function CapactiyOfStore() 
    {
        return 5000;
    }
}
