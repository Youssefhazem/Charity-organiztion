<?php
require "charity organization db";
class  financialmaneger extends user{

	function addaccountant($userID,$username,$useremail,$useraddress,$userpassword,$usertype,$volunteerrole)
	{
		   global $connection;


      $stmt = $connection->prepare("INSERT INTO user(userID,username,useremail,useraddress,userpassword,usertype,volunteerrole)VALUES('$userID','$username','$useremail','$useraddress','$userpassword','$usertype' ,' $volunteerrole')");

      $stmt->execute();

        $row = $stmt->fetchAll();
        
        return $row;
	}

		function deleteaccountant($userID)
	{
		   global $connection;


      $stmt = $connection->prepare("DELETE FROM user where userID = '$userid'");

      $stmt->execute();
	}
}

	function checkaccounantwork($userid)
	{
		   global $connection;


      $stmt = $connection->prepare("SELECT * FROM user WHERE userID = '$userid'")

      $stmt->execute();
    }
