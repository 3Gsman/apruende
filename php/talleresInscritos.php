<?php
	session_start();
	require('db.php');
	
	$sel_query="SELECT * FROM Taller join inscripciones on Taller.IDTal=inscripciones.idTaller Where inscripciones.IdUser= ".$_SESSION['ID']." and ActiveTal=1;";
	$result = mysqli_query($con,$sel_query);
	
	$filas = "";
	
	while($row = mysqli_fetch_assoc($result)) {
      
        $filas .= "<div class='row w-100 mt-4 mr-3'>";
      	$filas .= "<div class='col'><div class='card'>";
		$filas .= "<div class='card-header'>";
		$filas .= "\t<h1>".$row["NombreTal"]."</h1></div>";
      	$filas .= "\t<div class='card-body'><p>".$row["DescripcionTal"]."</p> </div>";
		$filas .= "\n";
       	$filas .= '<div class="card-footer p-0 border-0">';
       	$filas .= $row["IDUsTal"];
       	$filas .='</div></div></div></div>';
       
      
	}
  	
	// se devuelve el resultado
	echo utf8_encode($filas);
?>

