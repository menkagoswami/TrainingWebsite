<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book View</title>
<style type="text/css">
.firstbook1 input[type=submit] {
	font-weight: bolder;
	width: 150px;
	height:20px;
	color: black;
}

.firstbook table,tr,td{

padding: 5px;
}

</style>
</head>
<body>
<%@ include file="header.jsp" %>
<%String username=(String)session.getAttribute("username");%>
<form action="cart" method="post">
<table class="firstbook" align="left" >
<tr>
	<td><img src="<%=request.getParameter("value")%>.jpeg"></td>
	<td>Price<%=request.getParameter("price") %>  </td>
	<td>Select quantity:<select name="quantity">
<option value="1" id="1" >1</option>
<option value="2" id="1">2</option>
<option value="3" id="1">3</option>
<option value="4" id="1">Maximum Limit:4</option>
</select></td>
<td><input type="text" hidden="true" name="price" id="price" value=<%=request.getParameter("price") %>></td>
<td><img hidden="true"  src="<%=request.getParameter("value") %>.jpeg" width="200px" alt="book" ></td>
<td><input type="submit" value="Add to cart">
</tr>
<tr>
<td><input type="button" hidden="true" name="price" id="price" value=<%=request.getParameter("price") %>></td>
<td><input hidden="true"  value="<%=request.getParameter("value") %>" name="book" ></td>
</tr>
<tr>
<td><input type="text" hidden="true" value="0" name="paidstatus"></td>
</tr>
</table>
</form>
</body>
</html>