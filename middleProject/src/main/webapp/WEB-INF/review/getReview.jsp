<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<form action="modifyReviewForm.do" name="reviewForm">

	<input type="hidden" name="rno" value="${rno.rno }">
	<input type="hidden" name="mid" value="${loginId }">
	<table border="1" >
		<tr>
			<th>글번호</th>
			<td class="rno">${rno.rno }</td>
		</tr>
		
		<tr>
			<th>작성일시</th>
			<td>${rno.rwritedate }"</td>
			
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
			<th>이미지</th>
			<c:if test="${!empty rno.rimage }">
				<td><img style="align: center" width="80px" src="reviewResources/images/${vo.rimage}"></td>
			</c:if>
		
		</tr>
		
		<tr>
			<th>내용</th>
			<td colspan="4" align="center">
			
			<c:choose>
				<%-- <c:when test="${!empty logininId && logininId == rno.rid}"> --%>
				<c:when test="${!empty loginId}">
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






<p><a href = "reviewList.do"> 이전 페이지로 이동 </a>

<script>

document.querySelector('input[type=button]').addEventListener('click', function(e){
	
/* 	let pmt = prompt('비밀번호를 입력하세요!');
	let pwd = Number(pmt);
	
	if(pwd == ${qno.qpass}){
		document.forms.qnaForm.action = 'removeQnaForm.do';
		document.forms.qnaForm.submit();
	}else{
		alert("비밀번호가 틀렸습니다.");
	} */
	
	
 	document.forms.reviewForm.action = 'removeReviewForm.do';
	document.forms.reviewForm.submit();
	 
	
})

</script>




