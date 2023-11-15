<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>Review 게시글 등록</h3>

	<form action="addQna.do" method="post" enctype="multipart/form-data"> <!-- 파일첨부 처리하려면(파일업로드할때) multipart/form-data  -->
		<table  border="1">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" value = "${logId }" readonly></td> <!-- 세션에서 값 읽어오도록!   -->
			</tr>
			
			<tr>
				<td colspan="2"><textarea cols="40" rows="5" name="content" ></textarea></td>
			</tr>
			
			<tr>
				<th>이미지파일첨부</th>
				<td><input type="file" name="image"></td> <!-- 라이브러리하나활용해서 쓰느 방식으로 go : cos 라이브러리 추가.  -->
			</tr>
			
			
			
		</table>

		<tr>
			<td colspan="2"><input type="submit" value="저장" > 
			<input type="reset" value="초기화"></td>
		</tr>

	</form>