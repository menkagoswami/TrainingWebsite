<%@ page language="java" contentType="text/html; charset=UTF-8"
	session="true" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@page import="javax.print.attribute.standard.DateTimeAtCreation"%>
<%@page import="java.sql.Date"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart details</title>
<style type="text/css">
.firstcart{
box-sizing:content-box;

  padding: 30px;  
  border: none;

overflow: visible;
position: relative;

}

 .firstcart table ,th,tr,td{
align-self: center;
border:1px solid black;
border-collapse: collapse;
border-color: green;
color: dodgerblue;
}
.firstcart tr,td,th{
padding: 20px;
}
.firstcart table{
margin: 50px;
}
</style>
</head>
<body>
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/blog" user="root" password= ""/>
<sql:query  dataSource="${db}" var="rs">
 
select name,quantity,price,bookdescr from cart where email='<%=session.getAttribute("email").toString() %>' and paidstatus='0';
</sql:query>
<div class="firstcart">
<table >
<tr>
<th>CustomerName</th>
<th>Quantity</th>
<th>Price</th>
<th>About Product</th>
</tr>
<c:forEach var="book" items="${rs.rows}">

<tr>
<td><c:out value="${book.name}"></c:out></td>
<td><c:out value="${book.quantity}"></c:out></td>
<td><c:out value="${book.price}"></c:out></td>
<td><c:out value="${book.bookdescr}"></c:out></td>

</tr>
</c:forEach>

<tr>
<td><a href="address.jsp"><input type="submit" value="Proceed for payment"> </a></td>
<td></td>
<td></td>
<td><a href="books.jsp"><input type="submit" value="Continue Shopping"></a></td>
</tr>
</table>
</div>
</body>
</html>