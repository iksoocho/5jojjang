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
	<form action="modifyMember.do" method="post">
		<input type="hidden" name="mid" value="${loginId }">
		
		<table class="table">
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" ></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input  type="text" name="pass"></td>
			</tr>
			<tr>
				<th>연락처</th>
				<td><input  type="text" name="phone"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<input type="submit" class="btn btn-warning" value="수정">
					<input type="reset" class="btn btn-primary" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>