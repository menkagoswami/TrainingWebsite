<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">

.navbar{
overflow:auto;

}
.navbar  a {
display: inline;
float:left;
text-decoration: none;
color: #6495ED;
 padding: 14px 16px;
 font-size: 20px;
}
.navbar a.logo{
font-size:30px;
font-weight: bold;
}
.navbar-right{
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
  position: relative;
}
.content{
position:static;
float:right;
right:0;
 margin: 180px;
  max-width: 600px;
   padding: 36px;
  background-color: white;
}
input[type=email],input[type=password] {
	width: 200px;
	padding: 15px;
	 margin: 15px ;
  border: none;
  background: #f1f1f1;
}
input[type=submit] {
	width: 60px;
	float: left;
	color: green;
	font-weight: bold;
}
input[type=email]:focus,input[type=password]:focus{
background-color: #ddd;
outline: orange;
}
 a{
color: aqua;
text-decoration: underline;
float: right;
font-weight: bolder;

}
span{
color: red;
}
</style>
<script type="text/javascript">
function validate(){
var pass=document.getElementById("pass").value;
if((pass.length)<=6){
	document.getElementById("passErr").innerHTML="Weak Password";
	return false;
}
else{
	document.getElementById("passErr").innerHTML="";
}
return true;	
}	
</script>
</head>

<body>

<div class="navbar">
 <a href="#default" class="logo">Infotech Technologies</a>
<div class="navbar-right">
<a href="contact.jsp">Contact Us</a>
</div>
</div>
<div class="container" >
<form action="login" method="post" class="content">

<table>
<tr>
<td>Email<span> *</span></td><td><input type="email" name="email" id="email" placeholder="Enter email" required="required"></td>
</tr>
<tr>
<td>Password<span> *</span></td><td><input type="password" name="pass" id="pass" placeholder="Enter password" required="required"><span id="passErr"></span></td>
</tr>

<tr>
<td></td><td><input type="submit" value="Login" onclick="return validate();"></td>
</tr>
</table>
<p style="font-size: 40"><b style="color: red">Not registered!! Signup </b><b style=" text-decoration: underline;">here</b><a href="register.jsp" >SignUp</a></p>
</form>
</div>
<%--hi there am comment --%>

</body>
</html>