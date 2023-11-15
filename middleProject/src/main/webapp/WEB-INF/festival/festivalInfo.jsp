
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
<td><lable>수량 : <input type="number" name="adcnt" onclick="total();"></lable></td>
</tr>		


<tr>
<td>아동  ${vo.fprice2 } 원</td>
<td><lable>수량 : <input type="number" name="chcnt" onclick="total();"></lable></td>
</tr>	
</table>

<h3>총 금액</h3>
<h3 id = 'total'> </h3>

<button type="button" id="cartbtn" > <i >장바구니에 담기</i> </button>
<button type="button" id="byebtn" >  <i >바로구매하기</i> </button>




								
								
								
<script>

let user = "user01";

document.getElementById('jbtn').addEventListener('click',function(e){
	fetch('wish.do?fcode='+'${vo.fcode }' + '&wid=' + user)
	.then(resolve => resolve.json())
	.then(result => {
		console.log(result);
		if(result.retCode == 'OK'){
			alert('찜 목록에 추가되었습니다');
		}else{
			alert('찜 추가 실패 ');
		}
	})
	.catch(err => console.log(err));
			
});//찜추가이벤트 




document.getElementById('cartbtn').addEventListener('click',function(e){
	
	let adcnt =document.querySelector('input[name=adcnt]').value;
	let chcnt =document.querySelector('input[name=chcnt]').value;
	fetch('cart.do?fcode='+'${vo.fcode }' + '&cid=' + user +'&adcnt=' + adcnt +'&chcnt=' + chcnt )
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
	
	 
}




</script>

							
				

