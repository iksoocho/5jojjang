<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <style>
table {
    width: 700px;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
}

caption {
    font-weight: bold;
}

table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: #333;
    color: #fff;
    padding: 10px;
}

img {
    width: 90px;
    height: 90px;
}

.view,
.delete {
    border: none;
    padding: 5px 10px;
    color: #fff;
    font-weight: bold;
}

.view {
    background-color: #03A9F4;
}

.delete {
    background-color: #E91E63;
}

.tablefoot {
    padding: 0;
    border-bottom: 3px solid #009688;
}
</style>
   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>modifyReviewForm.jsp</title>
</head>
<body>
	<h3>✔ 리뷰 수정하기 </h3>
	
	
	
	<form action="modifyReview.do" method="post" enctype="multipart/form-data"> <!-- enctype="multipart/form-data"이거 파일수정안하니까 얘는 빼야지.. -->
		<input type="hidden" name="rno" value="${vo.rno}"> <!-- 아이디값 가져와서 수정하니까 value에 보드넘버로 가져옴. -->
		<input type="hidden" name="rid" value="${loginId }">
		<!-- 파일첨부 처리하려면 multipart/form-data  -->
		<table border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${vo.rtitle }"></td>
				<!-- vo 값들을 넣어주는거임. -->
			</tr>
			
			<tr>
			<th>내용</th>
				<td colspan="2"><textarea cols="40" rows="5"
						name="content">${vo.rcontent }</textarea></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" value="${loginId }" readonly></td>
			</tr>
			
			<tr>
				<th>이미지</th>
				<td><input type="file" name="image"></td>
			</tr>
			
			<tr>
				<th>수정날짜</th>
				<!-- <td><input type="text" name="rwritedate" value="{"></td> -->
				<td><fm:formatDate value="${vo.rlastUpdate }" pattern="yyyy-MM-dd HH:mm:ss"></fm:formatDate></td>
			
			</tr>

			<tr align="center">
				<td colspan="2"><input type="submit" value="수정"> 
				<input type="reset" value="초기화"></td>
			</tr>
		</table>
	</form>


</body>
</html>