<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

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

.view, .delete {
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


<table>
	<caption>티켓 구매 확인</caption>
	<thead>
		<tr>
			<th>전체 상품</th>
			<th>축제명(옵션)</th>
			<th>티켓 금액</th>
			<th>티켓 수량</th>
			<th>결제 예정금액</th>
		</tr>
	</thead>
	<tbody>
		<c:foreach>
			<tr>
				<td><img src="resources/images/${vo.fimage}" alt="img"></td>
				<td>${vo.fname}<br>축제기간: ${vo.fsdate}~${vo.fedate}
				</td>
				<td>${vo.fprice1}원<br>${vo.fprice2}원</td>
				<td>어른 : ${vo.adcnt}명<br>아동 : ${vo.chcnt}명
				</td>
				<td></td>
			</tr>
		</c:foreach>
	</tbody>
	<tfoot>
		<td colspan="5" class="tablefoot"></td>
	</tfoot>
</table>


<div class="cart__mainbtns">
	<button class="cart__bigorderbtn right">결제하기</button>

</div>