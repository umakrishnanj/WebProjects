<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	overflow: hidden;
}
.login {
	width: 100%;
	margin: 64px auto;
	padding: 33px;
	position: relative;
	/* background: gray; */
	display: block;
	box-shadow: 0 0 20px 1px lightgray;
}
.login1 {
	margin : 100px auto;
}
.userdiv {
	padding-top: 1px;
	padding-bottom: 0px;
}

.passdiv{
	padding-top: 53px;
	padding-bottom: 66px;
}

.alignright {
	float: right;
} 
.submit {
	margin-left: 65px;
	margin-top: 19px;
}
.forcelogout {
	margin-top: -15px;
}
</style>
<body  background="login1.jpg" >
	<form>
	
		<div class="form-group row">
		<div class="col-md-4"></div>

		<div class="col-md-4" >			
			<div class="login">
				<div class="login1">
					<div class="userdiv">
						<label for="username" class="col-md-3 col-form-label">USERNAME</label>
						<div class="col-md-9">
							<input type="text" placeholder="Enter Username" class="form-control" name="uname"/>
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
					<div class="forcelogout">
						<span class="alignright" title="click here to force logout">&nbsp;Force Logout</span>
						<input class="alignright" type="checkbox" name="forcelogout" id="forcelogout" title="click here to force logout"/>
 					</div>
					<div class="submit" align="center">
						<button class="btn btn-success btn-3d" type="submit">LOGIN</button>
					</div>
			</div>
		</div>
		<div class="col-md-4"></div>
		</div>
	
	</form>
</body>
</html>