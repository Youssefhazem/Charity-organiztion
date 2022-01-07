<?php

include_once 'Program_type_optionsModel.php';


class program_options
{
	public $id;
	public $name;
	public $type;
    public $program_Type_obj;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from progam_options where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->type=$row["name"];	
            $this->name=$row["type"];
            $this->program_Type_obj = new program_type_options(2); 	
		}
	}
}


$program_Type_obj = new program_type_options(2);
echo ($program_Type_obj->option_id);








?>