<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function changeImage(){
	var image=document.getElementById('star1');
	if(image.src.match("yellowstar")){
		image.src="emptystar.png";
	}
	else{
		image.src="yellowstar.png";
	}
}
function changeImage1(){
	
	var image1=document.getElementById('star2');
	
	if(image1.src.match("yellowstar")){
		image1.src="emptystar.png";
	}
	else{
		image1.src="yellowstar.png";
	}
}
function changeImage2(){
	var image2=document.getElementById('star3');
	
	if(image2.src.match("yellowstar")){
		image2.src="emptystar.png";
	}
	else{
		image2.src="yellowstar.png";
	}
}
function noChange(){
	var image=document.getElementById('star1');
	if(image.src.match("emptystar")){
		image.src="yellowstar.png";
	}
	else{
		image.src="yellowstar.png";	
	}
	
}
function noChange1(){
	var image=document.getElementById('star2');
	if(image.src.match("emptystar")){
		image.src="yellowstar.png";
	}
	else{
		image.src="yellowstar.png";	
	}
	
}
function noChange2(){
	var image=document.getElementById('star3');
	if(image.src.match("emptystar")){
		image.src="yellowstar.png";
	}
	else{
		image.src="yellowstar.png";	
	}
	
}


</script>
</head>
<body>
<img id="star1" onclick="noChange()" src="emptystar.png" width="50" height="50" >
<img id="star2" onclick="noChange1()" src="emptystar.png" width="50" height="50">
<img id="star3" onclick="noChange2()" src="emptystar.png" width="50" height="50">
<img id="star4" onclick="noChange3()" src="emptystar.png" width="50" height="50">

</body>
</html>