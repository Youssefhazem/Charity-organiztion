<?php

include_once 'WordModel.php';

class translation_detaild
{
	public $id;
	public $trans_id;
    public $word_id;
    public $trans_word_id;

	function __construct($id)
	{
        define('SERVER', 'localhost');
        define('USERNAME', 'root');
        define('PASSWORD', '');
        define('DB_NAME', 'charity_org_db');

        $con = mysqli_connect(SERVER, USERNAME, PASSWORD, DB_NAME);
		$sql ="select * from translation_detaild where id=$id";
		$userDataSet= mysqli_query($con,$sql);
		if ($row= mysqli_fetch_array($userDataSet)) 
        {
			$this->id =$row["id"];
            $this->trans_id =$row["trans_id"];
            $this->word_id=$row["word_id"];
            $this->trans_word_id=$row["trans_word_id"];	
		}
	}
}


?>