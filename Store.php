<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Store
 *
 * @author USER
 */
include_once 'Donation.php';
abstract class Store implements CRUD{
    public $report=null;
    public $id;
    public $name=null;
    
      public function creat(Store $x) {
         echo 'creat store successfly';
    }

    public function delete(Store $x) {
         echo 'delete store successfly';
    }

    public function read(Store $x) {
        echo 'read store successfly';
    }

    public function search(Store $x) {
        echo 'find store successfly';
    }

    public function update(Store $x) {
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
