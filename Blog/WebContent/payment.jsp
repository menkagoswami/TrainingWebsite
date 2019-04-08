<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment details</title>
</head>
<body>
<h1>How would you like to Pay</h1>
<form action="status" method="post">
<table>
<tr>
<td><input type="radio" name="mastercard" >Credit Card</td>
<td><select style="width: 200px;">
<option value="All visa/MasterCard Debit card" >All visa/MasterCard Debit card</option>
<option value="All Rupay Debit card">All Rupay Debit card</option>
<option value="All SBIMaestro Debit card">All SBIMaestro Debit card</option>
<option value="All CitiBank Maestro Debit card">All CitiBank Maestro Debit card</option>
</select></td>
</tr>
<tr>
<td><input type="radio" name="mastercard" >Debit Card</td>
<td><select style="width: 200px;">
<option value="All visa/MasterCard Debit card" >All visa/MasterCard Debit card</option>
<option value="All Rupay Debit card">All Rupay Debit card</option>
<option value="All SBIMaestro Debit card">All SBIMaestro Debit card</option>
<option value="All CitiBank Maestro Debit card">All CitiBank Maestro Debit card</option>
</select></td>
</tr>
<tr>
<td><input type="radio" name="mastercard" >Net Banking</td>
<td><select style="width: 200px;">
<option value="HDFC Bank" >HDFC Bank</option>
<option value="Axix Bank">Axis Bank</option>
<option value="ICICI Bank">ICICI Bank</option>
<option value="SBI Bank">SBI Bank</option>
</select></td>
</tr>
<tr>
<td><a href="confirmpaid.jsp"><input type="submit" value="Proceed for payment"> </a></td>
</tr>
</table>
</form>

</body>
</html>