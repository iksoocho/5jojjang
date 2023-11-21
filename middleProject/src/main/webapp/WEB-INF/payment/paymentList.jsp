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
	body {
		margin: 0;
	}

	* {
		box-sizing: border-box;
	}

	p,
	span {
		margin: 0;
	}

	a {
		color: rgb(0, 0, 95);
	}

	img {
		display: block;
		width: 80%;
		height: 80px;
		margin: 20px;
	}

	.payment {
		width: 80%;
		margin: auto;
		padding: 30px;
	}

	.payment ul {
		background-color: whitesmoke;
		padding: 30px;
		margin-bottom: 50px;
		border: whitesmoke solid 1px;
		border-radius: 5px;
		font-size: 13px;
		font-weight: 300;
	}

	.payment ul :first-child {
		color: limegreen;
	}

	table {
		border-top: solid 1.5px black;
		border-collapse: collapse;
		width: 100%;
		font-size: 14px;
	}

	thead {
		text-align: center;
		font-weight: bold;
	}

	tbody {
		font-size: 12px;
	}

	td {
		margin-left: 20px;
		padding: 0px 0px;
		border-bottom: 1px solid lightgrey;
	}

	.payment__list__detail :nth-child(3) {
		vertical-align: top;
	}

	.payment__list__detail :nth-child(3) a {
		font-size: 12px;
	}

	.payment__list__detail :nth-child(3) p {
		margin-top: 6px;
		font-weight: bold;
	}

	.payment__list__smartstore {
		font-size: 12px;
		color: gray;
	}

	.payment__list__option {
		vertical-align: top;
		padding: 20px;
	}

	.payment__list__option p {
		margin-bottom: 25px;
		position: relative;
	}

	.payment__list__option p::after {
		content: "";
		width: 90%;
		height: 1px;
		background-color: lightgrey;
		left: 0px;
		top: 25px;
		position: absolute;
	}

	.payment__list__optionbtn {
		background-color: white;
		font-size: 10px;
		border: lightgrey solid 1px;
		padding: 7px;
	}

	.payment__list__detail :nth-child(4),
	.payment__list__detail :nth-child(5),
	.payment__list__detail :nth-child(6) {
		border-left: 2px solid whitesmoke;
	}

	.payment__list__detail :nth-child(5),
	.payment__list__detail :nth-child(6) {
		text-align: center;
	}

	.payment__list__detail :nth-child(5) button {
		background-color: limegreen;
		color: white;
		border: none;
		border-radius: 5px;
		padding: 4px 8px;
		font-size: 12px;
		margin-top: 5px;
	}

	.price {
		font-weight: bold;
	}

	.payment__mainbtns {
		width: 420px;
		height: 200px;
		padding-top: 40px;
		display: block;
		margin: auto;
	}

	.payment__bigorderbtn {
		width: 200px;
		height: 50px;
		font-size: 16px;
		margin: auto;
		border-radius: 5px;
	}

	.payment__bigorderbtn.left {
		background-color: white;
		border: 1px lightgray solid;
	}

	.payment__bigorderbtn.right {
		background-color: limegreen;
		color: white;
		border: none;
	}
</style>
<%-- 	<input type="hidden" id="mid" value="${loginId }"> --%>

<body>
	<section class="payment">
		<div class="payment__information">
			<ul>
				<li>구매내역은 최대 30일간 저장됩니다.</li>
				<li>티켓은 기간내에 1회만 사용 가능합니다.</li>
				<li>취소 및 환불은 신청일로부터 3-5일 정도 소요됩니다.</li>
				<li>티켓 소진시 판매자에 의해 강제 취소 및 환불이 될 수 있습니다.</li>
			</ul>
		</div>
		<table class="payment__list">
			<form>
				<thead>
					<tr>
						<td colspam="2">결제번호</td>
						<td colspan="2">상품정보</td>
						<td>옵션</td>
						<td colspan="1">상품금액</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="vo">

						<tr class="cart__list__detail" data-fprice1="${vo.fprice1 }" data-fprice2="${vo.fprice2 }"
							data-pno="${vo.pno }" data-adcnt="${vo.adcnt }" data-chcnt="${vo.chcnt }">
							<!-- 						    <td><input type="checkbox" id="check" checked  onchange="calculateSum(event)" /></td> -->
							<td class="test" align="center">${vo.merchantUid }</td>
							<td>
								<img src="resources/images/${vo.fimage }" alt="..." style="height: 120px; width:100px;">
							</td>
							<td><a href="festivalInfo.do?fno=${vo.fcode }" style="font-size: large;font-weight: bold;">${vo.fname }</a>
								<span class="cart__list__smartstore">오조짱축제</span>
								<p>축제기간 : ${vo.fsdate } ~ ${vo.fedate }</p>
								<span class="price">어른:${vo.fprice1 }원 , 아동:${vo.fprice2 }원</span>
							</td>
							<td class="cart__list__option">
								<p>어른 : ${vo.adcnt } 매, 아동 : ${vo.chcnt } 매</p>
							</td>
							<td style="padding: 20px;">
								<span class="price totalAmount"
									style="display: inline-block; width: 95%; text-align: center;margin-bottom: 20px;">
									${vo.adcnt * vo.fprice1 + vo.chcnt *
									vo.fprice2}원
								</span>
								<br> <span><input type="button" value="후기작성" name="main"
										onclick="location.href='reviewList.do?=rid'" class="list__optionbtn"></span>
							
							</td>
						</tr>

						</tr>
					</c:forEach>
				</tbody>
				<tfoot>

				</tfoot>
			</form>
		</table>
		<div class="payment__mainbtns">
			<input type="button" value="메인페이지" name="main" onclick="location.href='main.do'"
				class="payment__bigorderbtn left">
			<input type="button" value="다른 축제보기" name="main" onclick="location.href='calendar.do'"
				class="payment__bigorderbtn right">
		</div>
	</section>

</body>

</html>