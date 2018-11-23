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
<title>Login</title>
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
}
.login1 {
	margin : 63px auto;
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
.errorlabel{
	
}
.invmessage {
	color: red;
	margin-left: 77px;
	margin-top: 11px;
}


.heading{
	margin-left: 79px;
	color:white; 
	
}
</style>
<body  background="logincolor3.jpg" >
	<form>
	
		<div class="form-group row">
		<div class="col-md-4"></div>

		<div class="col-md-4" >		
			
			<div class="login">
				<div class="heading">
					<h3>ONLINE POLLING</h3>
				</div>
				<div class="login1">
					<div class="userdiv">
						<label for="username" class="col-md-3 col-form-label" style="color: white">USERNAME</label>
						<div class="col-md-9">
							<input type="text" placeholder="Enter Username" class="form-control" id="uname" name="uname" />
							<div class="errorlabel" id="usermessage" style="display: none">
								<label for="error" class="error" style="color: red; ">Enter valid username</label>
							</div>
						</div>
					</div>
					<div class = "passdiv">
						<label for="password" class="col-md-3 col-form-label" style="color: white"> PASSWORD </label>
						<div class="col-md-9">
							<input type="password" 	placeholder="Enter Password" class="form-control" id="pass" name="pass"/>
							<div class="passerrorlabel" id="passmessage" style="display: none">
								<label for="passerror" class="passerror" style="color: red; ">Enter valid password</label>
							</div>
						</div>
						<div>
					</div>
					</div>
					<div class="forcelogout">
						<span class="alignright" title="click here to force logout" style="color: white">&nbsp;Force Logout</span>
						<input class="alignright" type="checkbox" name="forcelogout" id="forcelogout" title="click here to force logout"/>
 					</div>
 					<div class="submit"  align="center">
						<button class="btn btn-success btn-3d" id="login" type="button">LOGIN</button>
					</div>
					
					<div class="invalid" id="invmessage" style="display: none">
								<label for="invmessage" class="invmessage" style="color: red; ">Invalid username or password !!</label>
							</div>
					
			</div>
		</div>
		</div>
		<div class="col-md-4"></div>
		</div>
	
	</form>
	
	<script type="text/javascript">
		$(document).ready(function(){
		   $("#login").on("click",function(){
			   var userName = $("#uname").val();
			   
			   var pass = $("#pass").val();
			   console.log("username " , userName);
			   console.log("password ", pass);
			   var formData = new FormData();
			   formData.append('uname',userName);
			   formData.append('pass',pass);
			   /* var url="login?uname="+userName+"&pass="+pass; */
			   $.ajax({
					url: "loginval",
					type: 'POST',
					contentType: false,
					processData: false,
					data : formData,
					success: function(data) {
						$("#usermessage").hide();
						$("#passmessage").hide();
						$("#uname").css('border' , 'none');
						$("#pass").css('border' , 'none');
						$("#invmessage").hide();
						if(data.status=="success"){
							window.location.href="welcome";
						 	$("#uname").val(data.userName);
						}
						else{
								if(data.userName==''){
								 $("#usermessage").show();
								 $("#uname").css('border' , '1px solid red');
								}
								if(data.pass==''){
									$("#passmessage").show();
							 		$("#pass").css('border' , '1px solid red');
								}
							 	if(data.userName!='' && data.pass!=''){
									$("#invmessage").show();
								}
						}
						console.log("data " , data);
					},
					error: function (jqXHR, textStatus, errorThrown) {
						alert("error");
					},
				});
			    
		   });
			
		});
	</script>
</body>
</html>