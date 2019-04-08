<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ab</title>
<link rel="stylesheet" href="style.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<style type="text/css">
body{
margin: 0;
padding: 0;
background: #262626;
}
.rating{
position: absolute;
top: 50%;
left: 50%;
display: flex;
}
.rating input{
display: none;
}
.rating label{
display: block;
cursor: pointer;
width: 50px;

}
.rating label:before {
	content: '\f005';
	font-family: fontAwesome;
	position: relative;
	display: block;
	font-size: 50px;
	color: #101010;
}
.rating label:after {
	content: '\f005';
	font-family: fontAwesome;
	position: absolute;
	display: block;
	font-size: 50px;
	color: red;
	opacity: 0;
	top: 0;
}
.rating label:hover:after,.rating input:checked ~ label:after {
	opacity: 1;
}


</style>
</head>
<body>
<div class="rating">
<input type="radio" name="star" id="star"><label for="star1"></label>
<input type="radio" name="star" id="star1"><label for="star2"></label>
<input type="radio" name="star" id="star2"><label for="star3"></label>
<input type="radio" name="star" id="star3"><label for="star4"></label>
<input type="radio" name="star" id="star4"><label for="star5"></label>
</div>
</body>
</html>