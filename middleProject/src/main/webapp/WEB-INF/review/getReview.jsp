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
    width: 400px;
    height: 300px;
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   

<form action="modifyReviewForm.do" name="reviewForm">

	<input type="hidden" name="rno" value="${rno.rno }">
	<input type="hidden" name="mid" value="${loginId }">
	
	<h2> ✅ 후기 </h2>
	<table border="1" >
		<tr>
			<th>글번호</th>
			<td class="rno">${rno.rno }</td>
				
			<th>작성자</th>
			<td>${rno.rid }</td>
		
		</tr>
		
		
		<tr>	
			<th>글제목</th>
			<td colspan="3">${rno.rtitle }</td>
		</tr>

		<tr>
		<th>내용</th>
			<td colspan="4"><textarea rows="5" cols="60" >${rno.rcontent }</textarea></td>
		</tr>


	
		
		<tr>
			<th>이미지</th>
			<c:if test="${!empty rno.rimage }">
				<td colspan="4"><img style="align: center" width="400px" src="reviewResources/images/${rno.rimage}"></td>
			</c:if>
		
		</tr>
		
		<tr>
			
			<td colspan="4" align="center">
			
			<c:choose>

			
				<c:when test="${(!empty loginId && loginId == rno.rid) || responsibility == ('admin')}"> 
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







<button type="button" onclick="location.href='reviewList.do'"> ⫷ 이전 페이지로 </button>


<script>

document.querySelector('input[type=button]').addEventListener('click', function(e){
	

		if (confirm("정말 삭제 하시겠습니까?")){

		 	alert('후기 게시글을 삭제합니다.')
		 	document.forms.reviewForm.action = 'removeReview.do';
			document.forms.reviewForm.submit();
		}else{
			alert('후기 게시글이 삭제 되지 않았습니다.')
		}
	
	
})



</script>




