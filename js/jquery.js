$('document').ready(function(){
  $.get('../php/getUserData.php',
        function(data, status){
    if(status && data!=-1){
      console.log(data);
      var user = JSON.parse(data);
      var imageSrc="img/placeholder.png";
      if(user['foto']!=""){
        imageSrc="uploads/"+user['foto'];
      }
      $('#userDataCollapsed').html('<div class="row "><div class="col p-3" ><button type="button" class="btn btn-outline-dark float-right mr-3 btnLogOut">Log out</button></div></div><div class="text-center"><img src=\"'+imageSrc+'\" class=\"profilePic\" alt=\"placeholder\"></div><ul class=\"listUser list-group\"><li class="list-group-item text-center">'+user['Nombre']+' '+user['Apellidos']+'</li><li class="list-group-item text-center">'+user['Grado']+'</li><li class="list-group-item text-center">'+user['Email']+'</li> <li class="list-group-item text-center">Actividades:</li><li class="list-group-item text-center"> <button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/impartidas.php\'">Impartidas</button></li><li class="list-group-item text-center"><button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/inscritas.php\'">Inscritas</button></li></ul>');
      $('.userData').html('<div class="row "><div class="col p-3" ><button type="button" class="btn btn-outline-dark float-right mr-3 btnLogOut">Log out</button></div></div><div class="text-center"><img src=\"'+imageSrc+'\" class=\"profilePic\" alt=\"placeholder\"></div><ul class=\"listUser list-group\"><li class="list-group-item text-center">'+user['Nombre']+' '+user['Apellidos']+'</li><li class="list-group-item text-center">'+user['Grado']+'</li><li class="list-group-item text-center">'+user['Email']+'</li> <li class="list-group-item text-center">Actividades:</li><li class="list-group-item text-center"> <button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/impartidas.php\'">Impartidas</button></li><li class="list-group-item text-center"><button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/inscritas.php\'">Inscritas</button></li></ul>');
      $('.btnLogOut').click( function() {$.get('../php/destroySession.php'); window.location.href ='https://proyectofinal.es/';});
    }});
  $('.btnLog').click( function(){
    usuario=$('#LoguserCollapsed').val();
    pass=$('#LogpassCollapsed').val();
    if($('.userData').is(':visible')){
      usuario=$('#Loguser').val();
      pass=$('#Logpass').val();
    }
    $.get('../php/loginCheck.php',{'user':usuario,
                                   'pass':pass}, 
          function(data, status){
      if(status){
        console.log(data);
        if(data==23){
          $.get('../php/getUserData.php',
                function(data, status){
            if(status && data!=-1){
              console.log(data);
              var user = JSON.parse(data);
              var imageSrc="img/placeholder.png";
              if(user['foto']!=""){
                imageSrc="uploads/"+user['foto'];
              }
              $('#userDataCollapsed').html('<div class="row "><div class="col p-3" ><button type="button" class="btn btn-outline-dark float-right mr-3 btnLogOut">Log out</button></div></div><div class="text-center"><img src=\"'+imageSrc+'\" class=\"profilePic\" alt=\"placeholder\"></div><ul class=\"listUser list-group\"><li class="list-group-item text-center">'+user['Nombre']+' '+user['Apellidos']+'</li><li class="list-group-item text-center">'+user['Grado']+'</li><li class="list-group-item text-center">'+user['Email']+'</li> <li class="list-group-item text-center">Actividades:</li><li class="list-group-item text-center"> <button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/impartidas.php\'">Impartidas</button></li><li class="list-group-item text-center"><button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/inscritas.php\'">Inscritas</button></li></ul>');
              $('.userData').html('<div class="row "><div class="col p-3" ><button type="button" class="btn btn-outline-dark float-right mr-3 btnLogOut">Log out</button></div></div><div class="text-center"><img src=\"'+imageSrc+'\" class=\"profilePic\" alt=\"placeholder\"></div><ul class=\"listUser list-group\"><li class="list-group-item text-center">'+user['Nombre']+' '+user['Apellidos']+'</li><li class="list-group-item text-center">'+user['Grado']+'</li><li class="list-group-item text-center">'+user['Email']+'</li> <li class="list-group-item text-center">Actividades:</li><li class="list-group-item text-center"> <button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/impartidas.php\'">Impartidas</button></li><li class="list-group-item text-center"><button type="button" class="btn btn-outline-dark" onclick="window.location.href=\'https://proyectofinal.es/inscritas.php\'">Inscritas</button></li></ul>');
              $('.btnLogOut').click( function() {$.get('../php/destroySession.php'); window.location.href ='https://proyectofinal.es/';});
            }});}}});});

});

