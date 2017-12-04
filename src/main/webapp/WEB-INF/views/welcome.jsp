<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:f="http://java.sun.com/jsf/core"
  xmlns:ui="http://java.sun.com/jsf/facelets"
  xmlns:h="http://java.sun.com/jsf/html">
<h:head>
  <meta charset="utf-8">    
  
  
<link rel="stylesheet" href="<c:url value="/resources/css/rotating-card.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>"> 
<link rel="stylesheet" href="<c:url value="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css"/>"> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Bienvenido a Find Bank</title>
  <!-- Bootstrap core CSS--> 
   
  
  <link rel="stylesheet" href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resources/css/sb-admin.css"/>">
  
   <style type="text/css">  
#cajapadre { 
  display: flex;
  justify-content: center;
}   
#modalcontenido{ 
  position: relative;
  width: 850px;
} 
 #map {
        /* Tamaño del mapa */
        width: 90%;
        height: 400px;
 }
 #coords{
  width: 500px;}
#cajon3{
 justify-content: center 
} 
</style>
  
</h:head>

<h:body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="welcome">Find Bank</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
            
        
        <hr>
        
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Mis Agentes">
          <a class="nav-link" href="welcome">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Mis Agentes</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Mapa">
          <a class="nav-link" href="welcome2">
          <i class="fa fa-map-o"  ></i>
            <span class="nav-link-text">Map</span>
          </a>
        </li>
         
      </ul>
      <!--contenido del menu superior zembu-->
      <ul class="navbar-nav ml-auto">
      <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            icono vista <i class="fa fa-fw fa-envelope"></i> 
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span> 
             
         Buscador-->
       
        <!--buscador fin-->
        <!--logout-->
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Cerrar Sesión</a>
        </li>
        <!--logout fin-->
      </ul>
      <!--contendio del menu superior fin-->
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol >
    <br/> <br/>
      </ol>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="welcome">Find Bank</a>
        </li>
        <li class="breadcrumb-item active">Mis Agentes</li>
      </ol>
      
      <h1>Agentes</h1>
      <hr>
      <!-- Icon Cards-->
      <!--cart inicio-->
  
      <div class="row">  
        
        <!-- recarga todos los agentes en tarjetas-->
         <c:if test="${!empty listOfAgentes}">
         <c:forEach items="${listOfAgentes}" var="agentes">
         <div class="col-md-4 col-sm-6">
             <div class="card-container manual-flip">
                <div class="card">
                    <div class="front">
                        <div class="cover">
                          <img class="" src="<c:url value="/resources/img/rotating_card_thumb.png"/>"/> 
                        </div>
                        <div class="user">
                             <img class="img-circle" src="<c:url value="/resources/img/rotating_card_profile2.png"/>"/> 
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name">${agentes.nombre}</h3>
                                <p class="profession">${agentes.tipo}</p>
                                <p class="text-center"></p>
                            </div>
                            <div class="footer">
                                <button class="btn btn-simple" onclick="rotateCard(this)">
                                    <i class="fa fa-mail-forward"></i> Ver Detalles
                                </button>
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    <div class="back">
                        <div class="header">
                            <h5 class="motto">Detalles</h5>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h4 class="text-center">${agentes.descripcion}</h4>
                           <center>
                                  <table >
                                            
                                   <tr>
                                    <td height="10px"></td> 
                                   </tr>                       
                                  <tr>
                                    <td>Dirección :</td>
                                    <td>${agentes.direccion}</td> 
                                  </tr> 
                                   <tr>
                                    <td><br></td>
                                    
                                  </tr>
                                  <tr>
                                    <td>Horario :</td>
                                    <td>${agentes.horario}</td> 
                                  </tr>
                                   <tr>
                                    <td><br></td> 
                                  </tr> 
                                  <tr>
                                    <td>Operatividad :</td>
                                      <td><input type="hidden" id="agesistem" value=${agentes.sistema} ></></td>
                                    <td>
                                    <input id=${agentes.id} type="checkbox" data-toggle="toggle" data-on="Activo" data-off="Desactivo" data-onstyle="success" data-offstyle="danger"">
                                    </td>
                                       <td><a width="10px" href="<c:url value='/editarAgenteUser/${agentes.id}' />" ><button class="btn btn-secondary" rel="Find " title="Editar">
                                <i class="fa fa-pencil fa-fw"></i> Modificar
                            </button> </a></td>
                         
                                    
                                  </tr>  
                                  </table>  
