<?php
	require('db.php');

	$sel_query="SELECT Taller.NombreTal,UserData.Nombre,UserData.Apellidos,Taller.IDTal FROM Taller JOIN UserData ON Taller.IDUsTal= UserData.userID WHERE Taller.ActiveTal = 1;";
	$result = mysqli_query($con,$sel_query);
	
	$filas = "";
	while($row = mysqli_fetch_assoc($result)) {
      	$filas .= "<div class='row w-100'><a class='w-100' href='tallerInfo.php?id=".$row["IDTal"]."'>";
		$filas .= "<div class='propBlocks rounded d-block p-3 m-0 mb-3 w-100' id='propBlock".$row["IDTal"].">'";
		$filas .= "\t<p>".$row["NombreTal"]."</p>";
      	$filas .= "\t<p>".$row["Nombre"]." ";
      	$filas .= $row["Apellidos"]."</p>";
		$filas .= "</div>\n</a></div>";
	}
  	
	// se devuelve el resultado
	echo utf8_encode($filas);
?>
