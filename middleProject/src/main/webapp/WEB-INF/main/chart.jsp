<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load("current", {
    packages: ["corechart"]
  });
  google.charts.setOnLoadCallback(drawChart);

  function drawChart() {
	  fetch('drawChart.do')
	  .then(resolve=>resolve.json())
	  .then(result=>{    //{}
		  console.log()
		  
		  let dataAry =[['FNAME', 'CNT']]
		  result.forEach(item=>{
			  console.log(item.FNAME);
			  dataAry.push([item.FNAME , item.CNT])
		  })
		  console.log(dataAry)
		    var data = google.visualization.arrayToDataTable(dataAry);

		    var options = {
		      title: '',
		      is3D: true
		      
		    };

		    var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
		    chart.draw(data, options);
	  })
	  .catch(err=>console.log(err))
	  

  }
</script>
<div style="margin: 0 auto;">
	<h3>👍축제별 판매량</h3>
	<div id="piechart_3d"
		style="width: 900px; height: 500px; margin:100px;"></div>
</div>
