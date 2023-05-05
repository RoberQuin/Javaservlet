<%@page import="com.alura.gerenciador.modelo.Empresa"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Standard Taglib</title>
</head>
<body>

Usuario logado: ${loginUsuario.login } <c:import url="logout-parcial.jsp"></c:import><br/>

<c:if test="${not empty empresa }">
	Empresa ${empresa} registrada! <br/>
	</c:if>
	Lista de empresas: <br />
	
	<ul>
		<c:forEach items="${empresas}" var="empresa">
		
			<li>
			${ empresa.nombre } - <fmt:formatDate value="${empresa.fechaAbertura }" pattern="dd/MM/yyyy"/>
			<a href="/gerenciador/entrada?accion=MostrarEmpresa&id=${empresa.id }">Modificar</a> 
			<a href="/gerenciador/entrada?accion=EliminarEmpresa&id=${empresa.id }">Eliminar</a> 
			</li>
			
		</c:forEach>
	</ul><br/>
	<a href="/gerenciador/entrada?accion=NuevaEmpresaForm">Nueva empresa</a>
</body>
</html>