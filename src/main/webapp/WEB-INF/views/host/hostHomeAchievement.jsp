<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	height: auto;
}

#wrapper-sub1 {
	border: 1px solid black;
	width: 100%;
	display: inline-block;
	float: left;
}

#wrapper-sub2 {
	margin-top: 50px;
	border: 1px solid black;
	width: 100%;
	display: inline-block;
	float: left;
}

#wrapper-sub3 {
	margin-top: 70px;
	margin-bottom: 50px;
	border: 1px solid black;
	width: 100%;
	display: inline-block;
	float: left;
	border: 1px solid black;
}

.home-details {
	border: 1px solid black;
	margin-top: 60px;
	width: 50%;
	display: inline-block;
	float: left;
	padding: 0;
}

.home-details div {
	display: inline-block;
	float: left;
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

.nav-btn:hover {
	
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

.nav-btn:checked {
	text-decoration: none;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}
.well
{
	font-size: 20px;
}
#gpa-title{
	font-size: 25px;
}

#review-title{
	font-size: 25px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id=wrapper-sub1>
			<div class="home-details" class="row">
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostHomeTab.do?seq=${hdto.home_seq}'">평점</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReserveTab.do?seq=${hdto.home_seq}'">수입</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostPriceTab.do?seq=${hdto.home_seq}'">조회수</button>
				</div>
				<div class="col-md-3">
					<button class="nav-btn" type="button"
						onclick="location.href='hostReservePossibleTab.do?seq=${hdto.home_seq}'">발전기회</button>
				</div>
			</div>
		</div>

		<div id=wrapper-sub2>
			<div id=gpa>
				<div id=gpa-title><b>평점(0개)</b></div>
				<div class=line></div>

				<div>
					<a data-toggle=collapse href=#collapseExample1
						aria-expanded="false" aria-controls="collapseExample"><b>전체적 만족도</b></a>
				</div>
				<div class=collapse id=collapseExample1>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>
				<div class=line></div>

				<div>
					<a data-toggle=collapse href=#collapseExample2
						aria-expanded="false" aria-controls="collapseExample"><b>정확성</b></a>
				</div>
				<div class=collapse id=collapseExample2>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>
				<div class=line></div>

				<div>
					<a data-toggle=collapse href=#collapseExample3
						aria-expanded="false" aria-controls="collapseExample"><b>청결도</b></a>
				</div>
				<div class=collapse id=collapseExample3>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>
				<div class=line></div>


				<div>
					<a data-toggle=collapse href=#collapseExample4
						aria-expanded="false" aria-controls="collapseExample"><b>의사소통</b></a>
				</div>
				<div class=collapse id=collapseExample4>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>
				<div class=line></div>

				<div>
					<a data-toggle=collapse href=#collapseExample5
						aria-expanded="false" aria-controls="collapseExample5"><b>체크인</b></a>
				</div>
				<div class=collapse id=collapseExample5>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>
				<div class=line></div>

				<div>
					<a data-toggle=collapse href=#collapseExample6
						aria-expanded="false" aria-controls="collapseExample"><b>위치</b></a>
				</div>
				<div class=collapse id=collapseExample6>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>
				<div class=line></div>

				<div>
					<a data-toggle=collapse href=#collapseExample7
						aria-expanded="false" aria-controls="collapseExample"><b>가치</b></a>
				</div>
				<div class=collapse id=collapseExample7>
					<div class=well>aaaaaaaaaaaaaaaaaaaa</div>
				</div>

			</div>
		</div>

		<div id=wrapper-sub3>
			<div>
				<div id=review-title><b>후기(0개)</b></div>
				<div class=line></div>
				<div style="font-size: 17px;"><b>전체 평점으로 필터링</b></div>
				<select id=sel-review name=gpa class="form-control input-lg">
					<option value=all selected="selected">평점이 있는 숙소</option>
					<option value=5>별 5개</option>
					<option value=4>별 4개</option>
					<option value=3>별 3개</option>
					<option value=2>별 2개</option>
					<option value=1>별 1개</option>
				</select>
			</div>
		</div>

	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>