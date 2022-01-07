<?php

include_once 'Payment_type_options.php';
class payment_options
{
	public $id;
	public $name;
	public $type;
    public $Payment_optionsObj;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from payment_options where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->type=$row["name"];	
            $this->name=$row["type"];
            $this->Payment_optionsObj = new payment_type_options(1);
		}
	}
}


$Paymneet_opt = new payment_type_options(1) ;
echo ($Payment_optionsObj->option_id);



?>