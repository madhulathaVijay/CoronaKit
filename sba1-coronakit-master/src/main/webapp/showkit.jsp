<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList" %>
    <%@page import="com.iiht.evaluation.coronokit.model.ProductMaster" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-My Kit(user)</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>
<table border="1" width="500" align="center">
		<tr bgcolor="00FF7F">
			<th><b>Product Name</b></th>
			<th><b>Product Quality</b></th>
			<th><b>Total Cost</b></th>
			<th><b>Action</b></th>
		</tr>

	 <%ArrayList<ProductMaster> pd =  
            (ArrayList<ProductMaster>)request.getAttribute("kitProducts"); 
        for(ProductMaster s:pd){%>
		<tr>
			<td><%=s.getProductName()%></td>
			<td><%=s.getQuantity()%></td>
			<td><%=s.getCost()%> Rs</td>
				<td>
				<div>
					<form action="user?action=deleteitem" method="post">
						<input type="hidden" name="productId" value=<%=s.getId()%> /> <input
							type="submit" value="Delete Item" />
					</form>
				</div>
			</td>
		</tr>
		<%}%>
	</table>
<form action="user?action=showproducts" method="post">
						<input type="submit" value="Continue Shopping" />
					</form>
<form action="user?action=placeorder" method="post">
						<input type="submit" value="Place Order" />
					</form>
<hr/>	
	<jsp:include page="footer.jsp"/>
</body>
</html>