<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 가입</h3>
	<form id="join" action="join.do" method="post">
		<table class="table">
			<tr>
				<th>이름</th>
				<td><input type="text" class="form-control" name="name"></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" class="form-control" name="mid"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" class="form-control" name="pass" ></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input type="text" class="form-control" name="checkPass" ></td>
			</tr>
			<tr>
				<th>주민 등록 번호</th>
				<td><input type="text" class="form-control" name="ssn"></td>
			</tr>

			<tr>
				<th>연락처</th>
				<td><input type="text" class="form-control" name="phone"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" class="form-control" name="email"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				 
				<input type="button" onclick="checkNull()" value="회원가입">
				<input type="reset" class="btn btn-warning" value="초기화"></td>
			</tr>
		</table>

	</form>
	
	<script>
	function checkNull() {
	   var name = document.getElementsByName("name")[0].value;
	    var mid = document.getElementsByName("mid")[0].value;
	    var pass = document.getElementsByName("pass")[0].value;
	    var checkPass = document.getElementsByName("checkPass")[0].value;
	    

	    // 필수 입력 필드 검사
	     if (name === '' || mid === '' || pass === '') {
	        alert('값을 입력하세요.');
	    } else {
	        // 유효성 검사 통과 시 폼 제출
	       
	        fetch('checkId.do',{
		    	method: 'post',
				headers: {'Content-Type': 'application/x-www-form-urlencoded'},
				body: 'mid='+ mid
		    })
		    .then(resolve=>resolve.json())
		    .then(result=>{
		    	console.log(result.retCode)
		    	if(result.retCode=="NG"){
		    		alert('중복된 아이디 입니다.');
		    		return false;
		    	}else{
		    		if(pass!=checkPass){
		    			alert('비밀번호가 일치하지 않습니다.')
		    		}else{
		    			if(confirm("회원가입 하시겠습니까?")){
				    	 	alert('회원 가입 성공')
				    		document.getElementById("join").submit();
				     	}else{
				    	 alert('취소');
				     	}
		    		}
		    		
		    	}
		    })
		    .catch(err=>console.log(err))
	    }  
	    
	     
	   
	    
	     
	}
	</script>
</body>

</html>