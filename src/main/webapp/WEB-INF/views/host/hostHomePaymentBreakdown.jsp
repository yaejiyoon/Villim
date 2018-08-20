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
<title>계정 관리</title>

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	height: 800px;
}

#wrapper-sub {
	border: 1px solid black;
	width: 100%;
	height: auto;
	display: inline-block;
	float: left;
}

#left-side {
	border: 1px solid black;
	width: 30%;
	height: 100%;
	float: left;
	display: inline-block;
}

#left-side div {
	font-size: 17px;
	color: #A4A4A4;
	margin-bottom: 10px;
}

#right-side {
	height: 100%;
	width: 67%;
	display: inline-block;
	float: right;
}

.right-title {
	font-size: 25px;
	height: 20%;
	padding-top: 10px;
	padding-bottom: 10px;
}

#btn-wrap {
	text-align: center;
	height: 20%;
	padding-top: 20px;
	padding-bottom: 20px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
}

.rt2 {
	margin-top: 30px;
}

.radio-wrap {
	display: inline-block;
	float: left;
	width: 5%;
}

.radio-content {
	display: inline-block;
	float: left;
	width: 95%;
}

.btn-wrap {
	width: 100%;
}

.btn-wrap-sub1 {
	width: 50%;
	display: inline-block;
	float: left;
}

.btn-wrap-sub2 {
	witdh: 50%;
	display: inline-block;
	float: right;
}

.ar-sub {
	width: 100%;
	display: inline-block;
	float: left;
}

.ar-sub div:first-child {
	width: 50%;
	display: inline-block;
	float: left;
}

.ar-sub div:last-child {
	width: 50%;
	display: inline-block;
	float: left;
	text-align: right;
}

#sel-wrap {
	width: 100%;
	display: inline-block;
	float: left;
}

#start {
	width: 22%;
	display: inline-block;
	float: left;
}

#start2 {
	width: 20%;
	display: inline-block;
	float: left;
}

#start-tit {
	margin-top: 10px;
	font-size: 18px;
	width: 8%;
	float: left;
	display: inline-block;
}

#end-tit {
	margin-top: 10px;
	font-size: 18px;
	width: 8%;
	float: left;
	display: inline-block;
}

#end {
	width: 22%;
	display: inline-block;
	float: left;
}

#end2 {
	width: 20%;
	display: inline-block;
	float: left;
}
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>

	<div id="wrapper">
		<div id=wrapper-sub>
			<div id="left-side">
				<div>
					<a href="hostHomeManage.do" style="color: #A4A4A4;">알림</a>
				</div>
				<div>
					<a href="#" style="color: #A4A4A4;">결제 수단</a>
				</div>
				<div>
					<a href="hostHomePayment.do" style="color: #A4A4A4;">대금 수령 방법</a>
				</div>
				<div>
					<a href="hostHomePaymentBreakdown.do" style="color: black;"><b>대금
							수령 내역</b></a>
				</div>
			</div>
			<div id="right-side">
				<div>
					<div class=right-title>
						<b>대금 수령 내역</b>
					</div>

					<div role="tabpanel">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home"
								aria-controls="home" role="tab" data-toggle="tab"><b>대금
										수령 완료</b></a></li>
							<li role="presentation"><a href="#profile"
								aria-controls="profile" role="tab" data-toggle="tab"><b>수령예정
										내역</b></a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active" id="home">

								<div style="margin-top: 20px; margin-bottom: 20px;">
									<b>수령 완료 금액: </b>
								</div>

								<div>
									<div style="margin-bottom: 20px;">
										<select class="form-control input-lg">
											<option>모든 숙소</option>
										</select>
									</div>

									<div id="sel-wrap">
										<div id="start-tit">시작:</div>
										<div id="start">
											<select class="form-control input-lg">
												<option selected="selected">1월</option>
												<option>2월</option>
												<option>3월</option>
												<option>4월</option>
												<option>5월</option>
												<option>6월</option>
												<option>7월</option>
												<option>8월</option>
												<option>9월</option>
												<option>10월</option>
												<option>11월</option>
												<option>12월</option>
											</select>
										</div>
										<div id="start2">
											<select class="form-control input-lg">
												<option>2012</option>
												<option>2013</option>
												<option>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option selected="selected">2018</option>
											</select>
										</div>
										<div id="end-tit">종료:</div>
										<div id="end">
											<select class="form-control input-lg">
												<option>1월</option>
												<option>2월</option>
												<option>3월</option>
												<option>4월</option>
												<option>5월</option>
												<option>6월</option>
												<option>7월</option>
												<option selected="selected">8월</option>
												<option>9월</option>
												<option>10월</option>
												<option>11월</option>
												<option>12월</option>
											</select>
										</div>
										<div id=end2>
											<select class="form-control input-lg">
												<option>2012</option>
												<option>2013</option>
												<option>2014</option>
												<option>2015</option>
												<option>2016</option>
												<option>2017</option>
												<option selected="selected">2018</option>
											</select>
										</div>
									</div>
								</div>


							</div>

							<!-- 탭 구분 -->

							<div role="tabpanel" class="tab-pane" id="profile">
								<div style="margin-top: 20px; margin-bottom: 20px;">
									<b>입금 예정 금액: 10000원</b>
								</div>
								<div>
									<select class="form-control input-lg">
										<option>인형스 방빈다 뺌!</option>
										<!-- 멤버 이메일로 숙소 꺼내기 -->
									</select>
								</div>
								<div
									style="margin-top: 50px; width: 100%; height: auto;">
									<div>
										<div class="panel-group" id="accordion" role="tablist"
											aria-multiselectable="true">
											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="headingOne">
													<h4 class="panel-title">
														<a data-toggle="collapse" data-parent="#accordion"
															href="#collapseOne" aria-expanded="false"
															aria-controls="collapseOne"> <b>2018년 8월 17일</b>
															지혜,2018년 8월 16일 - 2018년 8월 17일 인형스 방빈다 뺌

														</a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse in"
													role="tabpanel" aria-labelledby="headingOne">
													<div class="panel-body">
														<div class="ar-sub">
															<div>예약 코드</div>
															<div>12000원</div>
														</div>
														<div class=line></div>
														<div class="ar-sub">
															<div>예상 입금 날짜</div>
															<div>2018년 8월 22일</div>
														</div>
														<div class=line></div>
														<div class="ar-sub">
															<div>대금 수령 방법</div>
															<div>페이팔</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>


								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>