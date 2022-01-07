<?php
define('SERVER', 'localhost');
define('USERNAME', 'root');
define('PASSWORD', '');
define('DB_NAME', 'charity organization db');

$con = mysqli_connect( SERVER, USERNAME, PASSWORD, DB_NAME);

if($con===false)
{
    echo "ERROR: Could not connect.".mysqli_connect_error();
}

?>