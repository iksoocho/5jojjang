<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
:root {
  --padding: 60px;
}
.box {
  position: relative;
  margin: 50px auto;
  width: 400px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: var(--padding);
  background-color: #c4dfff;
  border-radius: 7px;
}

.box input,
.box button {
  padding: 15px;
  font-size: 1.2em;
  border: none;
}
.box input {
  margin-bottom: 25px;
}
.box button {
  background-color: #ffe4c4;
  color: #547fb2;
  border-radius: 4px;
}

.sign-up-box {
  position: absolute;
  width: 70px;
  height: 70px;
  border-radius: 50%;
  background-color: #86acd9;
  display: flex;
  justify-content: center;
  align-items: center;
  top: var(--padding);
  right: -35px;
  cursor: pointer;
  transition: all 500ms ease-in-out;
}
.sign-up-box i {
  font-size: 1.9em;
  color: #fff;
}

/*.active*/

.sign-up-box.active {
  top: 0;
  bottom: 0;
  right: 0;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: stretch;
  padding: 30px;
  cursor: default;
  border-radius: 7px;
}

.sign-up-box.active input,
.sign-up-box.active button {
  padding: 15px;
  font-size: 1.2em;
  border: none;
  margin: 0;
}
.sign-up-box.active input {
  margin-bottom: 10px;
}

.sign-up-box.active > span {
  position: absolute;
  width: 30px;
  height: 30px;
  background-color: #fff;
  border-radius: 50%;
  top: 5px;
  right: 30px;
  display: flex;
  justify-content: center;
  align-items: center;
  color: #547fb2;
  font-weight: 700;
  cursor: pointer;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="login" action="login.do" method="post">
	<div class="box">
  <input type="email" placeholder="ID" name="mid" />
  <input type="password" placeholder="Password" name="pass"/>
  <button onclick="loginCheck()">Sign in</button>

  <div class="sign-up-box">
    <i class="material-icons"><a href="joinForm.do">create</a></i>
  </div>
</div>
	<!-- <table class="table">
	<tr>
		<th>아이디</th>
		<td><input type="text" class="form-control" name="mid"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" class="form-control" name="pass"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="button" onclick="loginCheck()" value="로그인"></td>
	</tr>
	
	</table> -->

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