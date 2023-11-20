<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>modifyForm.jsp</title>
</head>
<body>
	<h3>게시글 수정 화면</h3>
	
	${vo}
	
	<form action="modifyQna.do" method="post" > <!-- enctype="multipart/form-data"이거 파일수정안하니까 얘는 빼야지.. -->
		<input type="hidden" name="qno" value="${vo.qno}"> 
		
		<input type="hidden" name="mid" value="${loginId }">
		
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="qtitle" value="${vo.qtitle }"></td>
			
			</tr>
			
			<tr>
				<td colspan="2"><textarea cols="40" rows="5"
						name="qcontent">${vo.qcontent }</textarea></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" value="${loginId }"></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="qpass" value="${qpass }"></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="수정"> 
				<input type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>


</body>
</html>