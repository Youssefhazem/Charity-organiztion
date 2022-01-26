<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of adaptor
 *
 * @author 20106
 * 
 */
include_once 'report.php';
 include_once 'report_type.php';
 include_once 'word.php';
include_once 'pdf.php';
class adaptor implements report{

    public $ref;
     public function getref($reff) {
        
            $this->ref=$reff();
     }
 public function _construct($type) {
        if($type=='word')
        {
          $this->ref=new word();
          echo 'word';
        }
         if($type=='pdf')
        {
             $this->ref=new pdf();
        }
    }

    public function sendrepo($type) {
        echo 'this is adaptor';
    }
}
    