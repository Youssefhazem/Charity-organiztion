<?php
require "charity organization db"; 
class user{

  private $userID ;
  private $username;
  private $useremail;
  private $useraddress;
  private $userpassword;
  private $userType;
  private $dateofbirth;


function get userID()
{
  return $this->userID;
}

function get username()
{
  return $this->username;
}

function get useremail()
{
  return $this->useremail;
}

function get useraddress()
{
  return $this->useraddress;
}

function get userpassword()
{
  return $this->userpassword;
}

function get userType()
{
  return $this->userType;
}

function get dateofbirth()
{
  return $this->dateofbirth;
}

//

function set userID($userID)
{
  $this->userID =$userID;
}


function set username($username)
{
  $this->username =$username;
}


function set useremail($useremail)
{
  $this->useremail =$useremail;
}


function set useraddress($useraddress)
{
  $this->useraddress =$useraddress;
}


function set userpassword($userpassword)
{
  $this->userpassword =$userpassword;
}

function set userType($userType)
{
  $this->userType =$userType;
}

function set dateofbirth($dateofbirth)
{
  $this->dateofbirth =$dateofbirth;
}


//

function showUsersData($userType){
        
        global $connection;

      $stmt = $connection->prepare("SELECT * FROM users WHERE userType = '$userType'");

      $stmt->execute();

        $row = $stmt->fetchAll();
        
        return $row;
    }
  }
