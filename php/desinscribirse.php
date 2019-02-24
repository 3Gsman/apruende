<?php
session_start();
require('db.php');
  if(isset($_SESSION["ID"])){
    if(isset($_REQUEST["idTal"])){
      $sel_query="delete FROM `inscripciones` 
                  where `IdUser` = ".$_SESSION["ID"]." 
                  and `idTaller` = ".$_REQUEST['idTal'].";";

      $result = mysqli_query($con,$sel_query);
    }
  }

mysqli_close($con);

?>