</center>
 <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
         <script src="<c:url value="https://code.jquery.com/jquery-3.2.1.slim.min.js"/>"></script>
    <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"/>"></script>
         <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"/>"></script>
     <script src="<c:url value="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"/>"></script>
                             <script> 				
                             var variable1 = ${agentes.sistema};
								  if(variable1==1){
									  var variable = ${agentes.id};
									  $("#${agentes.id}").bootstrapToggle()
									 $("#${agentes.id}").bootstrapToggle('on')
									  
								  }else{
									  $("#${agentes.id}").bootstrapToggle('off'); 
								  }
								  $("#${agentes.id}").bootstrapToggle('disable')
								 
							</script>



                            </div>
                        </div>
                        <div class="footer">
                            <button class="btn btn-simple" rel="tooltip" title="Flip Card" onclick="rotateCard(this)">
                                <i class="fa fa-reply"></i> Back
                            </button> 
                               
                        </div>
                    </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
        
        </c:forEach>
         </c:if>
        <!-- recarga todos los agentes en tarjetas :fin-->
        
        
        
            <input type="hidden" id="txt" value=${textomodal} ></>
        
        
        
        
        
        
        
        
        
        
 

 			<div class="col-md-4 col-sm-6" >
                <div class="card-container manual-flip" >
                    <div class="card" >
                    <div class="front"  >
                        <div class="cover" style="background-color:#e9ecef;"  > 
                      
                        </div>
                         <div class="user"  style="background-color:white;" >
                           <a class="nav-link" data-toggle="modal" data-target="#crearCardModal"  > 
                            <img id="imgadd" src="<c:url value="/resources/img/addimg.png"/>"/>
                          </a>
                        </div>
                    </div> <!-- end front panel -->  </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
            
        </div> <!-- end col sm 3 -->
 

        <!--card fin-->  
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Find Bank © Website 2017</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-power-off" aria-hidden="true"></i>   Advertencia</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Usted acaba de oprimir el boton "Cerrar Sesión". Desea cerrar sesión de todas maneras?</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Cerrar sesión</a>
          </div>
        </div>
      </div>
    </div>
  <!-- crear card Modal--> 
   <div class="modal fade" id="crearCardModal" tabindex="-1" role="dialog" aria-labelledby="eModalLabel" aria-hidden="false">
  <div class="modal-dialog" role="document">
  
  
    <div class="modal-content" id="modalcontenido" >
      <div class="modal-header">
        <h5 class="modal-title" id="eModalLabel">Nuevo Agente</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <div id="cajapadre">
      
       <div class="container">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3>Obtener coordenadas con un marcador</h3>
        </div>
        <div class="panel-body">
          <button id="boton" class="btn">Ubicarme</button>
          <div id="map"></div>
        </div>
      </div><br>
      <p><input type="hidden" id="coords" />
 
       
        </div> 
      
      
       <!-- dentro del Modal con formulario--> 
        <form:form method="post" modelAttribute="agentes" action="/c15/addAgenteUser">
	<table class="table"> 
		<tr>
		<form:hidden path="id" />
          <td><form:label path="nombre">Nombre:</form:label></td>
          <td><form:input class="form-control" path="nombre" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
		  <td><form:label path="direccion">Direccion:</form:label></td>
          <td><form:input class="form-control" path="direccion" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="lat">lat:</form:label></td>
          <td><form:input class="form-control" path="lat" id="lat" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="lng">lng:</form:label></td>
          <td><form:input class="form-control" path="lng" id="long" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="tipo">tipo:</form:label></td>
          <td><form:input class="form-control" path="tipo" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="sistema">sistema:</form:label></td>
          <td><form:input class="form-control" path="sistema" size="30" maxlength="30"></form:input></td>
          <td><form:hidden path="seguridad"/></td>
		</tr>
	 
		<tr>
		  <td><form:label path="horario">horario:</form:label></td>
          <td><form:input class="form-control" path="horario" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="descripcion">descripcion:</form:label></td>
          <td><form:input class="form-control" path="descripcion" size="30" maxlength="30"></form:input></td>
		</tr> 
		  
		
      </div>
	</table> 
	
	
	 <div class="modal-footer">
      <input type="submit" class="btn btn-primary" value="Aceptar" />
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        </div> 
        
</form:form>
          <!-- dentro del Modal con mapa--> 
       
        
		</div> 
         
      </div>
      
    </div>
  </div>
