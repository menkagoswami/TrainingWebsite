<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Feedback</title>
<style type="text/css">
.firstreview{
box-sizing: content-box;
margin: 5px;
padding: 20px;
width:1200px;
height: 800px;
border: 5px solid blue;

}
span{
color: red;
}
.firstreview form{
align-self: center;
box-sizing: border-box;
font-weight: bolder;
font-size: medium;
font-family: serif;


}
.firstreview table ,tr,td{
padding: 10px;
}
.firstreview input[type=email],input[type=tel]{
width: 300px;
height: 20px;
}
.firstreview input[type=submit]{
width: 100px;
height: 30px;
color: green;
}
</style>
</head>
<body>
<div class="firstreview">

<form action="review" method ="post">
<table>
<tr>
<td style="text-decoration: underline;"><h2>Submit your review here</h2></td>
</tr>
<tr>
<td>Your rating<span> *</span></td>
</tr>
<tr>
<td><%@include file="staar.jsp" %></td>
</tr>
<tr>
<td>Category<span>*</span></td>
</tr>
<tr>
<td><select style="width: 200px;" required="required">
<option   value="Select">Please Select</option>
<option value="J2SE">J2SE</option>
<option value="J2EE">J2EE</option>
<option value="Spring">Spring</option>
<option value="Hibernate">Hibernate</option>
<option value="Python">Python</option>
<option value="C">C</option>
<option value="C++">C++</option>
</select></td>
</tr>
<tr>
<td>Describe your experience</td>
</tr>
<tr>
<td><textarea rows="5" cols="60" id="commentreview" name="commentreview" maxlength="250" required="required" ></textarea></td>
</tr>
<tr>
<td><span>*</span>Your Name</td>
</tr>
<tr>
<td><input type="text" id="name" name="name" required="required"><span id="nameErr"></span></td>
</tr>
<tr>
<td><span>*</span>Your Email</td>
</tr>
<tr>
<td><input type="email" id="email" name="email" required="required"><span id="emailErr"></span></td>
</tr>
<tr>
<td><span>*</span>Your Phone Number</td>
</tr>
<tr>
<td><input type="tel" id="phnno" name="phnno" maxlength="10" required="required"><span id="phnnoErr"></span></td>
</tr>
<tr>
<td><input type="submit" value="Submit Review" >
</td>
</tr>
</table>

</form>

</div>
</body>
</html>