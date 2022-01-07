<?php



class Program
{
    public $id;
    public $manager_id;
    public $voln_manager_id;
    public $user_id;
	function __construct($id)
	{
		define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

		
		$con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from program where id=$id";
		$userDataSet =mysqli_query($con,$sql);
		
		if ($row = mysqli_fetch_array($userDataSet))
		{
			$this->id =$id;
			$this->manager_id = $row["manager_id"];
			$this->voln_manager_id= $row["voln_manager_id"];
			$this->user_id= $row["user_id"];

		}


	}

}
class ProgramType
{
	public $id;
	public $type;
	public $pr_id;
	function __construct($id)
	{

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from program_type where id=$id";
		$userDataSet =mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->type=$row["type"];			
		}
	}

}




 

?>