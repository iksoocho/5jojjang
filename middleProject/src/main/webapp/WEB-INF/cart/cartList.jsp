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
	width: 80%;
	height: 80px;
	margin: auto;
}

<<<<<<< HEAD
.cart {
	width: 80%;
	margin: auto;
	padding: 30px;
}
=======
	.cart {
		width: 80%;
		margin: auto;
		padding: 30px;
		
	}
>>>>>>> refs/remotes/origin/2

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

<<<<<<< HEAD
.cart__list__option p::after {
	content: "";
	width: 90%;
	height: 1px;
	background-color: lightgrey;
	left: 0px;
	top: 25px;
	position: absolute;
}
=======
	.cart__list__option p::after {
		content: "";
		width: 90%;
		height: 1px;
		background-color: lightgrey;
		left: 0px;
		top: 25px;
		
	}
>>>>>>> refs/remotes/origin/2

<<<<<<< HEAD
.cart__list__optionbtn {
	background-color: white;
	font-size: 10px;
	border: lightgrey solid 1px;
	padding: 7px;
}
=======
	.cart__list__optionbtn {
		background-color: white;
		font-size: 10px;
		border: lightgrey solid 1px;
		padding: 7px;
		margin-left: 20%;
	}
>>>>>>> refs/remotes/origin/2

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

<<<<<<< HEAD
.cart__mainbtns {
	width: 420px;
	height: 200px;
	padding-top: 40px;
	display: block;
	margin: auto;
}
=======
	.cart__mainbtns {
		width: 100%;
		height: 200px;
		padding-top: 40px;
		display: block;
		position: relative;
	}
>>>>>>> refs/remotes/origin/2

<<<<<<< HEAD
.cart__bigorderbtn {
	width: 200px;
	height: 50px;
	font-size: 16px;
	margin: auto;
	border-radius: 5px;
}
=======
	.cart__bigorderbtn {
		width: 200px;
		height: 50px;
		font-size: 16px;
		margin-left: 30%;
		border-radius: 5px;
	}
>>>>>>> refs/remotes/origin/2

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
<<<<<<< HEAD
						<td><input type="checkbox"></td>
						<td colspan="3">상품정보</td>
=======
						<td colspan="4">상품정보</td>
>>>>>>> refs/remotes/origin/2
						<td>옵션</td>
						<td colspan="1">상품금액</td>
						<td>삭제</td>
					</tr>

				</thead>



				<tbody>

					<c:forEach items="${list}" var="vo">
<<<<<<< HEAD
						<tr class="cart__list__detail" data-fprice1="${vo.fprice1 }"
							data-fprice2="${vo.fprice2 }" data-cno="${vo.cno }"
							data-adcnt="${vo.adcnt }" data-chcnt="${vo.chcnt }">
						<td><input type="checkbox"></td>
=======
					
						<tr class="cart__list__detail" data-fprice1="${vo.fprice1 }" data-fprice2="${vo.fprice2 }" data-cno="${vo.cno }" data-adcnt="${vo.adcnt }" data-chcnt="${vo.chcnt }">
						    <td><input type="checkbox" id="check" checked  onchange="calculateSum(event)" /></td>
>>>>>>> refs/remotes/origin/2
							<td>${vo.cno }</td>
							<td><img src="resources/images/${vo.fimage }" alt="..."
								style="height: 130px; width: 120px;"></td>
							<td><a href="festivalInfo.do?fno=${vo.fcode }">${vo.fname }</a>
								<span class="cart__list__smartstore">오조짱축제</span>
								<p>축제기간 : ${vo.fsdate } ~ ${vo.fedate }</p> <span class="price">어른:${vo.fprice1 }원
									, 아동:${vo.fprice2 }원</span></td>
							<td class="cart__list__option">
								<p>어른</p> <input type="number" name="adcnt" style="width: 50px;"
								value="${vo.adcnt }" onchange="calculateSum(event)" min="0"
								max="10" step="1">
								<p>아동</p> <input type="number" name="chcnt" style="width: 50px;"
								value="${vo.chcnt }" onchange="calculateSum(event)" min="0"
								max="10" step="1">
							</td>
