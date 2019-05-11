<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
	
	
</style>
</head>
<body>
	<div class="row">		
			
			<div class="center-block" style="width: 60%; border: 1px solid black;">
				<form:form action="${pageContext.request.contextPath}/form-data" method="POST" modelAttribute="producto">
				<div class="form-group">
				
				   <label for="nameText">Nombre:</label>
				   <form:input type="text" class="form-control"   placeholder="Ingrese nombre" name="name" path="name" />
				   <form:errors path="name" cssStyle="color: #E81505"></form:errors>
				 </div>
				 
				 <div class="form-group">
				
				   <label for="nameUser">Marca: </label>
				   <form:input type="text" class="form-control"  placeholder="Ingrese marca" name="password" path="marca"/>
				   <form:errors path="marca" cssStyle="color: #E81505"></form:errors>
				 </div>
				 
				 <div class="form-group">
				
				   <label for="nameEmail">Descripcion:</label>
				   <form:input type="text" class="form-control"  placeholder="Ingrese descripcion" name="email" path="descripcion"/>
				   <form:errors path="descripcion" cssStyle="color: #E81505"></form:errors>
				 </div>
				 
				 <div class="form-group">				
				   <label for="namePassword">Categoría:</label>
				   <form:input type="text" class="form-control"   placeholder="Ingrese categoria" name="password" path="categoria"/>
				   <form:errors path="categoria" cssStyle="color: #E81505"></form:errors>
				 </div>
				 
				 <div class="form-group">				
				   <label for="namePassword">Precio:</label>
				   <form:input type="text" class="form-control"   placeholder="Ingrese precio"  path="precio"/>
				   <form:errors path="precio" cssStyle="color: #E81505"></form:errors>
				 </div>
				 <div class="form-group">				
				   <label for="namePassword">Fecha de vencimiento:</label>
				   <form:input type="text" class="form-control"   placeholder="Ingrese fecha de vencimiento" name="password" path="fechaExp"/>
				   <form:errors path="fechaExp" cssStyle="color: #E81505"></form:errors>
				 </div>
				  <div class="hidden">
				 	<p>Error:</p>
				 </div>
				 <div class="center-items">
				 	<button type="submit" class="btn btn-primary">Submit</button>
				 </div>
					
				</form:form>
			</div>		
	</div>
	
</body>
</html>