<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<title>Add category </title>
	<jsp:include page="header.jsp"></jsp:include>
 <jsp:include page="adminHeader.jsp"></jsp:include>
	<style type="text/css">
 	
 	body{
 		background:url("resources/images/img9.jpg");
 		background-size: cover;
 		background-repeat: no-repeat;
 		background-position: top;
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
 	margin-top: 15%;	
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
 	table{
 		margin-bottom: 10%;
 	}
 </style>
 	
	<div class="container">
		<div class="jumbotron">
			<h1>Add a new category</h1>
			<form:form action="categoryregister" modelAttribute="categorymodel">
			  <div class="form-group">
			    <label for="cid">Category Id :</label>
			    <form:input type="number" class="form-control" id="cid" path="categoryId"></form:input>
			  </div>
			   <div class="form-group">
			    <label for="cname">Category Name :</label>
			    <form:input type="text" class="form-control" id="cname" path="categoryName"></form:input>
			  </div>
			   <button type="submit" class="btn btn-success btn-lg">Add Category</button>
			</form:form>
		</div>
		<br><br>
		<table class="table table-bordered table-hover">
			<tr>
			<th>Category Id</th>
			<th>Category Name</th>
			<th colspan="2" >Action</th>
			</tr>
			
			<c:forEach var="catList" items="${categoryList}">
			
			<tr>
			<th>catList.getCategoryName()</th>
			<th>catList.getCategoryId()</th>
			</tr>
		
			</c:forEach>
		
			
		</table>


			
	</div>
<jsp:include page="footer.jsp"></jsp:include>

