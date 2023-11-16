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
	<div class="container px-4 px-lg-5 mt-5">
		<div
			class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">


			<c:forEach items="${list }" var="vo">

				<!-- 상품목록 -->
				<div class="col mb-5">
					<a href="festivalInfo.do?fno=${vo.fcode }">
						<div class="card h-100">
							<!-- Sale badge-->
							<div class="badge bg-dark text-white position-absolute"
								style="top: 0.5rem; right: 0.5rem">개최중</div>
							<img class="card-img-top" src="resources/images/${vo.fimage }"
								alt="..." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">${vo.fname }</h5>

									<div
										class="d-flex justify-content-center small text-warning mb-2">
										<c:forEach var="i" begin="1" end="${vo.likeIt }" step="1">
											<div class="bi-star-fill"></div>
										</c:forEach>
									</div>
									<p> ${vo.fsdate } ~ ${vo.fedate }</p>
								</div>
							</div>
						</div>
					</a>
				</div>

			</c:forEach>

		</div>
	</div>
</section>