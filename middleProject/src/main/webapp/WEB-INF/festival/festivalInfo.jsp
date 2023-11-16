<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
a {
	text-decoration: none;
	color: #000;
}
</style>

<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<div class="row gx-4 gx-lg-5 align-items-center">
			<div class="col-md-6">
				<img class="card-img-top mb-5 mb-md-0"
					src="resources/images/${vo.fimage }"
					style="width: 600px; height: 700px;" alt="..." />
			</div>
			<div class="col-md-6">
				<div class="small mb-1">${vo.fcode }</div>
				<h3 class="display-5 fw-bolder">${vo.fname }</h3>
				<div class="fs-5 mb-5">
					<p>대인 : ${vo.fprice1 }원 소인 : ${vo.fprice2 }원</p>
				</div>
				<p class="lead">
					<축제소개> : ${vo.fcontent } 
				</p>
				<div class="d-flex">
					<input class="form-control text-center me-3" id="inputQuantity"
						type="num" value="1" style="max-width: 3rem" />
					<button class="btn btn-outline-dark flex-shrink-0" type="button">
						<i class="bi-cart-fill me-1">찜하기</i>
					</button>


					<button class="btn btn-outline-dark flex-shrink-0" type="button">
						<i class="bi-cart-fill me-1">바로 구매하기 </i>
					</button>


					<button class="btn btn-outline-dark flex-shrink-0" type="button">
						<i class="bi-cart-fill me-1">장바구니에 담기</i>
					</button>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="py-5 bg-light">

	<div class="container px-4 px-lg-5 mt-5">
		<h2 class="fw-bolder mb-4" align="margin:10px;">🎆 오시는 길</h2>
		<div id="map" style="width: 700px; height: 500px;"></div>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9e277ea05d3d85bc8b38b63f21cfaedd"></script>
		<script>
			const container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			let options = { //지도를 생성할 때 필요한 기본 옵션
				center: new kakao.maps.LatLng(${vo.flat }, ${vo.flng }), //지도의 중심좌표.
				level: 3 //지도의 레벨(확대, 축소 정도)
			};
			let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
			// 마커가 표시될 위치입니다 
			var markerPosition = new kakao.maps.LatLng(${vo.flat }, ${vo.flng });

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				position: markerPosition
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);

		</script>
	</div>
</section>


<section class="py-5">
	<div class="container px-4 px-lg-5 mt-5">
	<h2 class="fw-bolder mb-4" align="margin:10px;">이런 축제는 어때요?</h2>
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
			<c:forEach items="${list }" var="vo">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">개최중</div>
						<!-- Product image-->
						<img class="card-img-top" src="resources/images/${vo.fimage }"
							alt="..." />
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
								<span class="text-muted text-decoration-line-through">${vo.fprice1 }</span>
								${vo.fprice2 }
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto"
									href="productInfo.do?Pid=${vo.fcode }">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>