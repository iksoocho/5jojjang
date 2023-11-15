<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git


<<<<<<< HEAD
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
=======

<!-- {vo} -->

<h3>${vo.fname }</h3>
<p class="time_num">축제 진행 중</p>
<p>${vo.fsdate } ~${vo.fedate }</p>	
<img src="resources/images/${vo.fimage }" alt="..." />
<p> <축제소개> : ${vo.fcontent }</p>		
			
						
				
						
						
<button type="button" id="jbtn">  <i >찜하기</i> </button>

<br>
<br>		

<form>


<input type="hidden" name="price1" value="${vo.fprice1 }">
<input type="hidden" name="price2" value="${vo.fprice2 }">
<input type="hidden" name="price2" value="${vo.fprice2 }">
<input type="hidden" name="price2" value="${vo.fprice2 }">


<table>

<tr>
<td>어른가격 ${vo.fprice1 }</td>
<td><lable>수량을 선택하세요   <input type="number" name="snum" min="1" max="5" value="1"></lable></td>
</tr>		


<tr>
<td>아동 가격 ${vo.fprice2 }</td>
<td><lable>수량을 선택하세요 <input type="number" name="snum" min="1" max="5" value="1"></lable></td>
</tr>	
</table>

</form>
	

<button type="button" id="byebtn">  <i >바로구매하기</i> </button>
<button type="button" id="cartbtn">  <i >장바구니에 담기</i> </button>



								
								
								
<script>

let user = "user1";
document.getElementById('jbtn').addEventListener('click',function(e){
	fetch('wish.do?fno='+'${vo.fcode }' + '&wid=' + user)
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('찜 목록에 추가되었습니다');
		}else{
			alert('찜 추가 실패 ');
		}
	})
			
});//찜추가이벤트 
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git




<<<<<<< HEAD
<section class="py-5">
	<div class="container px-4 px-lg-5 my-5">
		<div class="row gx-4 gx-lg-5 align-items-center">
			<div class="col-md-6">
				<img class="card-img-top mb-5 mb-md-0" src="resources/images/${fno.fimage }" alt="..." />
			</div>
			<div class="col-md-6">
				<div class="small mb-1">${fno.fcode }</div>
				<h1 class="display-5 fw-bolder">${fno.fname }</h1>
				<div class="fs-5 mb-5">
					<span class="text-decoration-line-through">${fno.fprice1 }원</span> <span>${fno.fprice2
									}원</span>
				</div>
				<p class="lead">${fno.fcontent }</p>
			</div>
		</div>
	</div>
</section>
=======
document.getElementById('cartbtn').addEventListener('click',function(e){
	fetch('cart.do?fno='+'${vo.fcode }'+'&cid=' +user + '&adcnt' + )
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('장바구니에 추가되었습니다');
		}else{
			alert('장바구니 추가 실패 ');
		}
	})
			
}); //장바구니 담기 이벤트 
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git




<<<<<<< HEAD
<button id="btn">찜하기</button>
=======
document.getElementById('jbtn').addEventListener('click',function(e){
	fetch('wish.do?fno='+'${vo.fcode }' + '&wid=' + user)
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('찜 목록에 추가되었습니다');
		}else{
			alert('찜 추가 실패 ');
		}
	})
			
}); //바로구매 버튼 
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git

<button id="btn">바로결제</button>

<button id="btn">장바구니</button>

<<<<<<< HEAD
<script>
=======
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git

<<<<<<< HEAD
let user1 = "user";
=======
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git

<<<<<<< HEAD
document.getElementById('btn').addEventListener('click', function (e) {
fetch('wish.do?fno=' + "${fno.fcode }" + '&id=' + user1)
		.then(resolve => resolve.json())
		.then(result => {
			console.log(result);
			if (result.retCode == 'OK') {
				alert('찜 추가가 완료되었습니다');
				document.getElementById('btn').style.display = 'none';   //찜하고 나면 버튼 사라지게 //나갔다 들어오면 상태가 유지되어야함..
			} else {
				alert('찜 추가 실패');
			}
		})
		.catch(err => console.log(err));
}//then
	//이벤트
);
=======
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git

<<<<<<< HEAD
</script>
=======


</script>

							
				
				
	
>>>>>>> branch '2' of https://github.com/iksoocho/5jojjang.git
