<?php


class PaymentDetails
{
    public $id;
    public $pay_id;
    public $user_id;
    public $pay_type_id;
    public $Quantity;
    public $Qun_type_id;
    public $status;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from payment_detaild where id=$id";
		$userDataSet =mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {

			$this->id =$row["id"];
			$this->pay_id =$row["pay_id"];
            $this->user_id =$row["user_id"];
            $this->pay_type_id =$row["pay_type_id"];
            $this->Quantity =$row["Quantity"];
            $this->Qun_type_id =$row["Qun_type_id"];
            $this->status =$row["status"];
			
		}
	}




}








?>