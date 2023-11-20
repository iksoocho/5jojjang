<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		color: black;
	}

	img {
		display: block;
		width: 80%;
		height: 80px;
		margin: auto;
	}

	.cart {
		width: 80%;
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

	.cart__list__detail :nth-child(4),
	.cart__list__detail :nth-child(5),
	.cart__list__detail :nth-child(6) {
		border-left: 2px solid whitesmoke;
	}

	.cart__list__detail :nth-child(5),
	.cart__list__detail :nth-child(6) {
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
				<li>장바구니 상품은 최대 30일간 저장됩니다.</li>
				<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
			</ul>
		</div>


		<form>
			<table class="cart__list">
			
				<thead>
				
					<tr>
						<td colspan="3">상품정보</td>
						<td>옵션</td>
						<td colspan="1">상품금액</td>
						<td>삭제</td>
					</tr>
					
				</thead>



				<tbody>

					<c:forEach items="${list}" var="vo">
					
						<tr class="cart__list__detail" data-fprice1="${vo.fprice1 }" data-fprice2="${vo.fprice2 }" data-cno="${vo.cno }" data-adcnt="${vo.adcnt }" data-chcnt="${vo.chcnt }">
							<td>${vo.cno }</td>
							<td>
								<img src="resources/images/${vo.fimage }" alt="..." style="height: 130px; width:120px;">
							</td>
							<td><a href="festivalInfo.do?fno=${vo.fcode }">${vo.fname }</a>
								<span class="cart__list__smartstore">오조짱축제</span>
								<p>축제기간 : ${vo.fsdate } ~ ${vo.fedate }</p>
								<span class="price">어른:${vo.fprice1 }원 , 아동:${vo.fprice2 }원</span>
							</td>
							<td class="cart__list__option">
								<p>어른</p>
								<input type="number" name="adcnt" style="width: 50px;" value="${vo.adcnt }"
									onchange="calculateSum(event)" min="0" max="10" step="1">
								<p>아동</p>
								<input type="number" name="chcnt" style="width: 50px;" value="${vo.chcnt }"
									onchange="calculateSum(event)" min="0" max="10" step="1">
							</td>
							<td>
								<span class="price totalAmount"> ${vo.adcnt * vo.fprice1 + vo.chcnt *
									vo.fprice2}
								</span>
							</td>
							<td>
								<button class="cart__list__optionbtn" type="button" onclick="del(event)">장바구니 삭제</button>
							</td>
						</tr>
						
					</c:forEach>
							
				</tbody>
			</table>
		</form>

						
		<h2>총합계</h2>
		<span id="totalAmount">  </span>
							



		<div class="cart__mainbtns">
			<button class="cart__bigorderbtn right">결제하기</button>
		</div>
		
	</section>
</body>

<input type = "hidden" id= "mid" value="${loginId }">							
								

<script>

	let mid =document.getElementById('mid').value; 

 	cal();

 	
	function cal(){
	
		//장바구니 총 합계계산.
		let totalAmt = 0;
		document.querySelectorAll('.totalAmount').forEach(item => {
			 totalAmt += parseInt(item.innerHTML)
			 
		});
		
		document.querySelector('#totalAmount').innerHTML = totalAmt;
		
	};


	function del(e) {
		
		//console.log(e);
		
		let parentTr = e.target.parentElement.parentElement;
		//console.log(parentTr);
		let cno = parentTr.dataset.cno;  //장바구니 번호가들어가있음
		console.log(cno);
		
		fetch('delCart.do?cno=' + cno +'&cid=' + mid)
			.then(resolve => resolve.json())
			.then(result => {
				console.log(result);
				if (result.retCode == 'OK') {
					alert('장바구니목록에서 삭제되었습니다');
					parentTr.remove();
				} else {
					alert('삭제실패');
				}
			}) //두번째then
			.catch(err => console.log(err));
		
		
		
	}; //장바구니 삭제 

	
	
	function calculateSum(e) {
		let adTotal = 0,
			chTotal = 0;
		console.log(e);//이벤트 받는 애 
		let parentTr = e.target.parentElement.parentElement;  //가격 데이터를 가져올 tr 접근 
		console.log(parentTr.dataset.fprice1, parentTr.querySelector('input[name=adcnt]'))
		// target => adcnt(fprice1), chcnt(fprice2) 구별. => class="totalAmount"

		adTotal = parentTr.dataset.fprice1 * parentTr.querySelector('input[name=adcnt]').value;  // 가격 *수량 
		chTotal = parentTr.dataset.fprice2 * parentTr.querySelector('input[name=chcnt]').value;

		parentTr.querySelector('.totalAmount').innerHTML = parseInt(adTotal) + parseInt(chTotal); 
		
		//장바구니 총 합계계산.
		let totalAmt = 0;
		document.querySelectorAll('.totalAmount').forEach(item => {
			 totalAmt += parseInt(item.innerHTML)
			 
		});
		
		document.querySelector('#totalAmount').innerHTML = totalAmt;
	};

	


</script>

</html>