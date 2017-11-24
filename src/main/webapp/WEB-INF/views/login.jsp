<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html >
<h:head>
    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Login</title> 
	<link rel="stylesheet" href="<c:url value="/resources/css/styles.css"/>">
</h:head>
	<div class="fondonav">
	<nav class="fondonav">
		<ul class="">
			<li><a href="">Inicio</a></li>
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
			<h1 class="login">Login</h1>
			<hr align="center"></hr>
			
			</br><p><td><h3>${message}</h3></td></p></br>
			
		</div> 
		
		<div class="content-login" align="center">
		 
			<form:form id="loginForm" modelAttribute="login" action="home" method="post">
				<table align="center">
				
				<tr>	 
					<td align="center"><form:label path="email" >Email: </form:label></td> 
				</tr>
				<tr>  
					<td align="center"><form:input class="logininput"  path="email" name="email" id="email" /></td>
					
				</tr>
				<tr>	 
					<td align="center"><form:label  path="password">Password:</form:label></td> 
				</tr>
				<tr> 	 
					 <td align="center"><form:password class="logininput" path="password" name="password" id="password" /></td>
				</tr>
				<tr>  
					<td align="center"><form:button class="ingresar" id="login" name="login">Login</form:button></td>
				</tr>
	
				<tr></tr>
				<tr>
					<td></td> 
				</tr>
				</table>
			</form:form>
		</div>
	</div> 
</h:body> 
</html>
