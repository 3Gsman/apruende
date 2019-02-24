<?php
	session_start();
	require('db.php');
	
	$sel_query="SELECT * FROM Taller Where IDUsTal= ".$_SESSION['ID']." and ActiveTal=1;";
	$result = mysqli_query($con,$sel_query);
	
	$filas = "";
	
	while($row = mysqli_fetch_assoc($result)) {
      
        $filas .= "<div class='row w-100 mt-4 mr-3'>";
      	$filas .= "<div class='col'><div class='card'>";
		$filas .= "<div class='card-header'>";
		$filas .= "\t<h1>".$row["NombreTal"]."</h1></div>";
      	$filas .= "\t<div class='card-body'><p>".$row["DescripcionTal"]."</p> </div>";
		$filas .= "\n";
       	$filas .= '<div class="card-footer p-0 border-0"><div id="accordion'.$row["IDTal"].'"><div class="card"><div class="card-header"><a class="card-link" data-toggle="collapse" href="#collapse'.$row["IDTal"].'">';
       	$filas .= ' Alumnos Inscritos</a></div>
    <div id="collapse'.$row["IDTal"].'" class="collapse" data-parent="#accordion'.$row["IDTal"].'"><div class="card-body"><ul>';
       
       	$sel_query="SELECT * FROM UserData join inscripciones on UserData.userID=inscripciones.IdUser where inscripciones.idTaller = ".$row["IDTal"].";";
		$SecondResult = mysqli_query($con,$sel_query);
         while($row2 = mysqli_fetch_assoc($SecondResult)) {
				$filas .='<li>'.$row2["Email"].'</li>';
         }
       	$filas .='</ul></div></div></div></div></div></div></div>';
       
       
      $filas .= "</div>";
      
	}
  	
	// se devuelve el resultado
	echo utf8_encode($filas);
?>

