<?php

	require('db.php');

	session_start();

    $currentID = $_SESSION["ID"]; 

	$sel_query="SELECT propuesta.Name,UserData.Nombre,UserData.Apellidos,propuesta.IDProp,propuesta.Description,UserData.Email,UserData.userID FROM propuesta JOIN UserData ON propuesta.IDOwn = UserData.userID WHERE propuesta.IDProp =".$_GET['id'].";";
	$result = mysqli_query($con,$sel_query);
	
	$filas = "";
	while($row = mysqli_fetch_assoc($result)) {
      	$filas .= "<div class='row w-100'>";
		$filas .= "<div class='propBlock rounded d-block p-3 m-0 mb-3 w-100' id='propBlock".$row["IDProp"].">'";
      	$filas .= "<div class='col'><div class='card'>";
		$filas .= "<div class='card-header'>";
		$filas .= "\t<h2>".$row["Name"]."</h2></div>";
      	$filas .= "\t<div class='card-body'><p>Descripcion:</p><p>".$row["Description"]."</p> </div>";
      	$filas .= '<div class="card-footer p-10 border-10">';
      	$filas .= "\t<p>".$row["Nombre"]." ".$row["Apellidos"]."</p>";
      	$filas .= "\t<p>Contacto: ".$row["Email"]."@live.uem.es</p>";
      	
      	if($row["userID"] == $_SESSION['ID']){
  	$filas .= "<button onclick = '$.get(\"php/eliminarProp.php\",{\"idProp\":".$row['IDProp']."}); location.href=\"propuestas.php\";' type='button' class='btn btn-danger float-right' name='deleteCard'>Eliminar</button>";
  }
      	
		$filas .= "</div>\n</div></div></div>";
	}
	      
  	
	// se devuelve el resultado
	echo utf8_encode($filas);
?>
