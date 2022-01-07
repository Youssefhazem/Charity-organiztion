<?php

class PaymentType
{
    public $id;
    public $type;
    public $pr_id;
    function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from payment_type where id=$id";
		$userDataSet =mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->type=$row["type"];			
		}
	}

}

class Payment
{
    public $id;
    public $date_time_don;
    public $reciver_id;
    public $manager_id;
    public $user_id;
    //public $PayDetailsopj;
    public $payTypeopj;
    function __construct($id)
	{
		if (!$id=="") 
        {
            define('SERVER', 'localhost');
            define('USERNAME', 'root');
            define('PASSWORD', '');
            define('DB_NAME', 'charity_org_db');

            $con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);
			$sql ="select * from payment where id=$id";
			$userDataSet =mysqli_query($con,$sql);
			if ($row= mysqli_fetch_array($userDataSet))
            {
				$this->date_time_don =$row["date_time_don"];
				$this->reciver_id =$row["reciver_id"];
				$this->manager_id =$row["manager_id"];
                $this->user_id =$row["user_id"];
                //$this->PayDetailsopj =new PaymentDetails(3);
                $this->payTypeopj =new PaymentType(3);
                

			}
		}
	}
}
    $payTypeob =new PaymentType(4);
    echo($payTypeob->type);




?>