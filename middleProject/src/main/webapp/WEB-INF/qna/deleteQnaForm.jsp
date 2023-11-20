<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteQnaForm</title>
</head>
<body>
	<h3>게시글 삭제 화면</h3>
	<form action="removeQna.do" method="post">
		<input type="hidden" name="qno" value="${vo.qno}">

		<table border="1">
			<tr>
				<th>번호</th>
				<td><input type="text" name="qno" value="${vo.qno }"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="qtitle" value="${vo.qtitle}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="qcontent" value="${vo.qcontent}"></td>
				</tr>
				<tr>
				<th>날짜</th>
				<td><input type="text" name="qwritedate" value="${vo.qwritedate}"></td>
			</tr>
			
	<%-- 			<th>비밀번호</th>
				
				
				<td><input type="password" name="qpass" value="${vo.qpass}"></td>
				
			</tr> --%>
			<tr>
			<td><input type="submit" value="네. 삭제하겠습니다."></td>
			</tr>
		</table>



	</form>
</body>
</html>