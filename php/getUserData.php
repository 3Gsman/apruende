<?php
require('db.php');
session_start();
$hoy = getdate();

if(isset($_SESSION["ID"])){
  if($_SESSION["ID"]!=-1){
	$sel_query="SELECT * FROM `UserData` 
    			where `userID` = ".$_SESSION["ID"].";";
    
	$result = mysqli_query($con,$sel_query);
	
	if($row = mysqli_fetch_assoc($result)) {
		echo json_encode($row);
	} else {
    	echo -1;
    }
  } else {
   echo -1; 
  }
} else {
 	echo -1; 
}

mysqli_close($con);
?>