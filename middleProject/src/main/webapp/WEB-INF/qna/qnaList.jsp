<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<input type="hidden" name="qno" value="${qno.qno }">

<h3>QnA전체 리스트보기</h3>


<table border="1">
	<thead>
		<tr>
			<th>qno</th>
			<th>title</th>
			<th>writer</th>
			<th>date</th>
		</tr>
	</thead>

	<tbody>
		<c:forEach items="${qlist }" var="vo">
			<tr>
				<td>${vo.qno }</td>
				<td><a href="getQna.do?qno=${vo.qno }"> ${vo.qtitle }</a></td>
				<td>${vo.qid }</td>
				<td>${vo.qwriteDate }</td>
			</tr>
		</c:forEach>

	</tbody>
</table>

<div id="paging"></div>

<!-- qna랑 review 게시판 아래에 페이징해야됨!  -->

<p><a href="addQnaForm.do"> Qna 게시글 등록화면 </a></p>
	

<h3>목록</h3>

<!-- <ul id="list">
	<li style="display: none" id="template"><span>qno</span><b>qtitle</b>
	<span>qid</span><span>qcontent</span><span>writedate</span><span>pass</span></li>
</ul> -->

<div style="display: none" id = "list" ></div>


<div class="pagination"></div>




<!--  
<script>

	
//qna 전체목록 보여주기
	
	//let writer = "${logId }"; 
		

	let page = 1;	//지금 있는 페이지에 초록색 표시하려고 썼음 
	
	function showList(pg = 1)	{ 
		document.querySelectorAll('#li td:not(:nth-of-type(1))').forEach(li => li.remove()); 
		fetch('qnaList2.do?page=' + pg) 
		.then(resolve => resolve.json())
		.then(result => {
		console.log("result" , result);
	
		
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
		result.list.forEach(item => {
			let li = makeRow(item);
				console.log('li 값 나와라', li);
			
			//ul > li 생성
			document.querySelector('#tbody').append(li);
			
		})
			//page생성
				console.log("dto는 뭘까요" , result.dto);
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
			aTag.innerHTML = ">>";
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
			aTag.innerHTML = "<<";
			document.querySelector('.pagination').append(aTag);
		} 
		
		
		
		
	//a태그에 이벤트 입력.  - pagination클래스 a태그 다 가져옴 > 각각에 이벤트 걸겠다.
		document.querySelectorAll('.pagination').forEach(elem =>{
			elem.addEventListener('click', function(e){
				e.preventDefault(); // form, a => 링크 기능을 차단하고 아랫부분을 계쏙 실행하겠습니다~
				pg = elem.getAttribute('href');
				showList(page);
			})
		})
	} //makePaging
	
	



	
	

	</script>
-->
</html>















