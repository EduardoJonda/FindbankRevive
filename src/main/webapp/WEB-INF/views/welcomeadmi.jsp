<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
  <title>Administrador de Find Bank</title>
  
     <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.3.3.7.min.css"/>">
	
	<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script> 
	 <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"></script>
	
  <!-- Bootstrap core CSS-->
   <link rel="stylesheet" href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>">
  <!-- Custom fonts for this template-->
  <link rel="stylesheet" href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>">
  <!-- Custom styles for this template-->
  <link rel="stylesheet" href="<c:url value="/resources/css/sb-admin.css"/>">
  <style>
  .modal-content {
  margin-top: 200px;
  }
  </style>
</h:head>

<h:body class="fixed-nav sticky-footer bg-dark" id="page-top">
  <!-- Navigation-->
   
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="/c15/administrador"  style="font-size:18px;">Find Bank</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
         
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="/c15/administrador">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text"  style="font-size:18px;">Agentes</span>
          </a>
        </li>
        
      </ul>
      <!--contenido del menu superior zembu-->
      <ul class="navbar-nav ml-auto">
   
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i  style="font-size:18px;" class="fa fa-fw fa-sign-out"></i>Cerrar Sesión</a>
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
       <ol >
    <br/> <br/>
      </ol>
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="/administrador"   style="font-size:15px;"><strong>Find Bank</strong></a>
        </li>
        <li class="breadcrumb-item active"  style="font-size:15px;"><strong>Agentes</strong></li>
      </ol>
      <h1>Agentes</h1>
      <hr>
      <!-- Formulario de edit modal-->
   <div class="modal fade" id="crearCardModal" tabindex="-1" role="dialog" aria-labelledby="eModalLabel" aria-hidden="false">
  <div class="modal-dialog" role="document">
  
   <div class="modal-content" id="modalcontenido" >
   
      <div class="modal-header">
       
       <center> <h3 class="modal-title" id="eModalLabel">Editar Agente</h3>  
        </button> </center>
      </div>
      </center>
      <div class="modal-body"> 
    
       <!-- dentro del Modal con formulario--> 
        <form:form method="post" modelAttribute="agentes" action="/c15/addAgente">
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
          <td><form:input class="form-control" path="lat" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="lng">lng:</form:label></td>
          <td><form:input class="form-control" path="lng" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="tipo">tipo:</form:label></td>
          <td><form:input class="form-control" path="tipo" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="sistema">sistema:</form:label></td>
          <td><form:input class="form-control" path="sistema" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="seguridad">seguridad:</form:label></td>
          <td><form:input class="form-control" path="seguridad" size="30" maxlength="30"></form:input></td>
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
 
</div>
     
    </div>
  </div>
</div> <!-- -->
          
       
      <!--dato que se muestra al ingresar a la url de 'edit' y asi poder validarlo 
        y mostrar el modal--> 
 		<input type="hidden" id="txt" value=${textomodal} ></>
      
      <!--cart inicio-->
      <div class="card mb-3">
        <div class="card-header">
          <i style="font-size:17px;" class="fa fa-table"></i><strong style="font-size:16px;"> Lista de Agentes</strong></div>
        <div class="card-body">
          <div class="table-responsive">
           <c:if test="${!empty listOfAgentes}">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"  style="font-size:16px;">
              <thead>
                <tr>
                  <th style="font-size:20px;">Id</th>
                  <th style="font-size:20px;">Nombre</th>
                  <th style="font-size:20px;">Dirección</th>
                  <th style="font-size:20px;">Lat</th>
                  <th style="font-size:20px;">Lng</th>
                  <th style="font-size:20px;">Tipo</th>
                  <th style="font-size:20px;">Sistema</th>
                  <th style="font-size:20px;">Seguridad</th>
                  <th style="font-size:20px;">Horario</th>
                  <th style="font-size:20px;">Descripcion</th>
                  <th colspan="2"></th> 
                </tr>
              </thead>
               
              <tbody> 

                <c:forEach items="${listOfAgentes}" var="agentes">
				<tr>
					<td style="font-size:16px;">${agentes.id}</td>
					<td style="font-size:16px;">${agentes.nombre}</td>
					<td style="font-size:16px;">${agentes.direccion}</td>
					<td style="font-size:16px;">${agentes.lat}</td>
					<td style="font-size:16px;">${agentes.lng}</td>
					<td style="font-size:16px;">${agentes.tipo}</td>
					<td style="font-size:16px;">${agentes.sistema}</td>
					<td style="font-size:16px;">${agentes.seguridad}</td>
					<td style="font-size:16px;">${agentes.horario}</td>
					<td style="font-size:16px;">${agentes.descripcion}</td>
                  <!--<td><button class="btn btn-secondary">Modificar</button></td>  <td><button type="button"  class="btn btn-info btn-lg" data-toggle="modal" data-target="#crearCardModal">Edit</button></td>
                  <td><button class="btn btn-danger">Eliminar</button></td>-->
                  <td  style="font-size:20px;"><a class="btn btn-secondary" href="<c:url value='/updateAgente/${agentes.id}' />" ><strong style="font-size:16px;" >Editar</strong></a></td>
                  
			      <td  style="font-size:16px;"><a class="btn btn-danger" href="<c:url value='/deleteAgente/${agentes.id}' />" ><strong style="font-size:16px;" >Delete</strong></a></td>
                </tr>
				</c:forEach>
                
              </tbody>
            </table>
            </c:if>
          </div>
        </div>
        <div class="card-footer small text-muted"  style="font-size:18px;">Updated yesterday at 11:59 PM</div>
      </div>
        

        <!--card fin-->  
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small  style="font-size:18px;">Find Bank © Website 2017</small>
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
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/popper/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
     <!-- Core plugin JavaScript-->
     <script src="<c:url value="/resources/vendor/jquery/jquery-easing/jquery.easing.min.js"/>"></script>
    <!-- Custom scripts for all pages-->
    <script src="<c:url value="/resources/js/sb-admin.min.js"/>"></script> 
   
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>  
<script type="text/javascript">
 
if ($("#txt").val()=='verdadero'){
    $('#crearCardModal').modal('show'); 
    }    
    
</script>
 
</h:body>

</html>