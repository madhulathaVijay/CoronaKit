<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.iiht.evaluation.coronokit.model.ProductMaster"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-All Products(Admin)</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr />
	<%-- Required View Template --%>
	AVAILABLE PRODUCTS
	<form action="admin?action=logout" method="post">
						<input type="submit" value="Logout" />
					</form>
	<hr />
	<table border="1" width="500" align="center">
		<tr bgcolor="00FF7F">
			<th><b>Product Id</b></th>
			<th><b>Product Name</b></th>
			<th><b>Product Cost</b></th>
			<th><b>Product Description</b></th>
			<th><b>Action</b></th>
		</tr>

		<%ArrayList<ProductMaster> pd =  
            (ArrayList<ProductMaster>)request.getAttribute("products"); 
        for(ProductMaster s:pd){%>
		<%-- Arranging data in tabular form 
        --%>
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getProductName()%></td>
			<td><%=s.getCost()%></td>
			<td><%=s.getProductDescription()%></td>
			<td>
				<div>
					<form action="admin?action=editproduct" method="post">
						<input type="hidden" name="productId" value=<%=s.getId()%> /> <input
							type="submit" value="Edit Product" />
					</form>
				</div>
			</td>

		</tr>
		<%}%>
	</table>

	<form action="admin?action=newproduct" method="post">
		<div>
			<div>
				<input type="submit" value="Add New Product">
			</div>
		</div>

	</form>


	<jsp:include page="footer.jsp" />
</body>
</html>