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

.box input {
	padding: 15px;
	font-size: 1.2em;
	border: none;
	border-radius: 10px;
}

.box button {
	/* padding: 15px;
  font-size: 1.2em;
  border: none; */
	padding: 10px;
	height: 50px;
	background: #ffe4c4;
	border-radius: 10px;
	border: none;
}

.box button:hover {
	background: #21825B;
}

.box input {
	margin-bottom: 25px;
}
/* .box button {
  background-color: #ffe4c4;
  color: #547fb2;
  border-radius: 4px;
} */
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

.sign-up-box.active input, .sign-up-box.active button {
	padding: 15px;
	font-size: 1.2em;
	border: none;
	margin: 0;
}

.sign-up-box.active input {
	margin-bottom: 10px;
}

.sign-up-box.active>span {
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
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<!-- <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head> -->
<body>
	<form id="login" action="login.do" method="post">
		<div class="box ">
			<input type="text" placeholder="ID" name="mid" /> <input
				type="password" placeholder="Password" name="pass" />
			<div class="d-flex justify-content-between">
				<button onclick="loginCheck()" style="width: 100px">Sign in</button>
				<button onclick="findIdPasswd()" type="button">아이디/비밀번호 찾기</button>
			</div>
			
 			
 			
			<div class="sign-up-box">
				<i class="material-icons"><a href="joinForm.do">create</a></i>
			</div>
		</div>


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
	    		 
	    		 
	    		 fetch('checkId.do',{
	    		    	method: 'post',
	    				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
	    			 	body: 'mid='+ mid 
	    		    })
	    		    .then(resolve=>resolve.json())
	    		    .then(result=>{
	    		    	if(result.retCode=="OK"){
	    		    		alert('존재하지 않는 아이디 입니다.')
	    		    	}else{
	    		    		alert('비밀번호가 틀렸습니다.')
	    		    	}
	    		    })
	    		    .catch(err=>console.log(err))
	    		 
	    		 
	    	}else{
	    		if(mid == 'admin'){
	    			alert('관리자 님 환영합니다.')
	    		}else{
	    			
	    		alert(mid+' 님 환영합니다.')
	    		}
	    		document.getElementById("login").submit();
	    	}
	    })
	    .catch(err=>console.log(err))
	    }
	}
	
	function findIdPasswd(){
		//window open으로 추후에 변경
		window.open("SelectFindIdOrPasswd.do", "비밀번호 찾기", "width=600,height=300")
		//location.href = "findIdpasswdForm.do";
	}
	
	
	 
	
	
</script>
</body>
</html>