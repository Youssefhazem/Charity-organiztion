<?php

include_once 'user.php';
class customized_reports
{
	public $id;
	public $report_name;
    public $user_id;
    public $sql_statment;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from customized_reports where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->report_name=$row["report_name"];	
            $this->user_id=$row["user_id"];	
            $this->sql_statment=$row["sql_statment"];	
		}
	}
}





?>