<<<<<<< HEAD
							<td><span class="price totalAmount"> ${vo.adcnt * vo.fprice1 + vo.chcnt *
=======
							<td>
								<span class="price totalAmount"> ${vo.adcnt * vo.fprice1 + vo.chcnt *   
>>>>>>> refs/remotes/origin/2
									vo.fprice2}
							</span></td>
							<td>
								<button class="cart__list__optionbtn" type="button"
									onclick="del(event)">장바구니 삭제</button>
							</td>
						</tr>

					</c:forEach>

				</tbody>
			</table>
		</form>
<<<<<<< HEAD


		<h2>총합계</h2>
		<span id="totalAmount"> </span>

		<div class="cart__mainbtns">
			<button class="cart__bigorderbtn right" onclick="kakaoPay()"
				id="buybtn">결제하기</button>
		</div>

=======
		
			<div class="cart__mainbtns">
			<button class="cart__bigorderbtn right">결제하기</button>
				<div style="text-align:right; position: absolute; right:20%; top:40px" >
					<h4>총 결제금액</h4>
					<p id="totalAmount">원</p>
				</div>
			</div>
			
			
>>>>>>> refs/remotes/origin/2
	</section>
	
			
	
</body>

<input type="hidden" id="mid" value="${loginId }">


<script>

	let mid =document.getElementById('mid').value; 

 	cal();

 	//화면 띄우면 바로 장바구니 안의 모든 애들의 합계가 나오게 
	function cal(){
	
		//장바구니 총 합계계산.
		let totalAmt = 0;
		document.querySelectorAll('.totalAmount').forEach(item => {
			 totalAmt += parseInt(item.innerHTML)
			 
		});
		
		document.querySelector('#totalAmount').innerHTML = totalAmt + '원';
		
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

	
	
	//장바구니 각각의 상품합계와  // 선택된 애들만 총합 구해서 밑에 보여주는 함수 
	function calculateSum(e) {
		let adTotal = 0,
			chTotal = 0;
		//console.log(e);//이벤트 받는 애 >>수량조절버튼 
		let parentTr = e.target.parentElement.parentElement;  //가격 데이터를 가져올 tr 접근 
		//console.log(parentTr.dataset.fprice1, parentTr.querySelector('input[name=adcnt]'))
		// target => adcnt(fprice1), chcnt(fprice2) 구별. => class="totalAmount"

		adTotal = parentTr.dataset.fprice1 * parentTr.querySelector('input[name=adcnt]').value;  // 가격 *수량 
		chTotal = parentTr.dataset.fprice2 * parentTr.querySelector('input[name=chcnt]').value;

		parentTr.querySelector('.totalAmount').innerHTML = parseInt(adTotal) + parseInt(chTotal);   //상품별 총합애 금액 넣어주고 
		
		
		//체크당한애 만 장바구니 총 합계계산되도록
		
		let totalAmt = 0;
		document.querySelectorAll('.totalAmount').forEach(item => {   
			
			if(item.parentElement.parentElement.children[0].children[0].checked == true){   //체크당한 item만 가져와서 누적 
				 totalAmt += parseInt(item.innerHTML);
			};
				
		});//v포이치
		
		document.querySelector('#totalAmount').innerHTML = totalAmt +'원';   //총합계에 totalAmt
		
	};// 장바구니 금액 함수 

<<<<<<< HEAD
	// 결제창 함수 넣어주기
	const buyButton = document.getElementById('buybtn')
	buyButton.setAttribute('onclick', `kakaoPay()`)

	var IMP = window.IMP;

	var today = new Date();

	var hours = today.getHours(); // 시
	var minutes = today.getMinutes(); // 분
	var seconds = today.getSeconds(); // 초
	var milliseconds = today.getMilliseconds();
	var makeMerchantUid = hours + minutes + seconds + milliseconds; //적절하게 시분초 바꾸기

	function kakaoPay() {
		let useremail = 'test';
		let username = 'test2';
		let adcnt = document.querySelector('input[name=adcnt]').value;
		let chcnt = document.querySelector('input[name=chcnt]').value;

		if (confirm("구매 하시겠습니까?")) { // 구매 클릭시 한번 더 확인하기
			//if (localStorage.getItem("access")) { // 회원만 결제 가능
			// const emoticonName = document.getElementById('title').innerText

			IMP.init("imp71655134"); // 가맹점 식별코드
			IMP.request_pay({
					pg: 'kakaopay.TC0ONETIME', // PG사 코드표에서 선택
					pay_method: 'card', // 결제 방식
					merchant_uid: "IMP" + 'merchant_' + new Date().getTime(), // 결제 고유 번호
					name: '${vo.fname}', // 제품명
					amount: document.getElementById('#totalAmount').innerHTML, // 가격
					//구매자 정보
					buyer_email: useremail,
					buyer_name: username
				},
				async function (rsp) { // callback
					if (rsp.success) { //결제 성공시
						console.log(rsp);
						//결제 성공시 프로젝트 DB저장 요청
						//                     if (rsp.status == 200) { // DB저장 성공시
						//                         alert('결제 완료!')
						fetch('payment.do?fcode=' + '${vo.fcode }' + '&pid=' + mid + '&adcnt=' + adcnt +
								'&chcnt=' + chcnt)
							.then(resolve => resolve.json())
							.then(result => {
								//fetch 날리기
								window.location.href = 'paymentList.do?mid=' + mid;
							})
							.catch(err => console.log(err))

						//                     } else { // 결제완료 후 DB저장 실패시
						//                         alert(`error:[${rsp.status}]\n결제요청이 승인된 경우 관리자에게 문의바랍니다.`);
						//                         // DB저장 실패시 status에 따라 추가적인 작업 가능성
						//                     }
					} else if (rsp.success == false) { // 결제 실패시
						alert(rsp.error_msg);
					}
				})
		} else { // 구매 확인 알림창 취소 클릭시 돌아가기
			return false;
		}
	};

=======
	
	
>>>>>>> refs/remotes/origin/2

</script>

</html>