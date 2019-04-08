<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style>
.navbar {
	overflow: auto;
}

.navbar  a {
	display: inline;
	float: left;
	text-decoration: none;
	color: #6495ED;
	padding: 14px 16px;
	font-size: 20px;
}

.navbar a.logo {
	font-size: 30px;
	font-weight: bold;
}

.navbar-right {
	float: right;
}

* {
	box-sizing: border-box;
}

.container {
	background-image: url("blog.jpg");
	min-height: 600px;
	opacity: 0.6;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: static;
}

.content {
	position: static;
	float: none;
	margin: 40px;
	max-width: 600px;
	padding: 46px;
	background-color: white;
	color: dodgerblue;
	text-decoration: none;
	font-weight: bolder;
}

input[type=text], input[type=password], input[type=email], input[type=tel]
	{
	width: 300px;
	padding: 15px;
	margin: 15px;
	border: none;
	background: #f1f1f1;
}

input[type=submit] {
	width: 90%;
	float: center;
	color: green;
	padding: 15px;
	margin: 55px;
	font-weight: bold
}

input[type=text]:focus, input[type=password]:focus, input[type=email]:focus,
	input[type=tel]:focus {
	background-color: #ddd;
	outline: orange;
}

span {
	color: red;
}
</style>
<script>
	function validate() {
		var pass = document.getElementById("pass").value;
		var repass = document.getElementById("repass").value;
		var phnno = parseInt(document.getElementById("phnno").value);

		if (pass.length < 6) {
			document.getElementById("passErr").innerHTML = "weak password";
			return false;
		} else {
			document.getElementById("passErr").innerHTML = " ";

		}

		if (pass == repass) {
			document.getElementById("repassErr").innerHTML = "";
			return true;
		} else {
			document.getElementById("repassErr").innerHTML = "Password not same ";
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<div class="navbar">
		<a href="#default" class="logo">Infotech Technologies</a>
		<div class="navbar-right">
			<a href="contactus.jsp">Contact Us</a>
		</div>
	</div>
	<div class="container">
		<h1>
			<b> Registration</b>
		</h1>
		<form action="register" method="post" class="content">
			<table>
				<tr>
					<td>Name<span> *</span></td>
					<td><input type="text" name="name" id="name"
						placeholder="Enter name" required="required"></td>
				</tr>

				<tr>
					<td>Password<span> *</span></td>
					<td><input type="password" name="pass" id="pass"
						placeholder="Enter password" required="required"><span
						id="passErr"></span></td>
				</tr>
				<tr>
					<td>Retype-Password<span> *</span></td>
					<td><input type="password" name="repass" id="repass"
						placeholder="Retype the password" required="required"><span
						id="repassErr"></span></td>
				</tr>
				<tr>
					<td>Contact No<span> *</span></td>
					<td><input type="tel" name="phnno" id="phnno" maxlength="10"
						placeholder="Enter mobile number" required="required"><span
						id="phnnoErr"></span></td>
				</tr>
				<tr>
					<td>Email<span> *</span></td>
					<td><input type="email" name="email" id="email"
						placeholder="Enter email" required="required"></td>
				</tr>
				<tr>
					<td><input type="text" name="status" value="NotActive" hidden="true"></td>
				</tr>
				<tr>
					<td><input type="submit" name="submit" value="Register"
						onclick="return validate();"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>