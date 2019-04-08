<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Books</title>
<style type="text/css">

.firstbook{
overflow: visible;
box-sizing: border-box;
}

.firstbook input[type=text]{
	color: black;
	font-weight: bolder;
	font-size: medium;
	border: none;
	width: 1500px;
}
</style>
</head>

<body>
<%@ include file="header.jsp" %>
<div class="firstbook">

<%String username=(String)session.getAttribute("username");%>

<table>
<tr>
<td><a href="bookview.jsp?value=corejava&price=500&username="<%=username%>>
<img alt="corejava" src="corejava.jpeg" width="200px" name="corejava" ></a></td>
<td><input type="text" name="bookdescr" value="Core JAVA Interview Questions You'll Most Likely Be Asked: Volume 8 (Job Interview Questions)"> </td>
</tr>
</table>
</div>
</body>
</html>