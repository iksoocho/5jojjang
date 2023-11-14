<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<form action="modifyReviewForm.do" name="reviewForm">
<input type="hidden" name="rno" value="${rno.rno }">
<table border="1" >


<h3>Review 전체 리스트보기</h3>

<table border="1">
	<thead>
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자(id)</th>
			<th>작성일자</th>
			<th>이미지</th>
			
		</tr>
	</thead>

	<tbody>

		<c:forEach items="${rlist }" var="vo">
			<tr>
				<td>${vo.rno }</td>
				<td><a href="getReview.do?rno=${vo.rno }"> ${vo.rtitle }</a></td>
				<td>${vo.rid }</td>
				<td>${vo.rwriteDate }</td>
				<td><input src ="${vo.rimage}"  name="image" width="200"></td> 
				
			</tr>
		</c:forEach>

	</tbody>
</table>



<!-- qna랑 review 게시판 아래에 페이징해야됨!  -->
<div class= "pagination"></div>
	<p><a href="addReviewForm.do"> REVIEW 게시글 등록화면 </a></p>
	
<script>
//Qna 리스트 페이징 하기
//댓글 전체목록 보여주기
	let bno ="${qno.qno }";
	let writer = "${logId }"; 
		//or 요렇게 bno = document.querySelector('.boardNo').innerHTML;
	let page = 1;	//지금 있는 페이지에 초록색 표시하려고 썼음 
	
	function showList(pg = 1)	{ //페이지 초기값 넣어준거임.
		//안보이는 li의 첫번째 요소만 제외하고(template용도기 때문에!) 지우겠다 하는거임 for 초기화! 
		document.querySelectorAll('#list li:not(:nth-of-type(1))').forEach(li => li.remove()); //초기화시키려고! 안하면 중복되서 또 밑에 리스트 뜨니까!
		fetch('replyList.do?bno=' + bno + '&page=' + pg) //페이지 안넘겨서 첨에 딱오면 1페이지로 하게끔 한거.
	.then(resolve => resolve.json())
	.then(result => {
		
		
		//댓글쓰면 마지막페이지에 보이도록 하기 위함
		if(pg < 0){
			let page = showList(Math.ceil(result.dto.total/5))
			showList(page);
			return;
		}
		
		
		// 댓글 삭제해서 전체 댓글 수 줄면 페이지도 조정되도록! 
		if(pg > Math.ceil(result.dto.total/5)){
			page = Math.ceil(result.dto.total/5)
			showList(page);
		}
		
		//댓글 없는 곳 페이지표시 안보이게
		if(result.dto.total == 0){
			return;
		}
		
		//result에 있는 list에 대한 한건 한건해서 목록 그려주는거
		result.list.forEach(reply => {
			let li = makeRow(reply);

			//ul > li 생성
			document.querySelector('#list').append(li);
			
		})
			//page생성
				//console.log("dto는 뭘까요" , result.dto);
			makePaging(result.dto); 
			
	})
	.catch(err => console.log(err));
	
	}//function showList
	
	showList();
	
//page생성 - dto정보가 넘어오니까(startpage, endpage 등드등) => 페이지숫자버튼만들기
	function makePaging(dto={}){
		document.querySelector('.pagination').innerHTML = '';
		//페이지를 만들고
		if(dto.prev){
			let aTag = document.createElement('a');
			aTag.setAttribute('href', dto.startPage - 1);
			aTag.innerHTML = ">&laquo;";
			document.querySelector('.pagination').append(aTag);
		}
		for(let i=dto.startPage; i<=dto.endPage; i++){
			let aTag = document.createElement('a');
			aTag.setAttribute('href', i);
			aTag.innerHTML = i;
			//active 녹색
			if(i == page){
				aTag.className = 'active'; // 클래스 속성을 지정할 때 className
			}
			document.querySelector('.pagination').append(aTag);
		}
		if(dto.next){
			let aTag = document.createElement('a');
			aTag.setAttribute('href', dto.endPage + 1);
			aTag.innerHTML = "&raquo";
			document.querySelector('.pagination').append(aTag);
		} 
		
		
		
		
	//a태그에 이벤트 입력.  - pagination클래스 a태그 다 가져옴 > 각각에 이벤트 걸겠다.
		document.querySelectorAll('.pagination a').forEach(elem =>{
			elem.addEventListener('click', function(e){
				e.preventDefault(); // form, a => 링크 기능을 차단하고 아랫부분을 계쏙 실행하겠습니다~
				page = elem.getAttribute('href');
				showList(page);
			})
		})
	} //makePaging
	



</script>




