<?php

class DonationDetails
{
    public $id;
	public $Don_id;
	public $date_time;
	public $user_id;
    public $Quantity;
    public $Qun_type_id;
    public $Don_type_id;
    public $py_type_id;
    public $status;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity organization db');

        $con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from donation_details where id=$id";
		$userDataSet =mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {

			$this->id =$row["id"];
			$this->Don_id =$row["Don_id"];
            $this->date_time =$row["date_time"];
            $this->user_id =$row["user_id"];
            $this->Quantity =$row["Quantity"];
            $this->Qun_type_id =$row["Qun_type_id"];
            $this->Don_type_id =$row["Don_type_id"];
            $this->py_type_id =$row["py_type_id"];
            $this->status =$row["status"];
			
		}
	}
}
class Doantion
{
	public $id;
	public $date_time_don;
	public $reciver_id;
	public $manager_id;
	public $user_id;
    public $DonDetailsobj;



	function __construct($id)
	{
		if (!$id=="") 
        {
            define('SERVER', 'localhost');
            define('USERNAME', 'root');
            define('PASSWORD', '');
            define('DB_NAME', 'charity_org_db');

            $con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);
			$sql ="select * from donation where id=$id";
			$userDataSet =mysqli_query($con,$sql);
			if ($row= mysqli_fetch_array($userDataSet)) {
				$this->date_time_don =$row["date_time_don"];
				$this->reciver_id =$row["reciver_id"];
				$this->manager_id =$row["manager_id"];
                $this->user_id =$row["user_id"];
                //$this->DonDetailsobj =new DonationDetails(4);

			}
		}
	}
}
$DonDetailobj =new DonationDetails(4);
echo ($DonDetailobj->id);


?>