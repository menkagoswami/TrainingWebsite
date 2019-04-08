<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Star</title>
<script type="text/javascript">

function reset(){
	
	image.src="emptystar.png";
	image1.src="emptystar.png";
	image2.src="emptystar.png";
	image3.src="emptystar.png";
	image4.src="emptystar.png";
	
	return true;
}
function changeImage(){
	var image=document.getElementById('star1');
	if(image.src.match("yellowstar")){
		image.src="yellowstar.png";
	}
	else{
		image.src="yellowstar.png";
	}
}
function changeImage1(){
	
	var image1=document.getElementById('star2');
	changeImage();
	if(image1.src.match("yellowstar")){
		image1.src="emptystar.png";
	}
	else{
		image1.src="yellowstar.png";
	}
}
function changeImage2(){
	var image2=document.getElementById('star3');
	changeImage1();
	if(image2.src.match("yellowstar")){
		image2.src="emptystar.png";
	}
	else{
		image2.src="yellowstar.png";
	}
}
function changeImage3(){
var image3=document.getElementById('star4');
changeImage2();
	if(image3.src.match("yellowstar")){
		image3.src="emptystar.png";
	}
	else{
		image3.src="yellowstar.png";
	}
}
function changeImage4(){
	var image4=document.getElementById('star5');
	changeImage3();
	if(image4.src.match("yellowstar")){
		image4.src="emptystar.png";
	}
	else{
		image4.src="yellowstar.png";
	}
}

</script>
</head>
<body>
<img id="star1" onclick="if(reset()){changeImage()}" src="emptystar.png" width="50" height="50">
<img id="star2" onclick="if(reset()){changeImage()}" src="emptystar.png" width="50" height="50">
<img id="star3" onclick="if(reset()){changeImage()}" src="emptystar.png" width="50" height="50">
<img id="star4" onclick="if(reset()){changeImage()}" src="emptystar.png" width="50" height="50">
<img id="star5" onclick="if(reset()){changeImage()}" src="emptystar.png" width="50" height="50">
</body>
</html>