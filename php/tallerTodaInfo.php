<?php
require('db.php');
session_start();

$sel_query="SELECT Taller.NombreTal,UserData.Nombre,UserData.Apellidos,Taller.IDTal,Taller.IDUsTal,Taller.DescripcionTal,UserData.Email,UserData.userID FROM Taller JOIN UserData ON Taller.IDUsTal = UserData.userID WHERE Taller.IDTal =".$_GET['id'].";";
$result = mysqli_query($con,$sel_query);

while($row = mysqli_fetch_assoc($result)) {
  $filas .= "<div class='row w-100'>";
  $filas .= "<div class='propBlock rounded d-block p-3 m-0 mb-3 w-100' id='propBlock".$row["IDTal"].">'";
  $filas .= "<div class='col'><div class='card'>";
  $filas .= "<div class='card-header'>";
  $filas .= "\t<h2>".$row["NombreTal"]."</h2></div>";
  $filas .= "\t<div class='card-body'><p>Descripcion:</p><p>".$row["DescripcionTal"]."</p> </div>";
  $filas .= '<div class="card-footer p-10 border-10">';
  $filas .= "\t<p>".$row["Nombre"]." ".$row["Apellidos"]."</p>";
  $filas .= "\t<p>Contacto: ".$row["Email"]."@live.uem.es</p>";
  if(isset($_SESSION['ID']) and $_SESSION['ID']!=-1 and $_SESSION['ID']!=$row["IDUsTal"]){
    $sel_query="SELECT * FROM inscripciones WHERE IdUser =".$_SESSION['ID']." and idTaller=".$row["IDTal"].";";
    $result2 = mysqli_query($con,$sel_query);
    if($row2 = mysqli_fetch_assoc($result2)) {
      $filas .= "\t<button onClick='console.log(\"HOLA\");$.get(\"php/desinscribirse.php\",{\"idTal\":".$row["IDTal"]."});window.location.reload(false);' class='rounded px-3 py-1 float-right btn btn-danger'> Abandonar </button>";
    } else {
      $filas .= "\t<button onClick='console.log(\"HOLA\");$.get(\"php/inscribirse.php\",{\"idTal\":".$row["IDTal"]."});window.location.reload(false);' class='rounded px-3 py-1 float-right btn btn-success'> Inscribirse </button>";
    }
  }elseif($row["userID"] == $_SESSION['ID']){
  	$filas .= "<button onclick = '$.get(\"php/eliminarTal.php\",{\"idTal\":".$row['IDTal']."}); location.href=\"talleres.php\";' type='button' class='btn btn-danger float-right' name='deleteCard'>Eliminar</button>";
  }
  
  
  $filas .= "</div>\n</div></div></div>";
}

//window.location.reload(false);
// se devuelve el resultado
echo utf8_encode($filas);
?>
