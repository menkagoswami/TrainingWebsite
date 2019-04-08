<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error in Login</title>
<style type="text/css">
.tree{
font-weight: bold;
float:left;
color:	#4B0082;
font-size: x-large;
}
a {
color:dodgerblue;

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

</style>
</head>
<body>
<%@include file="head.jsp" %>
<div class="container">
<div class="tree">
<h1>You have successfully login,to continue<a href="welcome.jsp" style="text-decoration: underline;">Click here</a></h1>
</div>
</div>
</body>
</html>