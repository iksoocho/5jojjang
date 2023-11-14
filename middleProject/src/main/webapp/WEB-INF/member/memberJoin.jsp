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
	<form action="join.do" method="post" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<th>이름</th>
				<td><input type="text" class="form-control" name="name" ></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><input type="text" class="form-control"   name="id" ></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="text" class="form-control"   name="pass" ></td>
			</tr>
			<tr>
				<th>주민 등록 번호</th>
				<td><input type="text" class="form-control"   name="ssn" ></td>
			</tr>
			
			<tr>
				<th>연락처</th>
				<td><input type="text" class="form-control"   name="phone" ></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" class="form-control"   name="email" ></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" class="btn btn-primary" value="회원가입"> 
				<input type="reset" class="btn btn-warning" value="초기화">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>