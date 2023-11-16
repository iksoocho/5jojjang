<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="login" action="login.do" method="post">
	<table class="table">
	<tr>
		<th>아이디</th>
		<td><input type="text" class="form-control" name="mid"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="text" class="form-control" name="pass"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="button" onclick="loginCheck()" value="로그인"></td>
	</tr>
	
	</table>

	</form> 
<script>
	function loginCheck(){
		var mid = document.getElementsByName("mid")[0].value;
	    var pass = document.getElementsByName("pass")[0].value;
	    
	    if (mid === '' || pass === '') {
	        alert('값을 입력하세요.');
	    } else {
		fetch('checkLogin.do',{
	    	method: 'post',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		 	body: 'mid='+ mid + '&pass='+pass
	    })
	    .then(resolve=>resolve.json())
	    .then(result=>{
	    	console.log(result.retCode)
	    	 if(result.retCode=="NG"){
	    		alert('아이디 혹은 비밀번호를 확인해 주세요');
	    	}else{
	    		
	    	document.getElementById("login").submit();
	    	}
	    })
	    .catch(err=>console.log(err))
	    }
	}
</script>
</body>
</html>