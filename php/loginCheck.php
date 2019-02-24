<?php
require('db.php');
  if(isset($_REQUEST["user"])){
    if(isset($_REQUEST["pass"])){
      $sel_query="SELECT `ID` FROM `UserLogin` 
                  where `Username` = LOWER('".$_REQUEST['user']."') 
                  and `Password` = '".$_REQUEST['pass']."';";

      $result = mysqli_query($con,$sel_query);

      if($row = mysqli_fetch_assoc($result)) {
		session_start();
        $_SESSION["loginTime"]=getdate()[0];
        $_SESSION["ID"]=$row['ID'];
          echo 23;
      } else {
          echo -23;
      }
    } else {
     echo -2; 
    }
  } else {
      echo -1; 
  }

mysqli_close($con);
?>