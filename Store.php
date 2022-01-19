<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Store
{
    private $store=[];
    public function store()
    {
     return $this->store;   
    }
    public function storingfood()
    {
        $this->store='storingfood';
    }
      public function storingClothes()
    {
        $this->store='storingClothes';
    }
      public function storingBlood()
    {
        $this->store='storingBlood';
    }
      public function storingMedicine()
    {
        $this->store='storingMedicine';
    }
      public function storingHomeapplicantes()
    {
        $this->store='storingHomeapplicantes';
    }
    
    
}
