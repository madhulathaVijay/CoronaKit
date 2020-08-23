<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Add New Product(Admin)</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>
ADD NEW PRODUCT
<%-- Required View Template --%>
<hr/>	
<form action="admin?action=list" method="post">
		<div>
			<div><label for="id">Enter Product Id</label> </div>
			<div><input type="text" id="id" name="id"> </div>
		</div>
		<div>
			<div><label for="productName">Enter Product Name</label> </div>
			<div><input type="text" id="productName" name="productName"> </div>
		</div>
		<div>
			<div><label for="cost">Enter Product Cost</label> </div>
			<div><input type="text" id="cost" name="cost"> </div>
		</div>
		<div>
			<div><label for="productDescription">Enter Product Description</label> </div>
			<div><input type="text" id="productDescription" name="productDescription"> </div>
		</div>
			<div>
			<div><input type="submit" value="Add"> </div>
		</div>
	</form>

	<jsp:include page="footer.jsp"/>
</body>
</html>