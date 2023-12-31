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

p, span {
	margin: 0;
}

a {
	color: black;
}

img {
	display: block;
	width: 70%;
	height: 80px;
	margin: auto;
}

.cart {
	width: 50%;
	margin: auto;
	padding: 30px;
}

.cart ul {
	background-color: whitesmoke;
	padding: 30px;
	margin-bottom: 50px;
	border: whitesmoke solid 1px;
	border-radius: 5px;
	font-size: 13px;
	font-weight: 300;
}

.cart ul :first-child {
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
	padding: 15px 0px;
	border-bottom: 1px solid lightgrey;
}

.cart__list__detail :nth-child(3) {
	vertical-align: top;
}

.cart__list__detail :nth-child(3) a {
	font-size: 15px;
}

.cart__list__detail :nth-child(3) p {
	margin-top: 6px;
	font-weight: bold;
}

.cart__list__smartstore {
	font-size: 12px;
	color: gray;
}

.cart__list__option {
	vertical-align: top;
	padding: 20px;
}

.cart__list__option p {
	margin-bottom: 25px;
	position: relative;
}

.cart__list__option p::after {
	content: "";
	width: 90%;
	height: 1px;
	background-color: lightgrey;
	left: 0px;
	top: 25px;
	position: absolute;
}

.cart__list__optionbtn {
	background-color: white;
	font-size: 10px;
	border: lightgrey solid 1px;
	padding: 7px;
}

.cart__list__detail :nth-child(4), .cart__list__detail :nth-child(5),
	.cart__list__detail :nth-child(6) {
	border-left: 2px solid whitesmoke;
}

.cart__list__detail :nth-child(5), .cart__list__detail :nth-child(6) {
	text-align: center;
}

.cart__list__detail :nth-child(5) button {
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

.cart__mainbtns {
	width: 420px;
	height: 200px;
	padding-top: 40px;
	display: block;
	margin: auto;
}

.cart__bigorderbtn {
	width: 200px;
	height: 50px;
	font-size: 16px;
	margin: auto;
	border-radius: 5px;
}

.cart__bigorderbtn.left {
	background-color: white;
	border: 1px lightgray solid;
}

.cart__bigorderbtn.right {
	background-color: limegreen;
	color: white;
	border: none;
}
</style>

<body>
	<section class="cart">
		<div class="cart__information">
			<ul>
				<li>찜 상품은 최대 30일간 저장됩니다.</li>
			</ul>
		</div>


		<table class="cart__list">
			<form>
				<thead>
					<tr>
						<td colspan="3">내가 찜한 상품</td>
						<td style="text-aline: center">삭제</td>
					</tr>
				</thead>

				<c:forEach items="${list}" var="vo">
					<tbody>
						<tr class="cart__list__detail" id="tr">
							<td>${vo.wno }</td>
							<td><img src="resources/images/${vo.fimage }" alt="..."></td>
							<td><a href="festivalInfo.do?fno=${vo.fcode }">${vo.fname }</a><span
								class="cart__list__smartstore"> 오조짱축제</span>
								<p>축제기간 : ${vo.fsdate } ~ ${vo.fedate }</p> <sapn class="price">어른:${vo.fprice1 }원
								, 아동:${vo.fprice2 }원</sapn></td>
							<td style="padding-left: 3%;"><button
									class="cart__list__optionbtn" type="button" onclick="del(${vo.wno });">찜삭제</button></td>
						</tr>
					</tbody>
				</c:forEach>
			</form>
		</table>

		<div class="cart__mainbtns"></div>
	</section>
</body>


<script>




function del(vo){
	let tr = document.getElementById('tr');
	let wno = vo;
	console.log(vo);
	fetch('delWish.do?wno='+ wno)
	.then(resolve => resolve.json())
	.then(result => {
	   console.log(result);
	   if(result.retCode == 'OK'){
	      alert('찜목록에서 삭제되었습니다');
	      tr.remove();
	   }else {
	      alert('삭제실패');
	   }
	})//두번째then
	.catch(err => console.log(err));
}//삭제온클릭이벤트


</script>


</body>
</html>

