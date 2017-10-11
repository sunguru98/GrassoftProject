 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
 <!-- 1.this particular page has been converted to spring page because model attribute accepts only spring pages ... 
 the above link is required to change a normal page to spring page   
 2. and convert the form and the input tags as form:form and form:input-->
<title>Signup </title>


 <jsp:include page="header.jsp"></jsp:include> 
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
 		margin-top: 10%;	
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
 	
 </style>
 

	
	<div class="container">
		
		<div class="jumbotron">
			<h1>Sign Up</h1>
			
			<form:form modelAttribute="usermodel" action="userregister">
			
			<!--here in the form tag we have given two parameters the first is the modelAttribute which we 
			have defined in the userController the second is the RequestMapping value which is also defined 
			in the controller class for the action argument-->
			
			
			  <div class="form-group">
			    <label for="exampleInputEmail1">First Name :</label>
			    <form:input type="text" class="form-control" id="exampleInputEmail1" placeholder="John" path="firstName"></form:input>
			  </div>
			   <div class="form-group">
			    <label for="exampleInputEmail1">Last Name :</label>
			    <form:input type="text" class="form-control" id="exampleInputEmail1" placeholder="Appleased" path="lastName"></form:input>
			  </div>
			   <div class="form-group">
			    <label for="exampleInputEmail1">Mobile Number :</label>
			    <form:input type="text" class="form-control" id="exampleInputEmail1" placeholder="1234567890" path="contactNumber"></form:input>
			  </div>
			   <div class="form-group">
			    <label for="exampleInputEmail1">Email :</label>
			    <form:input type="email" class="form-control" id="exampleInputEmail1" placeholder="johnappleased@something.com" path="emailId"></form:input>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputPassword1">Password :</label>
			    <form:input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" path="password"></form:input>
			  </div>
			  
			  <div class="checkbox">
			    <label class="specialallign">
			        I Agree to the terms and conditions 
			    </label>
			    <form:checkbox path="termsAgree"></form:checkbox>
			  </div>
			  <button type="submit" class="btn btn-success btn-lg">Submit</button>
			</form:form>
		</div>
	</div>

<jsp:include page="footer.jsp"></jsp:include>
</html>