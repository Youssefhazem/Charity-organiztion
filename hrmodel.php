<?php
require "charity organization db"; 
class HR extends user{

	function addemployee($userID,$username,$useremail,$useraddress,$userpassword,$usertype)
	{
		   global $connection;


      $stmt = $connection->prepare("INSERT INTO user(userID,username,useremail,useraddress,userpassword,usertype)VALUES('$userID','$username','$useremail','$useraddress','$userpassword','$usertype')");

      $stmt->execute();

        $row = $stmt->fetchAll();
        
        return $row;
	}

		function deleteemployee($userID)
	{
		   global $connection;


      $stmt = $connection->prepare("DELETE FROM user where userID = '$userid'");

      $stmt->execute();
	}
}

	function updateemployee($username,$useremail,$useraddress,$userpassword)
	{
		   global $connection;


      $stmt = $connection->prepare("UPDATE user SET username = '$username', useremail = 'useremail' , useraddress = '$useraddress' , userpassword = 'userPassword' where userID ='UserID'");

      $stmt->execute();
      }





   
