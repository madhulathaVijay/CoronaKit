<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.iiht.evaluation.coronokit.model.ProductMaster"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Order Summary(user)</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr />

	<%String address = (String) request.getAttribute("address"); %>
	<%String cost = (String) request.getAttribute("totalCost"); %>
	<table border="1" width="500" align="center">
		<tr bgcolor="00FF7F">
			<th><b>Product Name</b></th>
			<th><b>Product Quality</b></th>
			<th><b>Total Cost</b></th>

		</tr>

		<%ArrayList<ProductMaster> pd =  
            (ArrayList<ProductMaster>)request.getAttribute("kitProducts"); 
        for(ProductMaster s:pd){%>
		<tr>
			<td><%=s.getProductName()%></td>
			<td><%=s.getQuantity()%></td>
			<td><%=s.getCost()%> Rs</td>
		</tr>
		<%}%>
		<tr>
			<td />
			<td color="#ff0000"><b>Total Cost </b></td>
			<td color="#ff0000">= <b><%=cost%> Rs</b></td>
		</tr>
	</table>
	ADDRESS
	<div>
		<%=address%></div>

	<hr />
	<jsp:include page="footer.jsp" />
</body>
</html>