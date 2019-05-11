<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"></script>

<style>
	body{
		padding: 8px;	
	}
	
	div{
		padding: 8px;
	}
	
	.center-block{
		display: block;
  		margin-right: auto;
  		margin-left: auto;
	}
	.center-items{
		display: flex;
		justify-content: center;
	}
	
	.hidden{
		visibility: hidden;	
	}
	
	th{
		text-align: center;
	}
	
	.center-text{
		text-align: center;
	}
	
	.center-right{
		text-align: right;
	}
</style>
</head>
<body>
	<div class="center-block" style="width: 100%; border: 1px solid black;">
		<h2>${message}</h2>
		<table class="table table-bordered">
			<tr>
				<th>Nombre</th>
				<th>Marca</th>
				<th>Descripcion</th>
				<th>Categoria</th>
				<th>Precio</th>
				<th>Fecha de vencimiento</th>
				
			</tr>
			<tr>
				<td><c:out value = "${producto.getName()}"/></td>
				<td><c:out value = "${producto.getMarca()}"/></td>
				<td><c:out value = "${producto.getDescripcion()}"/></td>
				<td><c:out value = "${producto.getCategoria()}"/></td>
				<td class="center-right"><c:out value = "${producto.getPrecio()}"/></td>
				<td class="center-text"><c:out value = "${producto.getFechaExp()}"/></td>								
			</tr>
		</table>
				
	</div>
</body>
</html>