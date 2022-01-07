<?php

include_once 'Translation_detailsModel.php';
class translation
{
	public $id;
	public $trans_name;
    public $first_code;
    public $scound_code;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from translation where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->trans_name =$row["trans_name"];
            $this->first_code=$row["first_code"];
            $this->scound_code=$row["scound_code"];	
		}
	}
}





?>