<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- festival section-->

<style>
  
  
  


</style>

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

				
								
								
				
				
	