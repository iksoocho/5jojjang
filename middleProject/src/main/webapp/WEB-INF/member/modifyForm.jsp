<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원정보 수정화면</h3>
	<form id="modify" action="modifyMember.do" method="post">
		<input type="hidden" name="mid" value="${loginId }">
		
		<table class="table">
			
			<tr>
				<th>비밀번호</th>
				<td><input  type="password" name="pass"></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input  type="password" name="checkPass" ></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="button" class="btn btn-warning" onclick="checkModify()" value="수정">
					<input type="reset" class="btn btn-primary" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
<script>
	function checkModify(){
		var checkPass = document.getElementsByName("checkPass")[0].value;
	    var pass = document.getElementsByName("pass")[0].value;
	    var mid = document.getElementsByName("mid")[0].value;
	   
	    
	    if (pass === ''|| checkPass === '') {
	        alert('값을 입력하세요.');
	    } else {
		fetch('checkModify.do',{
	    	method: 'post',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		 	body:'&pass='+pass+'&mid='+mid
	    })
	    .then(resolve=>resolve.json())
	    .then(result=>{
	    	console.log(result.retCode)
	    	if(pass != checkPass){
	    		alert('비밀번호가 같지 않습니다.')
	    	}else{
	    		
	    	 if(result.retCode=="OK"){
	    		if(confirm('회원 정보를 수정 하시겠습니까?')){
	    			alert('다시 로그인 해 주세요.')
	    			document.getElementById("modify").submit();
	    		
	    		}
	    	}
	    		
	    	}
	    	
	    		
	    	
	    })
	    .catch(err=>console.log(err))
	    }
	}
</script>
</html>