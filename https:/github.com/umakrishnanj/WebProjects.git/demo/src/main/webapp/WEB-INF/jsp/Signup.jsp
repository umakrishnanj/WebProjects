<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
 body{
	/* overflow: hidden; */
	background-position: -270px
	
} 
.login {
	width: 100%;
	margin: 64px auto;
	padding: 33px;
	position: relative;
	/* background: gray; */
	display: block;
	box-shadow: 0 0 20px 1px lightgray;
	height: 448px;
}
.login1 {
	margin : 63px auto;
}
.userdiv {
	padding-top: 1px;
	padding-bottom: 0px;
}

.passdiv{
	padding-top: 50px;
	padding-bottom: 55px;
}
.maildiv {
	padding-top: 55px;
}

.conpassdiv {
	padding-top: 1px;
	padding-bottom: 31px;
}
.alignright {
	float: right;
} 
.submit {
	margin-left: 20px;
    margin-top: 41px;
}

.col-md-3.col-form-label{
	color: white;
}


.heading{
	margin-left: 79px;
	color:white; 
	
}

}

</style>
<body  background="logincolor3.jpg" >
	<form action="/signup" method="post" >
	
		<div class="form-group row">
		<div class="col-md-4"></div>

		<div class="col-md-4" >			
			<div class="login">
			<div class="heading">
					<h3>ONLINE POLLING</h3>
				</div>
				
				<div class="login1">
					<div class="userdiv">
						<label for="username" class="col-md-3 col-form-label">USERNAME</label>
						<div class="col-md-9">
							<input type="text" placeholder="Enter Username" class="form-control" name="uname"/>
						</div>
					</div>
					
					<div class="maildiv">
						<label for="email" class="col-md-3 col-form-label">EMAIL</label>
						<div class="col-md-9">
							<input type="text" placeholder="Enter Email" class="form-control" name="mail"/>
						</div>
					</div>
					
					
					<div class = "passdiv">
						<label for="password" class="col-md-3 col-form-label"> PASSWORD </label>
						<div class="col-md-9">
							<input type="text" 	placeholder="Enter Password" class="form-control" name="pass"/>
						</div>
						<div>
						</div>
					</div>
					
					<div class = "conpassdiv">
						<label for="password" class="col-md-3 col-form-label">CONFIRM PASSWORD </label>
							<div class="col-md-9">
								<input type="password" 	placeholder="Enter again" class="form-control" name="conpass"/>
							</div>
							<div>
						</div>
					</div>
					
					
					<div class="submit" align="center">
						<button class="btn btn-success btn-3d" type="submit">SIGN UP</button>
					</div>
			</div>
		</div>
		<div class="col-md-4"></div>
		</div>
	
	</form>
</body>
</html>