<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/locale/ko.js"></script>


	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
	</script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" />
	<title>축제 일정</title>

	<style>
		#calendar {}

		.seatDiv {
			cursor: pointer;
			width: 90px;
			aspect-ratio: 1/1 auto;
			margin: 10px;
		}

		#allTimeList td {
			cursor: pointer;
		}

		.disabledDiv {
			background-color: #A4A4A4;
			margin: 10px;
			padding: 5px;
		}

		.pickDiv {
			background-color: #E3F6CE;
		}

		.choiceday {
			background-color: #fcf8e3;
		}

		.addLine {
			text-decoration: line-through;
			background-color: #F2F2F2;
			color: #BDBDBD;
		}

		#calendarDiv {
			width: 60%;
			margin: 40px auto;
		}

		#topdiv {
			width: 1000px;
			margin: 20px auto;
		}

		#btndiv {
			width: 90%;
			text-align: right;
		}

		#timeTable {
			width: 800px;
			margin: 20px auto;
			padding: 10px;
		}

		.ableDiv {
			margin: 10px;
			padding: 5px;

		}

		#reserveDiv {
			width: 1000px;
			margin: 20px auto;
			padding: 10px;
		}
	</style>
</head>

<body>


	<div id="calendar"> </div>

	<!-- 더보기 버튼생성, totalList.do로 이동 -->
	<button onclick="selectAllFestival()" value="축제 전체 보기">축제 전체보기</button>
	<!--게시글 목록-->
	<div id="boardList">
		<!-- 	<div class="container px-4 px-lg-5 mt-5"> -->
		<!-- 		<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center"> -->
		<!-- 				상품목록 -->
		<!-- 				<div class="col mb-5" style="display:none;" id="templeateNode"> -->
		<!-- 					<div class="card h-100"> -->
		<!-- 						Sale badge -->
		<!-- 						<div class="badge bg-dark text-white position-absolute" -->
		<!-- 							style="top: 0.5rem; right: 0.5rem">개최중</div> -->
		<!-- 						<img -->
		<!-- 							class="card-img-top" src="resources/images/해맞이축제.jpg" alt="..." /> -->
		<!-- 						Product details -->
		<!-- 						<div class="card-body p-4"> -->
		<!-- 							<div class="text-center"> -->
		<!-- 								Product name -->
		<!-- 								<a href="festivalInfo.do?fno=1"> -->
		<!-- 								<h5 class="fw-bolder">이름</h5></a> -->
		<!-- 								<div -->
		<!-- 									class="d-flex justify-content-center small text-warning mb-2"> -->
		<%-- 									<c:forEach var="i" begin="1" end="${vo.likeIt }">
<%-- 										<div class="bi-star-fill"></div> --%>
		<%-- 									</c:forEach> --%> --%>
		<!-- 								</div> -->
		<!-- 							</div> -->
		<!-- 							<span >내용</span> -->
		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 					Product actions -->
		<!-- 					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent"> -->
		<!-- 						<div class="text-center"> -->

		<!-- 						</div> -->
		<!-- 					</div> -->
		<!-- 				</div> -->
		<!-- 		</div> -->
		<!-- 	</div> -->
	</div>
	<script>
		var lastCkVal = "true";
		var lastOverlapCK = "true";
		var lastOverlapCKtime = "true";

		//올해 끝 날짜
		var today = new Date();
		var endOfYear = new Date(today.getFullYear(), 11, 31);

		$(document).ready(function () {

			$('#calendar').fullCalendar({
				defaultView: 'month',
				defaultDate: moment().format("YYYY-MM-DD"),
				locale: 'ko',
				validRange: function (nowDate) {
					return {
						start: moment().startOf('day')
						/* ,
						end : endOfYear */
					};
				},
				dayClick: function (date, jsEvent, view) {
					let data = date.format();
					//$(this).addClass('choiceDate');
					/* location.href="/study/studyRoom.do?use_start="+data; */
					//location.href="productList.do";
					getBoardData(data);
				},
			});
		})


		//달력

		function getBoardData(val) {
			console.log(val);
			var encodedVal = encodeURIComponent(val);


			fetch('dayList.do', {
					method: 'post',
					headers: {
						'Content-Type': 'application/x-www-form-urlencoded'
					},
					body: 'brdDate=' + encodedVal
				})
				.then(resolve => resolve.text())
				.then(result => {
					console.log(result)
					var brdDiv = document.getElementById("boardList");
					brdDiv.innerHTML = result;
				})
				.catch(err => console.log(err))


		}

		function selectAllFestival() {

			//var encodedVal = encodeURIComponent(val);


			fetch('totalList.do')
				.then(resolve => resolve.text())
				.then(result => {
					console.log(result)
					var brdDiv = document.getElementById("boardList");
					brdDiv.innerHTML = result;
				})
				.catch(err => console.log(err))

		}
	</script>

</body>

</html>