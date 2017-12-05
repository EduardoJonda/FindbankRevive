<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:ui="http://java.sun.com/jsf/facelets"
	xmlns:h="http://java.sun.com/jsf/html">
<h:head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Registrar</title>
	<link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>">

</h:head>
	<div class="fondonav">
	<nav class="fondonav">
		<ul class="">
			<li><a href="/c15">Inicio</a></li>
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
		<h5 align="center" class="mensajebusca">Busca tu agente mas cercano</h5>
		</div>
	</div>
	
	<div>
		<div align="center">
			<h1 class="login">Registrar</h1>
			<hr align="center"></hr>
		</div> 
		 
		<div class="content-login" align="center">
		 
			<form:form id="regForm" modelAttribute="user" action="registerProcess"
		method="post">

		<table align="center">
			<tr>
				<td><form:label path="email">Email</form:label></td>
				<td><form:input class="logininput" path="email" name="email" id="email" /></td>
			</tr>
			<tr>
				<td><form:label path="password">Contraseña</form:label></td>
				<td><form:password class="logininput" path="password" name="password"
						id="password" /></td>
			</tr>
			<tr>
				<td><form:label path="nombre">Nombre</form:label></td>
				<td><form:input class="logininput" path="nombre" name="nombre"
						id="nombre" /></td>
			</tr>
			<tr>
				<td><form:label path="tipo">Tipo</form:label></td>
				<td><form:input class="logininput" path="tipo" name="tipo" id="tipo" /></td>
			</tr> 

			<tr>
				<td></td>
				<td><form:button class="ingresar" id="register" name="register">Registrar</form:button></td>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td></td>
			</tr>
		</table>
	</form:form>
		</div>
	</div>
	
</h:body> 
</html>
