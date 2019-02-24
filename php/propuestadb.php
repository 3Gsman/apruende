<?php
	require('db.php');

	$sel_query="SELECT propuesta.Name,UserData.Nombre,UserData.Apellidos,propuesta.IDProp FROM propuesta JOIN UserData ON propuesta.IDOwn = UserData.userID where propuesta.Active=1;";
	$result = mysqli_query($con,$sel_query);
	
	$filas = "";
	while($row = mysqli_fetch_assoc($result)) {
      	$filas .= "<div class='row w-100'><a class='w-100' href='propuestaInfo.php?id=".$row["IDProp"]."' onclick='propShowInfo(".$row["IDProp"].");'>";
		$filas .= "<div class='propBlocks rounded d-block p-3 m-0 mb-3 w-100' id='propBlock".$row["IDProp"].">'";
		$filas .= "\t<p>".$row["Name"]."</p>";
      	$filas .= "\t<p>".$row["Nombre"]." ";
      	$filas .= $row["Apellidos"]."</p>";
		$filas .= "</div>\n</a></div>";
	}
  	
	// se devuelve el resultado
	echo utf8_encode($filas);
?>
