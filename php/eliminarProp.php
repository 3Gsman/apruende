<?php
session_start();
require('db.php');
  if(isset($_SESSION["ID"])){
    if(isset($_REQUEST["idProp"])){
      $sel_query="update propuesta set Active = 0 where IDProp =" .$_REQUEST['idProp'].";";

      $result = mysqli_query($con,$sel_query);
    }
  }

mysqli_close($con);

?>