<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!--  -->
	<div  id="calendarDiv">
		<div id="calendar" ></div>
	</div>
	
	<!-- 게시글 목록 -->
	<div id="boardList">
	<c:forEach items="${list }" var="vo">
	<p>${vo.fname }</p>
	</c:forEach>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js"></script>
	
	
	
<script>
	var lastCkVal = "true";
	var lastOverlapCK = "true";
	var lastOverlapCKtime = "true";
	
	//올해 끝 날짜
	var today = new Date();
	var endOfYear = new Date(today.getFullYear(), 11, 31);

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			defaultView: 'month',
			defaultDate: moment().format("YYYY-MM-DD"),
			locale: 'ko',
		    validRange: function(nowDate) {
		        return {
		        	start: moment().startOf('day')/* ,
		        	end : endOfYear */
		        };
		      },
			dayClick: function(date, jsEvent, view) {
				let data = date.format();
				//$(this).addClass('choiceDate');
				/* location.href="/study/studyRoom.do?use_start="+data; */
				//location.href="productList.do";
				getBoardData(data);
			},
		});
	})
	
	
	//달력 
	
	function getBoardData(val){
		console.log(val);
	    var encodedVal = encodeURIComponent(val);

	    
	    fetch('festivalList.do',{
	    	method: 'post',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			body: 'brdDate='+encodedVal
	    })
	    .then(resolve=>resolve.text())
	    .then(result=>{
	    	console.log(result)
	    	var brdDiv = document.getElementById("boardList");
	    	brdDiv.innerHTML=result;
	    })
	    .catch(err=>console.log(err))
	    
		
	}
	</script>
	

</body>
