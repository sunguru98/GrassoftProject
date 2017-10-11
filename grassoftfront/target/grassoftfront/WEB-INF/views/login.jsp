
<title>Login</title>
</head>

<style type="text/css">
    body
    {
    	background-image: url("resources/images/img6.jpg");
    	background-size: cover;
 		background-repeat: no-repeat;
 		background-position: top;
    	
    }
   
	.container .jumbotron {
		margin:15%;	
		margin-top:5%;
		text-align: center;
		background-color: rgba(0,0,0,0.21);
		color:white;
		
	}

	.container .jumbotron label:nth-of-type(1){
		padding-top:40px;
		font-family: pacifico;
		font-size: 22px;
		font-weight:100;
	}
	.container .jumbotron label:nth-of-type(2){
		padding-top:10px;
		font-family: pacifico;
		font-size: 18px;
	}
	.container .jumbotron input{
		margin-top: 5px;
	}
	
	.btn{
		margin-left: 4%;
		width: auto;
	}
	
	 .jumbotron h1 {
    font-size: 35px;
    margin-top: 5px;
    font-family: pacifico;
	}
</style>

	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">

		<div class="jumbotron">
			<h1>Sign In</h1>
			<form>
			  <div class="form-group">
			    <label class="allign" for="exampleInputEmail1 ">Email address <span style="padding-left: 8px" class="glyphicon glyphicon-user" aria-hidden="true"></span></label>
			    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
			  </div>
			  <div class="form-group">
			    <label class="allign" for="exampleInputPassword1 allign">Password <span style="padding-left: 8px"class="glyphicon glyphicon-lock" aria-hidden="true"></span>  </label>
			    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
			  </div>
			  <button type="submit" class="btn btn-success">Login</button>
			</form>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</html>