<?php
require "charity organization db";
class  volunteermaneger extends user{

	function addvolunteer($userID,$username,$useremail,$useraddress,$userpassword,$usertype,$volunteerrole)
	{
		   global $connection;


      $stmt = $connection->prepare("INSERT INTO user(userID,username,useremail,useraddress,userpassword,usertype,volunteerrole)VALUES('$userID','$username','$useremail','$useraddress','$userpassword','$usertype' ,' $volunteerrole')");

      $stmt->execute();

        $row = $stmt->fetchAll();
        
        return $row;
	}

		function deletevolunteer($userID)
	{
		   global $connection;


      $stmt = $connection->prepare("DELETE FROM user where userID = '$userid'");

      $stmt->execute();
	}
}

	function updatevoluanteer($userid,$volunteerrole)
	{
		   global $connection;


      $stmt = $connection->prepare("UPDATE user SET volunteerrole = '$volunteerrole', where userID ='UserID'")

      $stmt->execute();
    }
