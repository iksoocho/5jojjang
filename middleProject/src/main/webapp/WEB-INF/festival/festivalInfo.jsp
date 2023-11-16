
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<style>
input {
  width:50px;
  height:30px;
  font-size:20px;
}
</style>


<!-- {vo} -->

<h3>${vo.fname }</h3>
<p class="time_num">축제 진행 중</p>
<p>${vo.fsdate } ~${vo.fedate }</p>	
<img src="resources/images/${vo.fimage }" alt="..." />
<p> <축제소개> : ${vo.fcontent }</p>		
			
						
						
						
<button type="button" id="jbtn">  <i >찜하기</i> </button>

<br>
<br>		



<table>

<tr>
<td>어른 ${vo.fprice1 } 원</td>
<td><lable>수량 : <input type="number" name="adcnt" value="0" onclick="total();"></lable></td>
</tr>		


<tr>
<td>아동 ${vo.fprice2 } 원</td>
<td><lable>수량 : <input type="number" name="chcnt" value="0" onclick="total();"></lable></td>
</tr>	
</table>

<h3>총 금액</h3>
<h3 id = 'total'> </h3>

<button type="button" id="cartbtn" > <i >장바구니에 담기</i> </button>
<button type="button" id="byebtn" >  <i >바로 구매하기</i> </button>



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
                        <span class="text-muted text-decoration-line-through"> 어른 : ${vo.fprice1 }원</span>
                        아동 : ${vo.fprice2 }원
                     </div>
                  </div>
                 
                     </div>
                  </div>
               </div>
            </div>
         </c:forEach>
      </div>
   </div>
</section>










<input type = "hidden" id= "mid" value="${loginId }">							
								
								
<script>


let mid =document.getElementById("mid").value; 

document.getElementById('jbtn').addEventListener('click',function(e){
	

	fetch('wish.do?fcode='+'${vo.fcode }' + '&wid=' + mid)
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('찜 목록에 추가되었습니다');
		}else{
			alert('이미 찜목록에 추가된 축제입니다');
		}
	})
	.catch(err => console.log(err));
			
});//찜추가이벤트 





document.getElementById('cartbtn').addEventListener('click',function(e){
	
	let adcnt =document.querySelector('input[name=adcnt]').value;
	let chcnt =document.querySelector('input[name=chcnt]').value;
	fetch('cart.do?fcode='+'${vo.fcode }' + '&cid=' + mid +'&adcnt=' + adcnt +'&chcnt=' + chcnt )
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('장바구니 목록에 추가되었습니다');
		}else{
			alert('장바구니 ');
		}
	})
	.catch(err => console.log(err));
			
});//장바구니 추가 이벤트 




function total(){
	
	let fprice1 = "${vo.fprice1 }";  //어른가격 
	let fprice2 = "${vo.fprice2 }";  //아동가격 
	let adcnt = document.querySelector('input[name=adcnt]').value;  //어른티켓갯수
	let chcnt = document.querySelector('input[name=chcnt]').value;  //아동티켓갯수
	
	let adtotal = adcnt*fprice1;
	let chtotal = chcnt*fprice2;
	
	let total = adtotal + chtotal;  //어른 + 아이 총 합계
	
	console.log(total);
	
	document.getElementById('total').innerHTML = total;
	
	
	 
};



/*document.getElementById('byebtn').addEventListener('click',function(e){
	
	let adcnt = document.querySelector('input[name=adcnt]').value;  //어른티켓갯수
	let chcnt = document.querySelector('input[name=chcnt]').value;  //아동티켓갯수
	fetch('/paymentForm.do?fcode='+'${vo.fcode }' + '&pid=' + user +'&adcnt=' + adcnt +'&chcnt=' + chcnt +'&fimage=' + '${vo.fimage }' + '&fname=' + '${vo.fname }')
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('주문서로 이동합니다');
		}else{
			alert('실패');
		}
	})
	.catch(err => console.log(err));
			
});*///결제창 뜨게 하는 이벤트








</script>

							
				

