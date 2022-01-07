<?php

include'PageModel.php';

if(isset($_REQUEST["id"]))
{
    $page_opj = new page($_REQUEST["id"]);
    
    echo($page_opj->html);


}

?>