<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<form action="modifyQnaForm.do" name="qnaForm">
	<input type="hidden" name="rno" value="${rno.rno }">
	<table border="1" >
		<tr>
			<th>글번호</th>
			<td class="qno">${rno.rno }</td>
		</tr>
		
		<tr>
			<th>작성일시</th>
			<td>${rno.rwriteDate }"</td>
			
			<th>글제목</th>
			<td colspan="3">${rno.rtitle }</td>
		</tr>

		<tr>
			<td colspan="4"><textarea rows="5" cols="40" >${rno.rcontent }</textarea></td>
		</tr>


		<tr>
			<th>작성자</th>
			<td>${rno.rid }</td>
		</tr>
		

		
		<tr>
			<td colspan="4" align="center">
			
			<c:choose>
				<c:when test="${!empty logId && logId == qno.qid}">
					<input type="submit" value="수정">
					<input type="button" value="삭제">
				</c:when>
				 <c:otherwise>
					<input disabled type="submit" value="수정">
					<input disabled type="button" value="삭제">
				</c:otherwise>
			</c:choose>
			</td>
		</tr>

	</table>
</form>