</div>


    <!-- Formulario de edit operatividad del agente en modal -->
   <div class="modal fade" id="exampleModal4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel4" aria-hidden="true">
  <div class="modal-dialog" role="document">
  
   <div class="modal-content" id="modalcontenido" >
   
      <div class="modal-header">
       
       <center> <h3 class="modal-title" id="exampleModalLabel4">Editar Agente</h3>  
        </button> </center>
      </div>
      </center>
      <div class="modal-body"> 
    
       <!-- dentro del Modal con formulario--> 
       <form:form method="post" modelAttribute="agentes" action="/c15/addAgenteUser">
	<table class="table"> 
		<tr>
		<form:hidden path="id" />
          <td><form:hidden path="nombre"/></td>
           <td><form:hidden path="direccion"/></td>
           <td><form:hidden path="lat"/></td>
		  <td><form:hidden path="lng"/></td>
          <td><form:hidden path="tipo"/></td> 
           <td><form:hidden path="seguridad"/></td>
           <td><form:hidden path="horario"/></td>
           <td><form:hidden path="descripcion"/></td> 
		</tr> 
		<tr>
		  <td><form:label path="sistema">Sistema:</form:label></td>
          <td><form:input class="form-control" path="sistema" size="30" maxlength="30"></form:input></td>
		</tr> 
		  
		
      </div>
	</table> 
	
	
	 <div class="modal-footer">
      <input type="submit" class="btn btn-primary" value="Aceptar" />
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        </div> 
        
</form:form>
 
</div>
     
    </div>
  </div>
</div>


    <!-- Bootstrap core JavaScript-->

      
         
    
    

    
    <!-- Core plugin JavaScript--> 
    <!-- Custom scripts for all pages--> 
     
  
<script type="text/javascript">
    $().ready(function(){
        $('[rel="tooltip"]').tooltip();
    });
    function rotateCard(btn){
        var $card = $(btn).closest('.card-container');
        console.log($card);
        if($card.hasClass('hover')){
            $card.removeClass('hover');
        } else {
            $card.addClass('hover');
        }
    }
 
</script>

<script>
    var marker;          //variable del marcador
    var coords = {};    //coordenadas obtenidas con la geolocalización
    //Funcion principal
    initMap = function () {
    //usamos la API para geolocalizar el usuario
    navigator.geolocation.getCurrentPosition(
      function (position){
        coords =  {
          lng: position.coords.longitude,
          lat: position.coords.latitude
        };
        setMapa(coords);  //pasamos las coordenadas al metodo para crear el mapa
      },function(error){console.log(error);});
    }
    function setMapa (coords) {   
    //Se crea una nueva instancia del objeto mapa
    var map = new google.maps.Map(document.getElementById('map'),{
      zoom: 13,
      center:new google.maps.LatLng(coords.lat,coords.lng),
    });
    //Creamos el marcador en el mapa con sus propiedades -12.044167, -76.952900
    //position pondremos las mismas coordenas que obtuvimos en la geolocalización
    marker = new google.maps.Marker({
      map: map,
        draggable: true,
        animation: google.maps.Animation.DROP,
        title: 'Aqui es',
        position: new google.maps.LatLng(coords.lat,coords.lng),
      });
      //agregamos un evento al marcador junto con la funcion callback al igual que el evento dragend que indica 
      //cuando el usuario suelta el marcador
      marker.addListener('click', toggleBounce);
      
      marker.addListener( 'dragend', function (event) {
        //escribimos las coordenadas de la posicion actual del marcador dentro del input #coords
        document.getElementById("coords").value = this.getPosition().lat()+","+ this.getPosition().lng();
        document.getElementById("lat").value = this.getPosition().lat();
        document.getElementById("long").value = this.getPosition().lng();
      });
    }
    //callback al hacer clic en el marcador lo que hace es quitar y poner la animacion BOUNCE
    function toggleBounce() {
      if (marker.getAnimation() !== null) {
        marker.setAnimation(null);
      } else {
        marker.setAnimation(google.maps.Animation.BOUNCE);
      }
    }
    // Carga de la libreria de google maps 
  </script>
  <script>
  if($("#txt").val()=='verdadero'){
	    $('#exampleModal4').modal('show'); 
	    }   
   
  </script>
<script>
// seleccionamos el enlace 
var boton = document.getElementById("boton"); 
// cuando se pulsa en el enlace
boton.onclick = function(e) {
    // evitamos la acción por defecto
    e.preventDefault();
    // creamos una etiqueta script
    var s = document.createElement("script");
    // indicamos en el atributo src el fichero que quieres cargar
    //s.src = "https://maps.googleapis.com/maps/api/js?callback=initMap"; 
    s.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC0e42jFwmuaIqCQbYvpOfZN86ZsWpLd24&callback=initMap";
    // lo añadimos al documento (y se ejecuta automaticamente)
    document.querySelector("body").appendChild(s);
    // borra el script del documento (para evitar basura si se ejecuta multiples veces)
    s.remove();
}
</script>
 
</h:body> 
</html>