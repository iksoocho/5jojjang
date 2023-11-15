<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<section class="py-5">

<!-- {vo} -->

<h3>${vo.fname }</h3>
<p class="time_num">축제 진행 중</p>
<p>${vo.fsdate } ~${vo.fedate }</p>	
<img src="resources/images/${vo.fimage }" alt="..." />
<p> <축제소개> : ${vo.fcontent }</p>		
						
						
				
						
						
<button class="btn btn-outline-dark flex-shrink-0" type="button">
		<i class="bi-cart-fill me-1">찜하기</i>  </button>

						
<button class="btn btn-outline-dark flex-shrink-0" type="button">
		<i class="bi-cart-fill me-1">바로 구매하기 </i>  </button>

						
<button class="btn btn-outline-dark flex-shrink-0" type="button">
		<i class="bi-cart-fill me-1">장바구니에 담기</i>  </button>
		
								
</section>

<section class="py-5 bg-light">
	<div class="container px-4 px-lg-5 mt-5">
<h2 class="fw-bolder mb-4" align="margin:10px;">찾아오시는 길</h2>
<div id="map" style="width:100%;height:400px;"></div>


		<h2 class="fw-bolder mb-4">이런 축제는 어때요?</h2>
			<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		<c:forEach items="${list }" var="vo" end="3">
				<!-- festival List -->
				<div class="col mb-5">
					<div class="card h-100">
						<!-- festival badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">개최중</div>
						<!-- festival image-->
						<img class="card-img-top"
							src="resources/images/${vo.fimage }" alt="..." />
						<!-- festival details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- festival name-->
								<h5 class="fw-bolder">${vo.fname }</h5>
								<!-- festival reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<c:forEach var="i" begin="1" end="${vo.likeIt }">
										<div class="bi-star-fill"></div>
									</c:forEach>
								</div>
								<!-- festival price-->
								<span class="text-muted text-decoration-line-through">${vo.fprice1 }</span>
								${vo.fprice2 }
							</div>
						</div>
		
					</div>
				</div>
				</c:forEach>
			</div>
	</div>
</section>	