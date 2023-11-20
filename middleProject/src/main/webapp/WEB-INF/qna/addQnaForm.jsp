<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>Qna게시글 등록</h3>

	
	<form action="addQna.do" method="post" > <!-- 파일첨부 처리하려면(파일업로드할때) multipart/form-data  -->
	<input type = "hidden" name="qno" value="${qno.qno }">
	<input type = "hidden" name="qid" value="${loginId}">
	
		<table  border="1">
		
			<tr>
				<th>제목</th>
				<td><input type="text" name="qtitle"></td>
			</tr>
			
			<tr>
				<th>작성자</th>
				<td><input type="text" name="qid" value="${loginId}"  readonly></td> <!-- 세션에서 값 읽어오도록!   -->
			</tr>
			
			<tr>
				<th>내용</th>
				<td colspan="2"><textarea cols="40" rows="5" name="qcontent" ></textarea></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="qpass"></td>
			</tr>
		<tr>
			<td colspan="2"><input type="submit" value="저장" > 
			<input type="reset" value="초기화"></td>
		</tr>
		</table>


	</form>