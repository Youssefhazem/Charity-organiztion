<?php


include_once 'Donation_type_optionsModel.php';

class donation_options
{
	public $id;
	public $name;
	public $type;
    public $Donation_Type_obj;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from donation_options where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->type=$row["name"];	
            $this->name=$row["type"];
            $this->UserTypeObj = new donation_type_options(4); 	
		}
	}
}


$Donation_Type_obj = new donation_type_options(4);
echo ($Donation_Type_obj->option_id);


?>





