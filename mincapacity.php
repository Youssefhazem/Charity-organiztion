<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of MaxCapacity
 *
 * @author USER
 */
class MinCapacity extends StoreDecorator 
{
    public Store $ref;
    public function __construct(Store $x) {
        $this->ref=$x;
    }
    public function creat(Store $x) {
        
    }

    public function delete(Store $x) {
        
    }

    public function read(Store $x) {
        
    }

    public function search(Store $x) {
        
    }

    public function update(Store $x) {
        
    }
    
    public function Storing(/*Donation x*/ )
    {
        
    }

    public function CapactiyOfStore() 
    {
        return $this->ref->CapactiyOfStore()-1000;
    }
    //put your code here
}
