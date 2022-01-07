<?php

if ($_POST) {
    if (isset($_POST['login']) && $_POST['login'] == "Login") {
       
          include_once 'User.php';
          $user = new User();
          $user->setUsername($_POST['username']);
          $user->setPassword($_POST['password']);
          $result = $user->login($user);
          if ($result == true) {
          echo'<script>alert("user found")</script>';
          echo '<script>location.href="../welcome.php";</script>';
          } else {
          echo'<script>alert("error: user not found")</script>';
          echo '<script>location.href="../login.html";</script>';
          }
         



        
        $username = $_POST['username'];
        $password = $_POST['password'];
        include_once 'databaseConfig.php';
        global $link;
        $conn = $link;
       
        $sql = "select * from user where id='" . $username . "' and passwoerd='" . $password. "'";
       
        $res = $conn->query($sql);
       
        if ($res->num_rows > 0) {
            echo'<script>alert("user found")</script>';
            echo '<script>location.href="../welcome.php";</script>';
        } else {
            echo'<script>alert("error: user not found")</script>';
            echo '<script>location.href="../login.html";</script>';
        }
        
    }
} 
