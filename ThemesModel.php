<?php

class thems
{
    public $id;
    public $name;
    public $html_thems;
    public $pr_id;
    public $posation_id;
    function __construct($id)
    {
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');


        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from thems where id=$id";
		$userDataSet= mysqli_query($con,$sql);
        if($row= mysqli_fetch_array($userDataSet))
        {
            $this->id = $row["id"];
            $this->name =$row["name"];
            $this->html_thems =$row["html_thems"];
           // $this->pr_id=$row["pr_id"];
           $this->posation_id=$row["posation_id"];

        }
    }

}





?>