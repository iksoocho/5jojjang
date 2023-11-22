<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   


<form action="modifyAdFvForm.do" name="modForm">
<button type="button" onclick="location.href='adFvList.do'"> ⫷ 이전 페이지로 </button>
	<input type="hidden" name="fcode" value="${fcode.fcode }">
	<table border="1" class="table">
	
		<tr>
			<th>축제코드</th>
			<td>${fcode.fcode }</td>
			<th>축제명</th>
			<td>${fcode.fname }</td>
			<th>연락처</th>
			<td>${fcode.fphone }</td>
		</tr>
		<tr>
			<th>위치</th>
			<td>${fcode.fplace }</td>
			<th>위도</th>
			<td>${fcode.flat }</td>
			<th>경도</th>
			<td>${fcode.flng }</td>
		</tr>
		<tr>

		<%-- 	<th>이미지</th>
			<c:if test="${!empty fcode.fimage }">
				<td><img style="align: center" width="100px" src="webapp/resources/images/${fcode.fimage }"></td>
			</c:if> --%>
			

			<th>img</th>
			<td><img src="resources/images/${fcode.fimage }" ></td>

		</tr>
		<tr>
			<th>시작날짜</th>
			<td>${fcode.fsdate }</td>
			<th>종료날짜</th>
			<td>${fcode.fedate }</td>
		</tr>
		<tr>
			<th>상세설명</th>
			<td colspan="4"><textarea rows="5" cols="150" >${fcode.fcontent }</textarea></td>
		</tr>
		<tr>
			<th>성인</th>
			<td>${fcode.fprice1 }</td>
			<th>청소년</th>
			<td>${fcode.fprice2 }</td>
		</tr>
	

		
		<tr>
			<td colspan="4" align="center">
				<input type="submit" value="✄수정" >
				<!-- <input type="button" value="삭제"> -->
			</td>
			</tr>	
				
				


	</table>
</form>

<script>

/* document.querySelector('input[type=button]').addEventListener('click', function(e){
	document.forms.modForm.action = 'deleteAdFv.do';
	document.forms.modForm.submit();
})
 */
</script>

