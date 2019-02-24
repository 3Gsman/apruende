
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>Talleres - aprUEnde</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,900" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">

    <script src="js/jquery.js"></script>

    <link rel="icon" href="img/logoIco.ico">

  </head>
  <body>

    <div class="jumbotron text-center bg-dark rounded-0" style="margin-bottom:0">
      <img src="img/logo1.png" class="mainLogo" alt="Logo">
    </div>

    <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark bg-dark py-2">
      <div class="container">
        <a class="navbar-brand" href="index.php"><img src="img/sqlogo.png" class="smallLogo" alt="Logo"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar1">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbar1">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="index.php">Home</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="talleres.php">Talleres</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="propuestas.php">Propuestas</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="row">
      <div class="col">
        <div id="userDataCollapsed_parent" class="d-block d-md-none float-right">

          <button class="bg-danger m-2 p-2 rounded" data-toggle="collapse" data-target="#userDataCollapsed">Log</button>

          <div id="userDataCollapsed" class="collapse bg-danger">
            <div class="formLog">

              <form>

                <div class="input-group mb-3">

                  <img src="img/userLogo.png" class="logLogo" alt="ULogo">
                  <input type="number" placeholder="# de expediente" class="form-control" id="LoguserCollapsed">

                </div>

                <div class="input-group mt-3">

                  <img src="img/pwLogo.png" class="logLogo" alt="ULogo">
                  <input type="password" class="form-control" id="LogpassCollapsed">

                </div>
                <div class="text-center">
                  <button type="button" class="btnLog btn-outline-dark">Log In</button>

                  <button type="button" class="btnLog btn-outline-dark mt-2" onclick="location.href='https://proyectofinal.es/userForm.html';">Sign In</button>
                </div>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">

      <div class="row">

        <div class="col-12 col-md-8">

          <div id="mainProp" class="divPropuestas">	

            <div class="row">
              <div class="col-sm-8">

                <div class="mainText">
                  <h3>Todos los talleres</h3>
                </div>

              </div>
              <div class="col-sm-4">
                <div class="btnAdd">
                  <button onclick="location.href='tallerForm.php'" type="button" class="btn btn-outline-dark">Añadir taller</button>
                </div>
              </div>
            </div>
          </div>

          <?php include('php/talleresDb.php'); ?>


        </div>

        <div class="col-sm-4 d-none d-md-block ">

          <div class= "userData">

            <div class="formLog">

              <form>

                <div class="input-group mb-3">

                  <img src="img/userLogo.png" class="logLogo" alt="ULogo">
                  <input type="number" placeholder="# de expediente" class="form-control" id="Loguser">

                </div>

                <div class="input-group mt-3">

                  <img src="img/pwLogo.png" class="logLogo" alt="ULogo">
                  <input type="password" class="form-control" id="Logpass">

                </div>

                <button type="button" class="btnLog btn-outline-dark">Log In</button>

                <button type="button" class="btnLog btn-outline-dark mt-2" onclick="location.href='https://proyectofinal.es/userForm.html';">Sign In</button>

              </form>

            </div>

            <!--
<img src="img/placeholder.png" class="profilePic" alt="placeholder">
<ul class="listUser list-group">
<li class="list-group-item">Nombre y apellidos</li>
<li class="list-group-item">Grado universitario</li>
<li class="list-group-item">Modo de contacto</li>
<li class="list-group-item">Actividades:</li>
<li class="list-group-item">
<button type="button" class="btn btn-outline-dark disabled">Impartidas</button>
</li>
<li class="list-group-item">
<button type="button" class="btn btn-outline-dark disabled">Inscritas</button>
</li>
</ul>
-->
          </div>

        </div>



      </div>

    </div>

    <div class="jumbotron text-center">

      <p>Developed by <a href = "https://www.linkedin.com/in/luis-alfonso-ferrer-p%C3%A9rez-b8655638/" class = "footLink" target="_blank">Luis Alfonso Ferrer Perez</a> and <a href = "https://www.linkedin.com/in/germangarciagarcia/" class = "footLink" target="_blank">German García García</a></p>

    </div>

  </body>
</html>
