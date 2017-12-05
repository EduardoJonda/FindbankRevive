<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
  xmlns:f="http://java.sun.com/jsf/core"
  xmlns:ui="http://java.sun.com/jsf/facelets"
  xmlns:h="http://java.sun.com/jsf/html">

<h:head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Bienvenido a Find Bank</title>
  <!-- Bootstrap core CSS-->
  <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
  <!-- Custom fonts for this template-->
<link rel="stylesheet" href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>">
  
  <!-- Custom styles for this template-->
  <link rel="stylesheet" href="<c:url value="/resources/css/sb-admin.css"/>">
 
  <style>
     
      #map {
        /* Tamaño del mapa */
        width: 100%;
        height: 500px;
      }
      #coords{width: 500px;}
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
      
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="welcome">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Mis Agentes</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="welcome2">
         <i class="fa fa-map-o"  ></i>
            <span class="nav-link-text">Map</span>
          </a>
        </li>
         
      </ul>
      <!--contenido del menu superior zembu-->
      <ul class="navbar-nav ml-auto">
      
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
        <li class="breadcrumb-item active">Map</li>
      </ol>
      <h1>Map</h1>
      <hr>
      <!-- Icon Cards-->
      <!--cart inicio-->
      <div class="row"> 

         <div class="container">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h3>Obtener coordenadas con un marcador</h3>  
          <button id="boton" class="btn">Ubicarme</button>
        </div>
        <div class="panel-body">
          <div id="map"></div>
        </div>
      </div> 
        </div>

      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
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
    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>



     <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/popper/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
    <!-- Core plugin JavaScript-->
     <script src="<c:url value="/resources/vendor/jquery/jquery-easing/jquery.easing.min.js"/>"></script>
    <!-- Custom scripts for all pages-->
     <script src="<c:url value="/resources/js/sb-admin.min.js"/>"></script>  
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
    s.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC0e42jFwmuaIqCQbYvpOfZN86ZsWpLd24&callback=initMap";
    // lo añadimos al documento (y se ejecuta automaticamente)
    document.querySelector("body").appendChild(s);
    // borra el script del documento (para evitar basura si se ejecuta multiples veces)
    s.remove();
}
</script>
</h:body>

</html>
