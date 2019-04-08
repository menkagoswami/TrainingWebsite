<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success</title>
<style type="text/css">
.tree{
font-weight: bold;
float:left;
color: 	#4B0082;
font-size: x-large;
}

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
  opacity: 0.5;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

</style>
</head>
<body>
<div class="navbar">
 <a href="#default" class="logo">Infotech Technologies</a>
<div class="navbar-right">
<a href="contact.jsp">Contact Us</a>
</div>
</div>
<div class="container" >
<div class="tree">
<h1>You have been successfully registered, to login </h1>
<a href="login.jsp" style="text-decoration: underline;">Click here</a>
</div>
</div>
</body>
</html>