<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fm"%>

<h3>Review 게시글 등록</h3>


	<form action="addReview.do" method="post" enctype="multipart/form-data"> <!-- 파일첨부 처리하려면(파일업로드할때) multipart/form-data  -->
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
				<td><input type="text" name="rwritedate"></td>
			
			</tr>
			

		<tr>
			<td colspan="2"><input type="submit" value="저장" > 
			<input type="reset" value="초기화"></td>
		</tr>
		</table>


	</form>