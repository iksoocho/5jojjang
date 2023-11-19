<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증번호 입력</title>
</head>
<body>
	<div>
		<p>전송받은 인증번호를 입력해주세요</p>
		<input type="hidden" id="mid" value="${mid}">
		<input type="hidden" id="ckNumber" value="${crtfcNo}">
		<input type="text" id="ckNumberInput">
		<button type="button" onclick="ckNumber()">인증하기</button>
	</div>
	
	<script>
		function ckNumber(){
			
			let ckNum = document.getElementById("ckNumber").value;
			let ckNumInput = document.getElementById("ckNumberInput").value;
			let mid = document.getElementById("mid").value;
			console.log(ckNum);
			console.log(ckNumInput);
			if(ckNum == ckNumInput){
				alert("인증되었습니다.");
				//아이디 보내기
				location.href="modifyPasswdForm.do?mid="+mid;
			}else{
				alert("인증번호 틀렸습니다. 다시 인증번호를 재발급해주세요");
				//window.close();
				//location.href="loginForm.do";
			}
		}
	</script>
</body>
</html>