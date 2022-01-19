<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class StoringBlood implements Command
{
    public function __construct(Store $store)
    {
        $this->store=$store;
    }
    public function execute()
    {
        $this->store->StoreBlood();
    }
    public function undo()
    {
        $this->store->StoreBlood();
    }
}