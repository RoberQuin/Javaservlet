<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada" var="linkentradaServlet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${linkentradaServlet }" method="post">
		Nombre empresa: <input type="text" name="nombre"/>
		Fecha de Apertura: <input type="text" name="fecha"/>
		<input type="hidden" name="accion" value="NuevaEmpresa"/>
		<input type="submit"/>
	</form>
</body>
</html>