<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/Shop/static/admin/css/styleLogin.css">
</head>
<body>
	<div class="login-wrap">
		<div class="login-html">		
			<input id="tab-1" type="radio" name="tab" class="sign-in"><label
				for="tab-1" class="tab"></label> <input id="tab-2" type="radio"
				name="tab" class="sign-up" checked><label for="tab-2"
				class="tab">Sign Up</label>
			<div class="login-form">
				<form action="/Shop/register" method="post"
					enctype="multipart/form-data">
					<div class="sign-up-htm">
						<div class="group">
							<label for="user" class="label">Username</label> <input id="user"
								type="text" class="input" name="username">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input id="pass"
								type="password" class="input" data-type="password"
								name="password">
						</div>
						<div class="group">
							<label for="pass" class="label">Name</label> <input id="pass"
								type="text" class="input"  name="name">
						</div>
						<div class="group">
							<label for="pass" class="label">Age</label> <input id="pass"
								type="text" class="input"  name="age">
						</div>
						<div class="group">
							<label for="pass" class="label">Address</label> <input id="pass"
								type="text" class="input" name="address">
						</div>
						<div class="group">
							<label for="pass" class="label">Avatar:</label> <input type="file" class="form-control"
							name="avatarFile" style="background-color: #979ca3" />
						</div>	
						<div class="hr"></div>					
						<div class="group">
							<input type="submit" class="button" value="Sign Up">
						</div>
						<div>${msg2 }</div>
					</div>
				</form>
			</div>
			
		</div>
		
	</div>
</body>
</html>