<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>           
.blue-button{
	background: #25A6E1;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:3px 5px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:2px;
	-moz-border-radius:2px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}     
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
</head>
<body>
<form:form method="post" modelAttribute="agentes" action="/c15/addCountry">
	<table>
		<tr>
			<th colspan="2">Add Country</th>
		</tr>
		<tr>
		<form:hidden path="idAgente" />
          <td><form:label path="nombre">Nombre:</form:label></td>
          <td><form:input path="nombre" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
		  <td><form:label path="direccion">Direccion:</form:label></td>
          <td><form:input path="direccion" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="lat">lat:</form:label></td>
          <td><form:input path="lat" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="lng">lng:</form:label></td>
          <td><form:input path="lng" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="tipo">tipo:</form:label></td>
          <td><form:input path="tipo" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="sistema">sistema:</form:label></td>
          <td><form:input path="sistema" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="seguridad">seguridad:</form:label></td>
          <td><form:input path="seguridad" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="horario">horario:</form:label></td>
          <td><form:input path="horario" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
		  <td><form:label path="descripcion">descripcion:</form:label></td>
          <td><form:input path="descripcion" size="30" maxlength="30"></form:input></td>
		</tr> 
		<tr>
			<td colspan="2"><input type="submit" class="blue-button" /></td>
		</tr>
	</table> 
</form:form>
</br>
<h3>Country List</h3>
<c:if test="${!empty listOfCountries}">
	<table class="tg">
	<tr>
		<th width="80">Id</th>
		<th width="100">Nombre</th>
		<th width="100">direccion</th>
		<th width="100">lat</th>
		<th width="100">lng</th>
		<th width="100">tipo</th>
		<th width="50">sistema</th>
		<th width="50">seguridad</th>
		<th width="100">horario</th> 
		<th width="100">descripcion</th> 
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${listOfCountries}" var="agentes">
		<tr>
			<td>${agentes.idAgente}</td>
			<td>${agentes.nombre}</td>
			<td>${agentes.direccion}</td>
			<td>${agentes.lat}</td>
			<td>${agentes.lng}</td>
			<td>${agentes.tipo}</td>
			<td>${agentes.sistema}</td>
			<td>${agentes.seguridad}</td>
			<td>${agentes.horario}</td>
			<td>${agentes.descripcion}</td>
			<td><a href="<c:url value='/updateCountry/${agentes.idAgente}' />" >Edit</a></td>
			<td><a href="<c:url value='/deleteCountry/${agentes.idAgente}' />" >Delete</a></td>
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>