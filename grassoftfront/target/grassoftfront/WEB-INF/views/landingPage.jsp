<title>Welcome</title>
 <style type="text/css">
html {
	height: 100%;
}

.allignment {
	text-align: center;
	padding-top: 10%;
	font-family: Pacifico;
	color: #F97300;
}

.allignment button {
	font-size: 25px;
	background-color: yellow;
	border-color: yellow;
	color: green;
}

 .allignment h1 {
    font-size: 70px;
    color:white;
}

 .allignment h3 {
	margin-top: 20px;
	font-size: 50px;
	color:white;
}

.allignment hr {
	width:72%;
	height:5px;
	
}

body {
	background:url("resources\\images\\img7.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-position: top;
	
}
</style>
 <jsp:include page="header.jsp"></jsp:include> 
 <jsp:include page="adminHeader.jsp"></jsp:include>
<div class="allignment">
		<h1>GrasSoft</h1>
		<h3>One Stop for all Softwares</h3><br>
		<hr>
		<a href="login"><button class="btn btn-lg btn-success">Get Started !</button></a>
	</div>
<jsp:include page="footer.jsp"></jsp:include>
 