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
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm"%>

<h3>Review 게시글 등록</h3>


	<form action="addReview.do" method="post" enctype="multipart/form-data"> <!-- 파일첨부 처리하려면(파일업로드할때) multipart/form-data  -->
		
		<input type="hidden" name="vo" value="${vo.rno }"> -
		
		<table  border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="rtitle"></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				 <td><input type="text" name="rid" value ="${loginId }" readonly></td>  <!-- 세션에서 값 읽어오도록!   -->
				
			</tr>
			

			<tr>
			<th>내용</th>
				<td colspan="2"><textarea cols="40" rows="5" name="rcontent" ></textarea></td>
			</tr>
			
			<tr>
				<th>이미지</th>
				<td><input type="file" name="rimage"></td>
			
			</tr>
			
				<tr>
				<th>날짜</th>
				<!-- <td><input type="text" name="rwritedate" value="{"></td> -->
				<td><fm:formatDate value="${vo.rwritedate }" pattern="yyyy-MM-dd HH:mm:ss"></fm:formatDate></td>
			
			</tr>
			

		<tr>
			<td align="center" colspan="2"><input type="submit" value="저장" > 
			<input type="reset" value="초기화"></td>
		</tr>
		</table>


	</form>