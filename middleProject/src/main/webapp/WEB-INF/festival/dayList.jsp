<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<section class="py-5">
	<div class="container px-4 px-lg-5 mt-5">
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">


			<c:forEach items="${list }" var="vo">

				<!-- 상품목록 -->
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<a href="productInfo.do?pcode=${vo.fname }"><img
							class="card-img-top" src="images/${vo.fname }.jpg" alt="..." /></a>
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${vo.fname }</h5>
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<%-- <c:forEach var="i" begin="1" end="${vo.likeIt }">
										<div class="bi-star-fill"></div>
									</c:forEach> --%>
								</div>
							</div>
							<span > ${vo.fname }</span> ~ ${vo.fname }
						</div>
					</div>
					<!-- Product actions-->
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center">
							
						</div>
					</div>
				</div>

			</c:forEach>

		</div>
	</div>
</section>
