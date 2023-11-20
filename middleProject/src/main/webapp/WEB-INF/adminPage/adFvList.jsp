<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<%-- <input type="hidden" name="no" value="${qno.qno }"> --%>

<body>
<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> QNA 목록
				</div>
<div class="card-body">


<h3> 관리자 - 페스티발 전체 리스트보기</h3>
<form action = 'addAdFvForm.do' name = 'insertForm'>

	<table id="datatablesSimple">
	<thead>
		<tr>
			<th>축제코드</th>
			<th>축제명</th>
			<th>연락처</th>
			<th>위치</th>
			<th>시작날짜</th>
			<th>종료날짜</th>
			<th>위도</th>
			<th>경도</th>
			<th>상세설명</th>
			<th>가격1</th>
			<th>가격2</th>
			<th> </th>
		</tr>
	</thead>

	<tbody>

		<c:forEach items="${flist }" var="vo">
			<tr id="listTr">
				<td>${vo.fcode }</td>
				<td><a href="getadFv.do?fcode=${vo.fcode }"> ${vo.fname }</a></td>
				
				<td>${vo.fphone }</td>
				<td>${vo.fplace }</td>
				
				<td>${vo.fsdate }</td>
				<td>${vo.fedate }</td>
				<td>${vo.flat }</td>
				<td>${vo.flng }</td>
				<td>${vo.fcontent }</td>
				<td>${vo.fprice1 }</td>
				<td>${vo.fprice2 }</td>
				<!-- <td><input type="button" value="삭제" >  </td> -->
				<td><button onclick="doDel(${vo.fcode})">삭제</button>
				
			
			</tr>
		</c:forEach>

	</tbody>
</table>

	<input type='submit' value='새 축제 등록하기'>
	</form>

		</div>
			</div>
	
</body>
	

<script>

/* document.querySelector('input[type=button]').addEventListener('click', function(e){
	document.forms.qnaForm.action = 'removeQnaForm.do';
	document.forms.qnaForm.submit();
})
 */
/* function delMfucn(e) {
	   // console.log(e.target.parentElement.parentElement.children[4].innerHTML)
	   let id = e.target.parentElement.parentElement.children[0].innerHTML;
	   fetch('adRemoveMember.do', {
	         method: 'post',
	         headers: {
	            'Content-Type': 'application/x-www-form-urlencoded'
	         },
	         body: 'id=' + id
	      })
	      .then(resolve => resolve.json())
	      .then(result => {
	         if (result.retCode == 'OK') {
	            alert('Success!!');
	            e.target.parentElement.parentElement.remove();
	         } else {
	            alert('Error!!');
	         }
	      })
	      .catch(err => console.log(err));
	}
 */
 
/*    function doDel(code){
	   let tr =  e.target.parentElement.parentElement.children[0].innerHTML;
	  
	   
	   fetch('deleteAdFv.do', {
		   method : 'post',
		   headers : {'Content-Type': 'application/x-www-form-urlencoded'},
		   body : 'fcode=' + fcode  
	   })
	   .then(resolve => resolve.json())
	   .then(result => {
		   if(result.retCode == 'OK'){
			   alert("삭제하였습니다.")
			  tr.remove();
		   }else{
			   alert("삭제 실패");
		   }
	   })
	   .catch(err => console.log(err));

   }  */

 


</script>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<script src="adminResource/js2/scripts.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
	crossorigin="anonymous"></script>
<script src="adminResource/js2/datatables-simple-demo.js"></script>
<link href="adminResource/css2/styles.css" rel="stylesheet" />
