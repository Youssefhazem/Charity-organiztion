<?php

include 'File_typeModel.php';
class files
{
	public $id;
	public $file_frindly;
	public $file_path;
    public $file_type_id;
    public $user_id;
    public $file_Type_Object;


	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from files where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->type=$row["file_frindly"];	
            $this->name=$row["file_path"];
            $this->file_type_id =$row["file_type_id"];
            $this->user_id=$row["user_id"];
            //dont forget to make object
		}
	}
}
  $file_Type_Object = new file_type(4);
  echo($file_Type_Object->type);



?>