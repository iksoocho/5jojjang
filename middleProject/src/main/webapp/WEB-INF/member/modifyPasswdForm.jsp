<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="modifyPasswd.do">
		<p>변경하실 비밀번호를 입력하세요</p>
		<input type="hidden" value="${mid}" name="mid">
		<input type="text" required="required" name="pass">
		<button type="submit">변경하기</button>
	</form>
</body>
</html>