<?php

class page
{
	public $id;
	public $frindly_name;
	public $link_address;
    public $html;


	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from page where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
			$this->frindly_name=$row["frindly_name"];
            $this->link_address=$row["link_address"];
            $this->html=$row["html"];
		}
	}
}






?>