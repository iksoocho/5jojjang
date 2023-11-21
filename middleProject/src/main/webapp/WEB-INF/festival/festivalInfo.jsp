<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
input {
	width: 50px;
	height: 30px;
	font-size: 20px;
}
</style>
<!-- 포트원 결제 -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 포트원 결제 -->

<!-- festivalInfo section-->
<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<div class="row gx-4 gx-lg-5 align-items-center">
			<div class="col-md-6">
				<img class="card-img-top mb-5 mb-md-0"
					src="resources/images/${vo.fimage}" alt="..." />
			</div>
			<div class="col-md-6">
				<div class="small mb-1">축제코드 : ${vo.fcode }</div>
				<h1 class="display-5 fw-bolder">${vo.fname }</h1>
				<div class="fs-5 mb-5">
					🎫 티켓금액 : <span>어른 - ${vo.fprice1 }원</span> <span>아동 -
						${vo.fprice2 }원</span>
				</div>
				<p class="lead">
					<축제내용> : ${vo.fcontent } 
				</p>
				<div class="d-flex">
					<button class="btn btn-outline-dark flex-shrink-0" type="button"
						id="jbtn">
						<i class="bi-cart-fill me-1">찜하기</i>
					</button>
					<table>
						<tr>
							<td>어른 ${vo.fprice1}원</td>
							<td><lable>수량 : <input type="number" name="adcnt"
									value="0" onclick="total();" min="0" max="10" step="1"></lable>
							</td>
						</tr>

						<tr>
							<td>아동 ${vo.fprice2}원</td>
							<td><lable>수량 : <input type="number" name="chcnt"
									value="0" onclick="total();" min="0" max="10" step="1"></lable>
							</td>
						</tr>
					</table>
				</div>
				<br>
				<p id='total' style="font-weight: bold; font-size: large;"></p>
				<br> <span><button type="button" id="cartbtn">
						<i>장바구니에 담기</i>
					</button></span> <span><button onclick="paybtn()" value="바로구매" id="buybtn">
						<i>바로구매</i>
					</button></span>

			</div>
		</div>
	</div>
</section>

<section class="py-5 bg-light">
	<div class="container px-4 px-lg-5 mt-5">
		<h2 class="fw-bolder mb-4" align="margin:10px;">🎆 오시는 길</h2>
		<span>📢 ${vo.fplace }</span>
		<div id="map" style="width: 700px; height: 500px;"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9e277ea05d3d85bc8b38b63f21cfaedd">
		</script>
		<script>
			const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			let options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(${vo.flat }, ${vo.flng }), //지도의 중심좌표.
				level: 3 //지도의 레벨(확대, 축소 정도)
			};
			let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
			// 마커가 표시될 위치입니다 
			var markerPosition = new kakao.maps.LatLng(${vo.flat}, ${vo.flng
			});

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
		</script>
	</div>

</section>


<!-- Related items section-->
<section class="py-5 bg-light">
	<div class="container px-4 px-lg-5 mt-5">
		<h2 class="fw-bolder mb-4">이런 축제는 어때요?</h2>
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
			<c:forEach items="${list }" var="vo">
				<!-- 상품목록 -->
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-pink text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">개최중</div>
						<!-- Product image-->
						<img class="card-img-top" src="resources/images/${vo.fimage}"
							style="height: 360px;" alt="..." />
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${vo.fname }</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<c:forEach var="i" begin="1" end="${vo.likeIt }" step="1">
										<div class="bi-star-fill"></div>
									</c:forEach>
								</div>
								<!-- Product price-->
								<span>어른 ${vo.fprice1 } 원</span> <span>아동 ${vo.fprice2 }
									원</span>

							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto"
									href="festivalInfo.do?fno=${vo.fcode }">보러가기</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>




<input type="hidden" id="mid" value="${loginId }">


<script>
	let mid = document.getElementById('mid').value; //아이디 세션 저장한 변수 

	document.getElementById('jbtn').addEventListener('click', function (e) {

		if (mid == '') {
			alert('로그인 후 이용해주세요');
			return;
		}

		fetch('wish.do?fcode=' + '${vo.fcode }' + '&wid=' + mid)
			.then(resolve => resolve.json())
			.then(result => {
				console.log(result);
				if (result.retCode == 'OK') {
					alert('찜 목록에 추가되었습니다');
				} else {
					alert('이미 찜목록에 추가된 축제입니다');
				}
			})
			.catch(err => console.log(err));

	}); //찜추가이벤트 


	document.getElementById('cartbtn').addEventListener('click', function (e) {

		if (mid == '') {
			alert('로그인 후 이용해주세요');
			return;
		}


		let adcnt = document.querySelector('input[name=adcnt]').value;
		let chcnt = document.querySelector('input[name=chcnt]').value;

		fetch('cart.do?fcode=' + '${vo.fcode }' + '&cid=' + mid + '&adcnt=' + adcnt + '&chcnt=' + chcnt)
			.then(resolve => resolve.json())
			.then(result => {


				if (result.retCode == 'OK') {
					alert('장바구니 목록에 추가되었습니다');
				} else {
					alert('최소 하나이상의 수량을 선택하세요');
				}

			}) //두번째 then 
			.catch(err => console.log(err));

	}); //장바구니 추가 이벤트 




	function total() {

		let fprice1 = "${vo.fprice1 }"; //어른가격 
		let fprice2 = "${vo.fprice2 }"; //아동가격 
		let adcnt = document.querySelector('input[name=adcnt]').value; //어른티켓갯수
		let chcnt = document.querySelector('input[name=chcnt]').value; //아동티켓갯수

		let adtotal = adcnt * fprice1;
		let chtotal = chcnt * fprice2;

		let total = adtotal + chtotal; //어른 + 아이 총 합계

		console.log(total);

		document.getElementById('total').innerHTML = '총 결제 금액 : ' + total + ' 원';

	}; //총합계 계산 

	//바로구매

	// function paybtn(){

	// 	let adcnt = document.querySelector('input[name=adcnt]').value;
	// 	let chcnt = document.querySelector('input[name=chcnt]').value;

	// 	fetch('payment.do?fcode='+'${vo.fcode }' + '&pid=' + mid +'&adcnt=' + adcnt +'&chcnt=' + chcnt)
	// 	.then(resolve => resolve.json())
	// 	.then(result => {
	// 		kakaopay();
	// 		console.log(result);
	// 		if(result.retCode == 'OK'){
	// 			alert('성공');
	// 		}else{
	// 			alert('실패');
	// 		}
	// 	})
	// 	.catch(err => console.log(err))
	// };



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
		let merchant_uid = new Date().getTime();

		if (confirm("구매 하시겠습니까?")) { // 구매 클릭시 한번 더 확인하기
			//if (localStorage.getItem("access")) { // 회원만 결제 가능
			// const emoticonName = document.getElementById('title').innerText

			IMP.init("imp71655134"); // 가맹점 식별코드
			IMP.request_pay({
					pg: 'kakaopay.TC0ONETIME', // PG사 코드표에서 선택
					pay_method: 'card', // 결제 방식
					merchant_uid: merchant_uid, // 결제 고유 번호
					name: '${vo.fname}', // 제품명
					amount: document.getElementById('total').innerHTML, // 가격
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
								'&chcnt=' + chcnt +'&merchant_uid=' + merchant_uid)
							.then(resolve => resolve.json())
							.then(result => {
								console.log(rsp);
								window.location.href = 'paymentList.do?mid=' + mid
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
</script>