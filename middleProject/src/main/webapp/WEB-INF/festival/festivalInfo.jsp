<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>




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




<button id="btn">찜하기</button>

<button id="btn">바로결제</button>

<button id="btn">장바구니</button>

<script>

let user1 = "user";

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

</script>