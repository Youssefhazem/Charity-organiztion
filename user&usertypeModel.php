<?php

class UserType
{
	public $id;
	public $type;
	public $pr_id;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from user_type where id=$id";
		$userDataSet =mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {

			$this->id =$id;
			$this->type =$row["type"];
				//$this->pr_id=$pr_id;
		}
	}
}
class User
{
	public $id;
	public $Fname;
	public $Lname;
	public $email;
	public $user_type_id;
	public $user_address_id;
	public $passwoerd;
	public $Dateofbarht;
	public $UserTypeObj;
	


	function __construct($id)
	{
		if (!$id=="") 
        {
            define('SERVER', 'localhost');
            define('USERNAME', 'root');
            define('PASSWORD', '');
            define('DB_NAME', 'charity organization db');

            $con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);
			$sql ="select * from user where id=$id";
			$userDataSet =mysqli_query($con,$sql);
			if ($row= mysqli_fetch_array($userDataSet)) {
				$this->Fname =$row["Fname"];
				$this->Lname =$row["Lname"];
				$this->email =$row["email"];
				$this->passwoerd =$row["passwoerd"];
				$this->Dateofbarht =$row["Dateofbarht"];
				$this->id =$id;
				$this->UserTypeObj = new UserType(4); 	
			}
		}
	}
}

    $UserTypeob = new UserType(4);
    echo ($UserTypeob->type);

?>