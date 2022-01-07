<?php

class program_type_options
{
	public $id;
	public $program_type_id;
	public $option_id;


	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from program_type_options where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
			$this->program_type_id=$row["program_type_id"];
            $this->option_id=$row["option_id"];	
		}
	}
}















?>