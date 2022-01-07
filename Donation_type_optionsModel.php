<?php

class donation_type_options
{
	public $id;
	public $option_id;
	public $donation_type_id;


	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from donation_type_options where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->option_id=$row["option_id"];	
            $this->donation_type_id=$row["donation_type_id"];

		}
	}
}




?>