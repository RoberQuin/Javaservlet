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
		Login: <input type="text" name="login"/>
		Contrase�a: <input type="password" name="contrasena"/>
		<input type="hidden" name="accion" value="Login"/>
		<input type="submit"/>
	</form>
</body>
</html>