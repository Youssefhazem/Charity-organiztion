<?php
require "charity organization db"; 
class  donor extends donation 
{
	function adddonation($donationID,$donationname,$donationtype,$donationquantity)
	{
		   global $connection;

      $stmt = $connection->prepare("INSERT INTO donation(donationID,donationname,donationtype,donationquantity)VALUES('$donationID','$donationname','$donationtype','$donationquantity')");

      $stmt->execute();

        $row = $stmt->fetchAll();
        
        return $row;
	}

		function deletedonation($userID)
	{
		   global $connection;


      $stmt = $connection->prepare("DELETE FROM donation where userID = '$userid'");

      $stmt->execute();
	}
}

	function updatedonation($donationname,$donationtype,$donationquantity)
	{
		   global $connection;


      $stmt = $connection->prepare("UPDATE donation SET donationname = '$donationname', donationtype = 'donationtype' , donationquantity = '$donationquantity' where userID ='UserID'");

      $stmt->execute();
      }
