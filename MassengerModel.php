<?php

class massenger
{
	public $id;
	public $messag_id;
    public $user_id;
    public $date_time;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from massenger where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->messag_id =$row["messag_id"];
            $this->user_id=$row["user_id"];
            $this->date_time=$row["date_time"];	
		}
	}
}




?>