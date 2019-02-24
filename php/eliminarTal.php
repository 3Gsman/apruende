<?php
session_start();
require('db.php');
  if(isset($_SESSION["ID"])){
    if(isset($_REQUEST["idTal"])){
      $sel_query="update Taller set ActiveTal = 0 where IDTal =" .$_REQUEST['idTal'].";";

      $result = mysqli_query($con,$sel_query);
    }
  }

mysqli_close($con);

?>