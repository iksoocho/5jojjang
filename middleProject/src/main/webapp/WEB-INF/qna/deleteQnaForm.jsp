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
		<!-- 아이디값 가져와서 수정하니까 value에 보드넘버로 가져옴. -->



		<!-- 파일첨부 처리하려면 multipart/form-data  -->
		<table border="1">
			<tr>
				<th>번호</th>
				<td><input type="text" name="fcode" value="${vo.qno }"></td>
				<th>제목</th>
				<td><input type="text" name="fname" value="${vo.qtitle}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="fphone" value="${vo.qcontent}"></td>
				<th>날짜</th>
				<td><input type="text" name="fplace" value="${vo.qwriteDate}"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="image" name="fimage" value="${vo.qpass}"></td>
			</tr>
		
		</table>



	</form>
</body>
</html>