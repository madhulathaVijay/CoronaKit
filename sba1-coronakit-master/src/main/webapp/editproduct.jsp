<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.iiht.evaluation.coronokit.model.ProductMaster"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Edit Product(Admin)</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>
Edit Product Details
<hr/>
<% ProductMaster pd = (ProductMaster) request.getAttribute("editProduct"); %>	
<form action="admin?action=list" method="post">
		<div>
			<div><label for="id">Enter Product Id</label> </div>
			<div><input readonly="readonly" type="text" id="id" name="id" value=<%=pd.getId()%> /> </div>
		</div>
		<div>
			<div><label for="productName">Enter Product Name</label> </div>
			<div><input type="text" id="productName" name="productName" value="<%=pd.getProductName()%>" /> </div>
		</div>
		<div>
			<div><label for="cost">Enter Product Cost</label> </div>
			<div><input type="text" id="cost" name="cost" value="<%=pd.getCost()%>" /> </div>
		</div>
		<div>
			<div><label for="productDescription">Enter Product Description</label> </div>
			<div><input type="text" id="productDescription" name="productDescription" value="<%=pd.getProductDescription()%>" /> </div>
		</div>
			<div>
			<div><input type="submit" value="Save"> </div>
		</div>
	</form>

	<jsp:include page="footer.jsp"/>
</body>
</html>