<?php
session_start();
require('db.php');
  if(isset($_SESSION["ID"])){
    if(isset($_REQUEST["idTal"])){
      $sel_query="insert into `inscripciones` (IdUser , idTaller)
                  VALUES (".$_SESSION["ID"].", 
                  ".$_REQUEST['idTal'].");";

      $result = mysqli_query($con,$sel_query);
    }
  }

mysqli_close($con);

?>