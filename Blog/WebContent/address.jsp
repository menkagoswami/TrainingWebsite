<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shipping Address</title>
<style type="text/css">
.firstshipping{
 box-sizing: border-box;
 width: 500px;
 height: 600px;
 border: 1px solid green;

}
.firstshipping table{
margin: 20px;
align-content: center;
border: medium;
border-collapse: collapse;
color: green;
}
.firstshipping tr,th,td{
padding: 6px;
}
input[type=text],input[type=tel],input[type=number]{
width: 300px;
height: 40px;
border: 1px solid orange;
text-align: center;
}
input[type=submit]{
width: 200px;
height: 30px;
color: green;

}
</style>
</head>
<body>
<div class="firstshipping">
<h1>Shipping address</h1>
<form action="payment" method="post">
<table>
<tr>
<td>Name</td><td><input type="text" name="name" id="name" placeholder="Full name" required="required"></td>
</tr>
<tr>
<td>Contact number</td><td><input type="tel" name="contactno" id="phnno" placeholder="Enter contact no" required="required" maxlength="10"></td>
</tr>
<tr>
<td>City</td><td><input type="text" name="city" id="city" placeholder="Town/City" required="required"></td>
</tr>
<tr>
<td>State</td><td><input type="text" name="state" id="state" placeholder="State" required="required"></td>
</tr>
<tr>
<td>Address</td><td><input type="text" name="address1" id="address1" placeholder="Flat,Houseno,Apartment,Buiding,Comapny" required="required"></td>
</tr>
<tr>
<td>Address</td><td><input type="text" name="address2" id="address2" placeholder="Area,Street ,Colony ,Village" required="required"></td>
</tr>
<tr>
<td>Pin</td><td><input type="number" name="pin" id="pin" placeholder="Pin Code" required="required" maxlength="6"></td>
</tr>
</table>
<table style="float: none;">
<tr>
<td><input type="submit" value="Deliver to this address"></td>
</tr>
</table>
</form>
</div>
</body>
</html>