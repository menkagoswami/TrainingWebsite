<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Registration</title>
<style type="text/css">
span {
	color: red;
}
</style>
</head>

<body>
	<h2>Dear student,you can register online for a demo class for the
		any available course and tutor</h2>
	<h3>Registration for Demo</h3>
	<form action="registerdemo" method="get">
	<table>
		<tr>
			<td>Name<span>* </span>
			</td>
			<td><input type="text" name="name" id="name"
				placeholder="Enter you name" required="required"></td>
		</tr>
		<tr>
			<td>Email<span>*</span></td>
			<td><input type="email" name="emailto" id="email"
				placeholder="Enter your registered email" required="required"></td>
		</tr>
		<tr>
			<td>Course<span>*</span></td>
			<td><select name="course" required="required">

					<option value="SELECT">--SELECT--</option>
					<option value="J2SE">CORE JAVA</option>
					<option value="J2EE">ADVANCED JAVA</option>
					<option value="JS">JAVA SCRIPT</option>
					<option value="PYTHON">PYTHON</option>
			</select></td>
		</tr>
		<tr>
			<td>Tutor<span>*</span></td>
			<td><select name="tutor" required="required">

					<option value="SELECT">--SELECT--</option>
					<option value="Karthik">Karthik</option>
					<option value="Neha">Neha</option>
					<option value="Subramanium">Subramanium</option>
					<option value="Swati">Swati</option>
			</select></td>
		</tr>

<tr>
<td><input type="submit" value="Register"></td>
</tr>
<tr>
<td><input type="email" hidden="true" value="nehawami27@gmail.com" name="emailfrom"> </td>
</tr>
	</table>
	</form>
</body>
</html>