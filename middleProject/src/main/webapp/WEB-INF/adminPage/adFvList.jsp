<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- <form action="modifyQnaForm.do" name="qnaForm"> -->
<form>
<%-- <input type="hidden" name="no" value="${qno.qno }"> --%>

<table border="1" >


<h3> 관리자 - 페스티발 전체 리스트보기</h3>

<table border="1">
	<thead>
		<tr>
			<th>축제코드</th>
			<th>축제명</th>
			<th>연락처</th>
			<th>위치</th>
			<th>이미지삽입</th>
			<th>시작날짜</th>
			<th>종료날짜</th>
			<th>위도</th>
			<th>경도</th>
			<th>상세설명</th>
			<th>가격1</th>
			<th>가격2</th>
		</tr>
	</thead>

	<tbody>

		<c:forEach items="${flist }" var="vo">
			<tr>
				<td>${vo.fcode }</td>
				<%-- <td><a href="getadFv.do?fcodeo=${vo.fcode }"> ${vo.fname }</a></td> --%>
				<td> ${vo.fname }</td>
				<td>${vo.phone }</td>
				<td>${vo.place }</td>
				<td>${vo.image }</td>
				<td>${vo.fsdate }</td>
				<td>${vo.fedate }</td>
				<td>${vo.flat }</td>
				<td>${vo.flng }</td>
				<td>${vo.fcontent }</td>
				<td>${vo.fprice1 }</td>
				<td>${vo.fprice2 }</td>
			
			</tr>
		</c:forEach>

	</tbody>
</table>
