<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	<link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
	<link rel="icon" type="image/png" sizes="32x32" href="resources/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
	
<style type="text/css">
	.container li{
		font-size:16px;
	}
	.nav-bordera{
		border-top-left-radius: 20px;
		border-bottom-left-radius: 20px; 
	}
	.nav-borderb{
		border-top-right-radius: 20px;
		border-bottom-right-radius: 20px; 
	}
	
	.navbar-default .navbar-nav>li>a {
    	color: green;
    }

	.navbar{
		background: white;
		font-family: pacifico;
		font-weight: normal;
		color:green;
		font-size: 17px;
		margin-top: 15px;
	}
	img{
		width: 68px;
		height: 48px;
		padding:5px;
		margin-left:6px;
	}
</style>
<body>

<div class="container">
	<nav class="navbar navbar-default navbar-top nav-bordera nav-borderb">
	  
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#hcollapse" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a href="brand"><img src="resources\images\grassoft.jpg"></a>
	    </div>

	    
	    <div class="collapse navbar-collapse" id="hcollapse">
	      <ul class="nav navbar-nav">
	        <li ><a href="aboutus">Why Grassoft</a></li>
	        <li><a href="#">FAQ</a></li>
	      </ul>

	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="login">Login</a></li>
	        <li><a href="signup">SignUp </a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  <!-- /.container -->
	</nav>
</div>


<script
  src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>