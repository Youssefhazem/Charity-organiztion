<?php
require "charity organization db"; 
class donation{

  private $donationID ;
  private $donationname;
  private $donationtype;
  private $donationquantity;


function get donationID()
{
  return $this->donationID;
}

function get donationname()
{
  return $this->donationname;
}

function get donationType()
{
  return $this->donationType;
}

function get donationquantity()
{
  return $this->donationquantity;
}

//

function set donationID($donationID)
{
  $this->userID =$userID;
}


function set donationname($donationname)
{
  $this->donationname =$donationrname;
}

function set donationType($donationType)
{
  $this->donationType =$donationType;
}

function set donationquantity($donationquantity)
{
  $this->donationquantity =$donationquantity;
}


//

function showdonationData($userType){
        
        global $connection;

      $stmt = $connection->prepare("SELECT * FROM user WHERE userType = '$userType'");

      $stmt->execute();

        $row = $stmt->fetchAll();
        
        return $row;
    }
  }
