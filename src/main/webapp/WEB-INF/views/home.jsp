<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html">
<h:head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Find Bank</title> 
	
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.3.3.7.min.css"/>">
	
	<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script> 
	 <script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"></script>
	 
	 <link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>">
	
	   
</h:head>

	<div class="fondonav1">
	<nav class="fondonav">
		<ul class="">
			<li><a data-toggle="modal" data-target="#myModal">Nosotros</a></li>
			<li><a href="login">Login</a></li>
			<li><a href="registrar">Registrar</a></li>
		</ul>
	</nav>
	</div>
	 
<h:body>
 
	<div  style="background: linear-gradient(to right, #226b9b,#2e85bf);">
		<div align="">
		<br></br><br></br>
		<div align="center">
			<img class="fondo" src="<c:url value="/resources/img/find.png"/>"/>
		</div>
		<h2 align="center" class="mensajebusca">Bienvenido a Find Bank</h2>
		<h5 align="center" class="mensajebusca2">Tu buscador de agentes bancario</h5>
		</div>
	</div>  
	
	<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Find Bank | Nosotros</h4>
        </div>
        <div class="modal-body">
          <p>Somos un grupo de jovenes programadores:</p>
           <p>- Libnder Hassinger</p>
           <p>- Seichi Jonda</p>
           <p>- Roque Alarcon</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
        </div>
      </div>
      
    </div>
  </div>


</h:body> 
</html>
