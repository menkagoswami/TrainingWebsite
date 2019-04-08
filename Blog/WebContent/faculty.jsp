<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty</title>
<style type="text/css">
.firstfac{
box-sizing:content-box;
  padding: 30px;  
  border: none;
overflow: visible;
}
.firstfac table, td, th{
border: 1px solid black;
border-collapse: collapse;

}
.firstfac tr,td,th{
padding: 20px;
}
.firstfac table{
margin: 50px;
}
.firstfac a{
color: dodgerblue;
text-decoration: underline;
}
 pre{
font-weight: bold;
font-size: medium;
font-stretch: wider;
font-style: normal;
font-family: sans-serif;
}

</style>
</head>

<body>
<%@include file="header.jsp" %>  
<div class="firstfac">
<table>
<tr>
<th>Faculty</th>
<th>Expertise in</th>
<th>Email id</th>
<th>Link to Video lecture of faculties</th>
<th>Demo timings</th>
</tr>
<tr>
<td>Kartik</td>
<td>J2EE,J2SE,Python,JS,Angular JS</td>
<td>kartik@gmail.com</td>
<th><a href="#default">Link to notes of Kartik</a></th>
<th>Saturday(11:00pm - 12:00)</th>
</tr>
<tr>
<td>Neha</td>
<td>J2SE,J2EE</td>
<td>neha@gmail.com</td>
<th><a href="#default">Link to notes of Neha</a></th>
<th>Sunday(11:00pm - 12:00)</th>
</tr>
<tr>
<td>Subramanium</td>
<td>Hadoop,C++,C</td>
<td>subramanium@gmail.com</td>
<th><a href="#default">Link to notes of Subramanium</a></th>
<th>Saturday(01:00pm - 02:00)</th>
</tr>
<tr>
<td>Swati</td>
<td>Spring,Hibernate</td>
<td>swati@gmail.com</td>
<th><a href="#default">Link to notes of Swati</a></th>
<th>Saturday(01:00pm - 02:00)</th>
</tr>
<tr>
<td>Bhaskar</td>
<td>Sql,Nosql</td>
<td>bhaskar@gmail.com</td>
<th><a href="#default">Link to notes of Bhaskar</a></th>
<th>Saturday(01:00pm - 02:00)</th>
</tr>
</table>

<pre>We at Infotech technologies provide you the facility of taking demo classes online .You can access the link above and go through the videos of the faculties and
if you like the demo class you can join the classes or you can purchase the online tutorials of the concerned faculty.
 </pre>
</div>

</body>
</html>