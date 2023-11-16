<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>





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








</script>

							
				
				
	