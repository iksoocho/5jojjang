<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type = "hidden" id= "mid" value="${loginId }">	




<script>

showlist();

function showlist (){
	
	let mid =document.getElementById("mid").value; 
    console.log(mid);
    
	fetch('drewwishList.do?mid='+ mid)
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
	})
	.catch(err => console.log(err));

};





</script>






</body>
</html>