<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Place Order(user)</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr />

	<div>
		<form action="user?action=ordersummary" method="post">
			<textarea name="address"></textarea>
			<input type="submit" value="Enter Address" />
		</form>
	</div>
	<hr />
	<jsp:include page="footer.jsp" />
</body>
</html>