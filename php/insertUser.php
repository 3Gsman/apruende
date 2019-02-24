<?php
require('db.php');
$currentDir = getcwd();
$uploadDirectory = "../uploads/";

$sel_query = "INSERT into `UserLogin` (`Username`,`Password`) VALUES ('".strtolower($_REQUEST['email'])."','".$_REQUEST['pwd']."')";
echo  $sel_query;  
$result = mysqli_query($con,$sel_query);

if (!file_exists($_FILES['pic']['tmp_name']) || !is_uploaded_file($_FILES['pic']['tmp_name'])) 
{
  $sel_query = "INSERT into `UserData` (`Nombre`,`Apellidos`,`Grado`,`Telefono`,`Email`,`userID`) VALUES ('".$_REQUEST['name']."','".$_REQUEST['apellidos']."','".$_REQUEST['Grado']."',".$_REQUEST['telefono'].",'".$_REQUEST['email']."',".mysqli_insert_id($con).")";
  echo $sel_query;
  $result = mysqli_query($con,$sel_query);
}
else
{
  $errors = []; // Store all foreseen and unforseen errors here

  $fileExtensions = ['jpeg','jpg','png']; // Get all the file extensions

  $fileName = $_FILES['pic']['name'];
  $fileSize = $_FILES['pic']['size'];
  $fileTmpName  = $_FILES['pic']['tmp_name'];
  $fileType = $_FILES['pic']['type'];
  $fileExtension = strtolower(end(explode('.',$fileName)));

  $uploadPath = $uploadDirectory ; 

  $i="0";
  $uploadPath = $uploadDirectory . $i . '.' . $fileExtension;
  while(file_exists($uploadPath)==true){
    $i=$i+1;
    $uploadPath = $uploadDirectory . $i . '.' . $fileExtension;
  }


  if(move_uploaded_file($fileTmpName, $uploadPath)){
    $sel_query = "INSERT into `UserData` (`Nombre`,`Apellidos`,`Grado`,`Telefono`,`Email`,`userID`, `foto`) VALUES ('".$_REQUEST['name']."','".$_REQUEST['apellidos']."','".$_REQUEST['Grado']."',".$_REQUEST['telefono'].",'".$_REQUEST['email']."',".mysqli_insert_id($con).",'".$i . '.' . $fileExtension."')";
    echo $sel_query;
  } else {
    $sel_query = "INSERT into `UserData` (`Nombre`,`Apellidos`,`Grado`,`Telefono`,`Email`,`userID`, `foto`) VALUES ('".$_REQUEST['name']."','".$_REQUEST['apellidos']."','".$_REQUEST['Grado']."',".$_REQUEST['telefono'].",'".$_REQUEST['email']."',".mysqli_insert_id($con).",'')";
    echo $sel_query;
  }

  $result = mysqli_query($con,$sel_query); 
}
header( "Location: https://proyectofinal.es/" );

?>