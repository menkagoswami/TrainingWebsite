<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<style type="text/css">
.header{
overflow:visible;
background-color: paleturquoise;
height: 100px;
}
.header-try {
float: right;
color: green;
font-size: medium;
font-weight: bolder;
margin-right: 80px;
}
.first{
float: left;
text-decoration: none;
font-weight: bolder;
font-size: large;
}
.second{
float:right;
font-weight: bolder;
font-size: 20px;
overflow: hidden;
}
.second a{
text-decoration: none;
padding: 15px;
}
.third{
display:inline-block;
float: right;
}
.third a{
text-decoration:none;
font-weight: bolder;
font-size: 20px;
padding: 15px;
}
.third-content{
display: none;
position:absolute;
background-color: lightgray;
min-width: 120px;
box-shadow: 0px 0px 5px 1px grey;
z-index: 1;
}
.third-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-size: medium;
}
.third-content a:hover {background-color: white;}

.third:hover .third-content{display: block;}

.header pre{
font-weight: bold;
font-size: 15px;
font-stretch: wider;
font-style: normal;
font-family: sans-serif;
}

</style>
</head>

<body style="background-color: white;">
<div class="header">
<pre>BTMLayout 7624941772 Marathahalli 9108126341 RajajiNagar 7349160004 Jayanagar 7337837626 KalyanNagar 9791440888 ElectronicCity 7823922182  IndiraNagar 7624941774 </pre>
<div class="header-try">
<pre>Hello ${username}</pre>
<pre><a href="LogoutServlet">Logout </a> &nbsp&nbsp <a href="orders.jsp">Your Orders </a></pre>

</div>
</div>



<div class ="first"> 
<a class ="first" href="welcome.jsp">Infotech Technologies</a></div>
<div class="second">
<a href="contactus.jsp">Contact us</a>
</div>


<div class="third">
<a href="#courses" >Courses</a>
<div class="third-content">
<a href="#">J2SE</a>
<a href="#">J2EE</a>
<a href="#">Spring</a>
<a href="#">Hibernate</a>
<a href="#">Python</a>
<a href="#">C++</a>
<a href="#">C</a></div>
</div>

<div class="third">
<a href="#courses" >Your Account</a>
<div class="third-content">
<a href="registerdemo.jsp">Register for Demo</a>
<a href="#">Register for Course</a>
<a href="orders.jsp">Your Orders</a>
</div>
</div>



<div class="second">
<a href="welcome.jsp">Home</a>
<a href="review.jsp">Reviews</a>
<a href="faculty.jsp">Faculty</a>
<a href="books.jsp">Books</a>

<a href="cart.jsp">Cart </a>
</div>
</body>
</html>