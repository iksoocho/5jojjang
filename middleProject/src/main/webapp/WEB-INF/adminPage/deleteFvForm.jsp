<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteadFvFORM</title>
</head>
<body>
	<h3>축제 삭제 화면</h3>
	<form action="deleteAdFv.do" method="post">
		<input type="hidden" name="fcode" value="${vo.fcode}">
		<!-- 아이디값 가져와서 수정하니까 value에 보드넘버로 가져옴. -->



		<!-- 파일첨부 처리하려면 multipart/form-data  -->
		<table border="1">
			<tr>
				<th>코드</th>
				<td><input type="text" name="fcode" value="${vo.fcode }"></td>
				<th>축제명</th>
				<td><input type="text" name="fname" value="${vo.fname}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><input type="text" name="fphone" value="${vo.fcontent}"></td>
				
			</tr>
		
		
		</table>



	</form>
</body>
</html>