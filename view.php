<?php
    
    class viwe
    {
        
        function showuserdetails($objuser)
        {
            echo '<script><table></script>';

                echo '<script><tr></script>';

                    echo '<script><th> payment id: </th></script>';
                    echo '<script><th> user id: </th></script>';
                    echo '<script><th> payment type id: </th></script>';
                    echo '<script><th> status: </th></script>';

                echo '<script></tr></script>';

                echo '<script><tr></script>';
                
                    echo '<script><th>'.$objuser->id.'</th></script>';
                    echo '<script><th>'.$objuser->pay_id.'</th></script>';
                    echo '<script><th>'.$objuser->user_id.'</th></script>';
                    echo '<script><th>'.$objuser->pay_type_id.'</th></script>';
                    echo '<script><th>'.$objuser->Quantity.'</th></script>';
                    echo '<script><th>'.$objuser->Qun_type_id.'</th></script>';
                    echo '<script><th>'.$objuser->status.'</th></script>';

                echo '<script></tr></script>';

            echo '<script></table>';
        }

    }

    ?>



