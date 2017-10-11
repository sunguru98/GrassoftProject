 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<title>Add Supplier </title>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="adminHeader.jsp"></jsp:include>
 <style type="text/css">

 	
 	body{
 		background:url("resources/images/img9.jpg");
 		background-size: cover;
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
			<h1>Add a new Supplier</h1>
			<form:form action="supplierregister" modelAttribute="suppliermodel">
			   <div class="form-group">
			    <label >Supplier Name :</label>
			    <form:input type="text" class="form-control" id="sname" path="supplierName"></form:input>
			  </div>
			   <div class="form-group">
			    <label>Supplier Email :</label>
			    <form:input type="email" class="form-control" id="semail" path="supplierEmailId"></form:input>
			  </div>
			   <div class="form-group">
			    <label>Supplier Address :</label>
			    <form:input type="text" class="form-control" id="saddress" path="supplierAddress"></form:input>
			  </div>
			  <div class="form-group">
			    <label>Supplier Contact no :</label>
			    <form:input type="number" class="form-control" id="sname" path="supplierContactNo"></form:input>
			  </div>

			  <button type="submit" class="btn btn-success btn-lg">Add Supplier</button>
			</form:form>
		</div>
		
		<table class="table table-bordered table-hover">
			<tr>
			<th>Supplier Id</th>
			<th>Supplier Name</th>
			<th>Supplier Email</th>
			<th>Supplier Address</th>
			<th>Supplier Contact No</th>
			<th colspan="2" >Action</th>
			</tr>
			
			<c:forEach var="suppList" items="${allsupps}">
			
			<tr>
			<td>${ suppList.getSupplierId()} </td>
			<td>${ suppList.getSupplierName()} </td>
			<td>${ suppList.getSupplierEmailId()} </td>
			<td>${ suppList.getSupplierAddress()} </td>
			<td>${ suppList.getSupplierContactNo()} </td>
			<td><a href="#"><button class="btn btn-primary">Edit</button></a></td>
			<td><a href="#"><button class="btn btn-danger">Delete</button></a></td>
			</tr>
		
			</c:forEach>
		
			
		</table>
	</div>
	 
<jsp:include page="footer.jsp"></jsp:include>