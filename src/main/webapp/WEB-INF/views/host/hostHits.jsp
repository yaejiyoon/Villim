<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript"
	src="<c:url value="/resources/fusioncharts-js/fusioncharts.js"/>"></script>
<script type="text/javascript"
	src="<c:url value="/resources/fusioncharts-js/themes/fusioncharts.theme.fint.js"/>"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
<style>
div {
	box-sizing: border-box;
}
body{
min-width:1280px;
}
#wrapper {
	margin: 10px auto;
	width: 70%;
	height: auto;  
	margin-bottom: 100px;
}

#wrapper-sub1 {
	width: 70%;
	display: inline-block;
}

#wrapper-sub2 {
	margin-top: 50px;
	width: 90%;
	display: inline-block;
}

#wrapper-sub3 {
	margin-top: 50px;
	width: 90%;
	display: inline-block;
}

.home-details {
	margin-top: 60px;
	width: 50%;
	padding: 0;
	display: inline-block;
}

.home-details div {
	padding: 0;
}

.nav-btn {
	background-color: white;
	text-align: center;
	border: none;
	text-decoration: none;
	width: 100%;
	height: 70px;
	padding: 0;
	font-size: 17px;
	text-align: left;
}

.nav-btn:active {
	text-decoration: none;
	border: none;
	outline: none;
}

.nav-btn:focus {
	text-decoration: none;
	border: none;
	outline: none;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
}

.gpa-con {
	width: 75%;
	height: 30px;
	font-size: 18px;
	color: black;
}

.gpa-con a {
	font-size: 18px;
	color: black;
	display: inline-block;
	float: left;
}

.gpa-con span {
	display: inline-block;
	float: right;
	font-size: 18px;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}

a:focus {
	text-decoration: none;
}

#si-title {
	font-size: 30px;
}

#si-content {
	width: 100%;
	margin-left: 0;
}

#img-wrap {
	width: 33.3%;
	display: inline-block;
}

#siimg {
	max-width: 100%;
	max-height: 100%;
}

#siimg-add {
	position:relative;
	left:20%;
	max-width: 60%;
	max-height: 60%;
}
</style>
<title>조회수</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id=wrapper-sub1>
			<div class="home-details" class="row">
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostHomeAchievement.do'">평점</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReserveTab.do'">수입</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostHits.do'">
						<b>조회수</b>
					</button>
				</div>
			</div>
		</div>
		<div class="line"></div>

		<div id=wrapper-sub2>
			<div>
				<b style="font-size: 20px;">숙소 선택</b> 
			</div>
			<select class="form-control input-lg"
				onchange="if(this.value) location.href=(this.value);"
				style="width: 70%; display: inline-block; margin-top: 20px;">
				<c:forEach var="hlist" items="${hlist}">
					<option ${param.seq eq hlist.home_seq ? "selected" : "" }
						value="hostHits.do?seq=${hlist.home_seq}">${hlist.home_name }</option>
				</c:forEach>
			</select>

			<div id=gpa>
				<div style="width: 50%; margin-top: 40px;">
					<div style="display: inline-block; font-size: 35px; width: 30%;">
						<div>
							<div style="width: 70%; display: inline-block;">
								<b>${hdto.home_view }</b>
							</div>
						</div>
						<div style="font-size: 17px;">9월 조회수</div>
					</div>
					<div
						style="margin-left: 30px; display: inline-block; font-size: 35px; width: 25%;">
						<b>0%</b><br>
						<div style="font-size: 17px;">예약률</div>
					</div>
				</div>
			</div>

			<div>
				<div id="chart-container" style="margin-top: 100px;">방문자를 해보자</div>
			</div>
		</div>

		<div id=wrapper-sub3>
			<div id="si-title">
				<b>회원님 숙소와 비슷한 숙소</b>
			</div>
			<div class="line"></div>

			<div id="si-content" class="row">
				<c:forEach var="list" items="${siList }">
					<div id="img-wrap" class="col-md-4">
						<a href="#"> <c:if test="${list.home_main_pic eq null}">
								<img id="siimg-add" class="img-rounded"
									src="<c:url value="/resources/img/photo.png"/>">
							</c:if> <c:if test="${list.home_main_pic ne null}">
								<img id="siimg" class="img-rounded"
									src="<c:url value="files/${list.home_main_pic }"/>">
							</c:if>
							<div style="text-align: center;">
								<span><b> <c:if test="${list.home_currency == 'KRW'}">￦</c:if>${list.home_price }</b></span>
								<span>${list.home_name }</span>
							</div>
							<div style="text-align: center;">후기 2 개</div>
						</a>
					</div>
				</c:forEach>
			</div>

		</div>


		<div class="line"></div>
	</div>

	<script>
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1;
		var yyyy = today.getFullYear();
		
		if(dd<10){
			dd='0'+dd;
		}
		if(mm <10){
			mm='0'+mm;
		}
	
		FusionCharts.ready(function() {
			var visitChart = new FusionCharts({
				type : 'spline',
				renderAt : 'chart-container',
				width : '100%',
				height : '400',
				dataFormat : 'json',
				dataSource : {
					// 	      "chart": {
					// 	        "theme": "fusion",
					// 	        "caption": "Visitors to website",
					// 	        "subCaption": "Last week",
					// 	        "xAxisName": "Day",
					// 	        "yAxisName": "Visits",
					// 	        "showValues": "0",
					// 	        "bgColor": "#ffffff",
					// 	        "borderAlpha": "20",
					// 	        "canvasBorderAlpha": "0",
					// 	        "usePlotGradientColor": "0",
					// 	        "plotBorderAlpha": "10",
					// 	        "placevaluesInside": "1",
					// 	        "rotatevalues": "1",
					// 	        "valueFontColor": "#ffffff",
					// 	        "showXAxisLine": "1",
					// 	        "xAxisLineColor": "#999999",
					// 	        "divlineColor": "#999999",
					// 	        "divLineIsDashed": "1",
					// 	        "showAlternateHGridColor": "0",
					// 	      },
					"chart" : {
						"xAxisName" : yyyy+"년"+mm+"월",
						"yaxisname" : "Views",
						"anchorradius" : "5",
						"showhovereffect" : "1",
						"showvalues" : "0",
						"numbersuffix" : "",
						"theme" : "fusion",
						"anchorbgcolor" : "#008489",
						"palettecolors" : "#008489",
						"bgColor" : "#ffffff",
						"borderAlpha" : "20",
						"canvasBorderAlpha" : "0",
						"usePlotGradientColor" : "0",
						"plotBorderAlpha" : "10",
						"placevaluesInside" : "1",
						"rotatevalues" : "1",
						"showXAxisLine" : "1",
						"divLineIsDashed" : "1",
						"showAlternateHGridColor" : "0",
						"yAxisMinValue" : "0",
						"yAxisMaxValue" : "300"
					},
					"data" : [ {
						"label" : "01",
						"value" : "0"
					}, {
						"label" : "02",
						"value" : "0"
					}, {
						"label" : "03",
						"value" : "0"
					}, {
						"label" : "04",
						"value" : "0"
					}, {
						"label" : "05",
						"value" : "0"
					}, {
						"label" : "06",
						"value" : "0"
					}, {
						"label" : "07",
						"value" : "0"
					}, {
						"label" : "08",
						"value" : "0"
					}, {
						"label" : "09",
						"value" : "${hdto.home_view}"
					}, {
						"label" : "10",
						"value" : "0"
					}, {
						"label" : "11",
						"value" : "0"
					}, {
						"label" : "12",
						"value" : "0"
					}

					]
				}
			});

			visitChart.render();
		});
	</script>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>