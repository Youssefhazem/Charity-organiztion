<?php
class connect
{
	private $server = "localhost";
    private $username = "root";
    private $password = "";
    private $dbname = "charity_org_db";

    public function connectToDB() {
        $link = mysqli_connect($this->server, $this->username, $this->password, $this->dbname);
        if ($link)
            return $link;
        else {
            die("ERROR: Could not connect. " . mysqli_connect_error());

            return false;
        }
    }
}
?>
