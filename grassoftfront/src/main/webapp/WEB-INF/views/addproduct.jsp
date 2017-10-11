<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<title>Add product </title>
	<jsp:include page="header.jsp"></jsp:include>
 	<jsp:include page="adminHeader.jsp"></jsp:include>
<style>
	
	body{
 		background:url("resources/images/img9.jpg");
 		background-size: 100% 100%;
 		background-repeat: no-repeat;
 		background-position: top;
 		margin-bottom:70px;
 	}

 	h1{
 		font-family: pacifico;
 		font-weight: 500;
 		text-align: center;
 		padding-bottom: 20px;
 	}
 	.jumbotron{
 		color: white;
 		background-color: rgba(0,0,0,0.21);
 	margin-top: 20%;	
 	}
 	.jumbotron input{
 		width: 50%;
 		margin-left: 25%;
 	}
 	.jumbotron label{
 		font-size: 22px;
 		font-family: pacifico;
 		margin-left: 25%;
 		font-weight: 200;
 	}
 	.checkbox label{
 		margin-left: 23%;
 		padding-top: 10px;	
 	}
 	.jumbotron button{
 		font-family: pacifico;
 		margin-left: 50%;
 		margin-top: 10px;
 		margin-left: 46%;	
 	}
 	.checkbox input[type=checkbox]{
 		margin-top: 23px;
 		margin-left: -19%;
 	}
 	
 	table th,td{
 	background-color:white;
 		font-family:pacifico;
 		text-align :center;
 	}
 	
 </style>
 	
 	
	<div class="container">
		<div class="jumbotron">
			<h1>Add your product</h1>
			<form:form action="productregister" modelAttribute="productmodel">
			   <div class="form-group">
			    <label>Product Name :</label>
			    <form:input type="text" class="form-control" id="pname" path="productName" required="true"></form:input>
			  </div>
			   <div class="form-group">
			    <label for="pdescript">Product Description :</label>
			    <form:input type="text" class="form-control" id="pdescript" path="productDescription"></form:input>
			  </div>
			   <div class="form-group">
			    <label for="pprice">Product Price :</label>
			    <form:input type="number" class="form-control" id="pprice" path="productPrice" required="true"></form:input>
			  </div>
			  <div class="form-group">
			    <label for="sname">Supplier name of the product :</label>
			    <form:input type="text" class="form-control" id="sname" path="productSupplier" required="true"></form:input>
			  </div>

			  <div class="form-group">
			    <label for="pquantity">Product Quantity :</label>
			    <form:input type="number" class="form-control" id="pquantity" path="productQuantity" required></form:input>
			  </div>
			  
			  <button type="submit" class="btn btn-success btn-lg">Add Product</button>
			</form:form>
		</div>
		
		<table class="table table-bordered ">
			<tr>
				
				<th>Product Id</th>
				<th>Product Name</th>
				<th>Product Description</th>
				<th>Product price</th>
				<th>Supplier name</th>
				<th>Product Quantity</th>
				<th colspan=2>Action</th>
				
			</tr>
			
			<c:forEach var="prodlist" items="${allprods}" >
				<tr>
					<td>${prodlist.getProductId()}</td>
					<td>${prodlist.getProductName()}</td>
					<td>${prodlist.getProductDescription()}</td>
					<td>${prodlist.getProductPrice()}</td>
					<td>${prodlist.getProductSupplier()}</td>
					<td>${prodlist.getProductQuantity()}</td>
					<td><a href="#"><button class="btn btn-primary">Edit</button></a></td>
					<td><a href="#"><button class="btn btn-danger">Delete</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
<jsp:include page="footer.jsp"></jsp:include>