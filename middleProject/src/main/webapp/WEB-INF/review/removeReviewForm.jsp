<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeReviewForm</title>
</head>
<body>
	<h3>Review  삭제 폼</h3>
	<form action="removeReview.do" method="post">
		<input type="hidden" name="rno" value="${vo.rno}"> <!-- 아이디값 가져와서 수정하니까 value에 보드넘버로 가져옴. -->
		
		
		<!-- 파일첨부 처리하려면 multipart/form-data  -->
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${vo.qtitle}"></td>
				<!-- vo 값들을 넣어주는거임. -->
			</tr>
			
			<tr>
				<td colspan="2"><textarea cols="40" rows="5"
						name="content">${vo.qcontent}</textarea></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" value="${logId}"></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="password"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="삭제"> 
				<input type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>
</body>
</html>