<%@page import="javax.print.attribute.standard.DateTimeAtCreation"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
  <!DOCTYPE html>
<html>  
<head>  
<title>Infotech-reviews</title>  
<style type="text/css">

.secondre{
margin :40px;
font-family:  serif;
font-size: medium;
font-weight: bolder;
color: green;

}

.tip {
  width: 0px;
  height: 0px;
  position: absolute;
  background: transparent;
  border: 10px solid #ccc;
}

.tip-up {
  top: -25px; /* Same as body margin top + border */
  left: 10px;
  border-right-color: transparent;
  border-left-color: transparent;
  border-top-color: transparent;
}

.tip-down {
  bottom: -25px;
  left: 10px;
  border-right-color: transparent;
  border-left-color: transparent;
  border-bottom-color: transparent;  
}

.tip-left {
  top: 10px;
  left: -25px;
  border-top-color: transparent;
  border-left-color: transparent;
  border-bottom-color: transparent;  
}

.tip-right {
  top: 10px;
  right: -25px;
  border-top-color: transparent;
  border-right-color: transparent;
  border-bottom-color: transparent;  
}

.dialogbox .body {
  position: relative;
  max-width: 300px;
  height: auto;
  margin: 4px 4px;
  padding: 5px;
  background-color: #DADADA;
  border-radius: 3px;
  border: 5px solid #ccc;
}

.body .message {
  min-height: 30px;
  border-radius: 3px;
  font-family: Arial;
  font-size: 14px;
  line-height: 1.5;
  color: #797979;
}

</style>
</head>  
<body>  
 <%@include file="header.jsp" %>  
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/blog"  
     user="root"  password= ""/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from reviews;  
</sql:query>  
<c:forEach var="table" items="${rs.rows}">  

 <div class="firstre">
 <div class="secondre" >
<c:out value="${table.name}"/>
</div>
</div>
<div class="dialogbox">
    <div class="body">
      <span class="tip tip-up"></span>
      <div class="message">
        <span> <c:out value="${table.comments}"/>  </span>
      </div>
    </div>
  </div>
</c:forEach> 
<%@include file="footerreview.jsp" %> 
</body>  
</html>  