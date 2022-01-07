<?php


class ProgramDetails
{
    public $id;
    public $pro_type_id;
    public $user_id;
    public $Num_pationt;
    public $Num_volunteer;
    public $startdate;
    public $enddate;
    function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from program_details where id=$id";
        $userDataSet =mysqli_query($con,$sql);

		if ($row = mysqli_fetch_array($userDataSet))
        {

			$this->id =$id;
			$this->pro_type_id =$row["pro_type_id"];
            $this->user_id =$row["user_id"];
            $this->Num_pationt =$row["Num_pationt"];
            $this->Num_volunteer =$row["Num_volunteer"];
            $this->startdate =$row["startdate"];
            $this->enddate =$row["enddate"];
		}
	}


}







?>