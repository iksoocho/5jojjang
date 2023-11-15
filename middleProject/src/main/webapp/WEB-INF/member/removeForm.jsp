<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
</head>
<body>
	<h3>회원 탈퇴</h3>
	<form id="remove" action="removeMember.do" method="post">
		<input type="hidden" name="mid" value="${loginId }">
		<input type="hidden" name="pass" value="${loginPass }">
		
		<table class="table">
			
			<tr>
				<th>비밀번호 확인</th>
				<td><input  type="text" name="passCheck"></td>
			</tr>
			
			
			<tr>
				<td colspan="2" align="center">
					<input type="button" class="btn btn-warning" onclick="checkRemove()" value="탈퇴">
					<input type="reset" class="btn btn-primary" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
<script>
	function checkRemove(){
		var passCheck = document.getElementsByName("passCheck")[0].value;
		var pass = document.getElementsByName("pass")[0].value;
		
		if(passCheck == pass){
			if(confirm('회원 탈퇴 하시겠습니까?')){
    			alert('다시 로그인 해 주세요.');
    			document.getElementById("remove").submit();
    		}
		}else{
			alert('비밀번호를 확인해 주세요.')
		}
	}
</script>
</html>