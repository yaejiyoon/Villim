<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


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
	margin: 30px auto;
	width: 70%;
	height: auto;
}

#wrapper-sub {
	width: 100%;
	display: inline-block;
	float: left;
	margin-bottom: 100px;
}

#left-side {
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

.nav-wrap {
	margin-top: 50px;
}

#footer {
	display: inline-block;
}
</style>
<script>
	$(document).ready(function() {
		/* 탭 클릭시  */
		$('#navtab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});

		$("ul.nav-tabs > li > a").on("shown.bs.tab", function(e) {
			var id = $(e.target).attr("href").substr(1);
			window.location.hash = id;
		});

		var hash = window.location.hash;
		$('#navtab a[href="' + hash + '"]').tab('show');

		var smon_ops = [];
		var emon_ops = [];
		
		$('#startmon option').each(function(){
			smon_ops.push($(this).val());
			
		})
		$('#endmon option').each(function(){
			emon_ops.push($(this).val());
		})
		
		for(var i=0; i<smon_ops.length; i++){
			console.log("아오");
			console.log("빡"+smon_ops[i]);
			console.log(${param.startmon});
			if( ${param.startmon} == smon_ops[i] ){
				$('#startmon').find("option[value="+${param.startmon}+"]").prop("selected",true);
				console.log("ops::"+smon_ops[i]);
			} 
			if( ${param.endmon} == emon_ops[i] ){
				$('#endmon').find("option[value="+${param.endmon}+"]").prop("selected",true);
				console.log("ops::"+emon_ops[i]);
			}
			if( ${param.startmon} > emon_ops[i]){
				$('#endmon').find("option[value="+emon_ops[i]+"]").prop("disabled",true);
				$('#endmon').find("option[value="+${param.startmon}+"]").prop("selected",true);
			}
			
			
		}
		
		
	})
</script>


</head>
<body>
	<%
		int cnt = 0;
		int cntt = 0;
	%>
	<%@ include file="../../resource/include/hostHeader.jsp"%>

	<div id="wrapper">
		<div id=wrapper-sub>
			<div id="left-side">
				<!-- 				<div> -->
				<!-- 					<a href="hostHomeManage.do" style="color: #A4A4A4;">알림</a> -->
				<!-- 				</div> -->
				<!-- 				<div> -->
				<!-- 					<a href="#" style="color: #A4A4A4;">결제 수단</a> -->
				<!-- 				</div> -->
				<div>
					<a href="hostHomePayment.do" style="color: #A4A4A4;">대금 수령 방법</a>
				</div>
				<div>
					<a href="hostHomePaymentBreakdown.do?seq=0&startmon=1&startyear=2018&endmon=9&endyear=2018"
						style="color: black;"><b>대금 수령 내역</b></a>
				</div>
			</div>
			<div id="right-side">
				<div>
					<div class=right-title>
						<b>대금 수령 내역</b>
					</div>

					<div class="nav-wrap" role="tabpanel">
						<!-- Nav tabs -->
						<ul class="nav nav-tabs" role="tablist" id="navtab">
							<li role="presentation" class="active"><a href="#home"
								aria-controls="home" role="tab" data-toggle="tab"><b>대금
										수령 완료</b></a></li>
							<li role="presentation"><a href="#profile" id="pro"
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
									<div style="width: 100%;">
										<select class="form-control input-lg" id="sel"
											onchange="if(this.value) location.href=(this.value);"
											style="width: 100%; display: inline-block; margin-top: 10px; margin-bottom: 5px;">
											<option value="hostHomePaymentBreakdown.do">모든 숙소</option>
											<c:forEach var="hlist" items="${hlist}">
												<option ${param.seq eq hlist.home_seq ? "selected" : "" }
													value="hostHomePaymentBreakdown.do?seq=${hlist.home_seq}&startmon=${param.startmon}&startyear=${param.startyear}&endmon=${param.endmon}&endyear=${param.endyear}#home">${hlist.home_name }</option>
											</c:forEach>
										</select>
									</div>
									<form id="submit" action="hostHomePaymentBreakdown.do"
										method="get">
										<input type="hidden" name="seq" value="${param.seq }">
										<div id="sel-wrap">
											<div id="start-tit">시작:</div>
											<div id="start">
												<select name="startmon" id="startmon"
													onchange="this.form.submit()" class="form-control input-lg">
													<option value="1">1월</option>
													<option value="2">2월</option>
													<option value="3">3월</option>
													<option value="4">4월</option>
													<option value="5">5월</option>
													<option value="6">6월</option>
													<option value="7">7월</option>
													<option value="8">8월</option>
													<option value="9">9월</option>
													<option value="10">10월</option>
													<option value="11">11월</option>
													<option value="12">12월</option>
												</select>
											</div>
											<div id="start2">
												<select name="startyear" id="startyear"
													onchange="this.form.submit()" class="form-control input-lg">
													<option value="2018" selected="selected">2018</option>
												</select>
											</div>
											<div id="end-tit">종료:</div>
											<div id="end">
												<select name="endmon" id="endmon"
													onchange="this.form.submit()" class="form-control input-lg">
													<option value="1">1월</option>
													<option value="2">2월</option>
													<option value="3">3월</option>
													<option value="4">4월</option>
													<option value="5">5월</option>
													<option value="6">6월</option>
													<option value="7">7월</option>
													<option value="8">8월</option>
													<option value="9" selected="selected">9월</option>
													<option value="10">10월</option>
													<option value="11">11월</option>
													<option value="12">12월</option>
												</select>
											</div>
											<div id=end2>
												<select name="endyear" id="endyear"
													onchange="this.form.submit()" class="form-control input-lg">
													<option value="2018" selected="selected">2018</option>
												</select>
											</div>
										</div>
									</form>
									<script>
									
								</script>
								</div>

								<c:if test="${dateList.size() != 0 }">
									<c:forEach var="list" items="${dateList }" begin="0" end="2">
										<%
											cntt++;
										%>
										<div
											style="margin-top: 20px; float: left; width: 100%; height: 100px; border: 1px solid #E6E6E6">
											<div style="width: 69%; display: inline-block;">
												<div style="margin-bottom: 10px;">
													<b>${list.receiveDate}</b>
												</div>
												<div>${list.member_name },${list.checkIn}-
													${list.checkOut }</div>
												<div>${list.home_name }</div>
												<div>${list.account_number }</div>
											</div>
											<div
												style="color: #008489; width: 30%; height: 100%; float: right; text-align: right; display: inline-block;">
												<a data-toggle="collapse" href="#collapseExample<%=cntt%>"
													style="color: #008489;" aria-expanded="false"
													aria-controls="collapseExample"><span
													style="font-size: 17px;">￦${list.payment_amount }</span>
													&nbsp;<span style="font-size: 23px; margin-top: 5px;"
													class="glyphicon glyphicon-chevron-down"></span> </a>
											</div>
										</div>
										<div class="collapse" id="collapseExample<%=cntt%>"
											style="background-color: white;">
											<div class="well" style="padding: 0;">
												<div class="panel-body" style="background-color: white;">
													<div class="ar-sub">
														<div>예약 코드</div>
														<div>${list.payment_seq }</div>
													</div>
													<div class=line></div>
													<div class="ar-sub">
														<div>수령 예정 금액</div>
														<div>￦${list.payment_amount }</div>
													</div>
													<div class=line></div>
													<div class="ar-sub">
														<div>예상 입금 날짜</div>
														<div>${list.receiveDate}</div>
													</div>
													<div class=line></div>
													<div class="ar-sub">
														<div>대금 수령 방법</div>
														<div>은행 수령</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:if>
							</div>
							<c:if test="${dataList.size() == 0 || dataList eq null}">
								<div style="width: 100%; height: auto; font-size: 18px;">
									<b style="margin-top: 40px; font-size: 20px;">수령예정 내역이
										없습니다.</b>
								</div>
							</c:if>

							<!---------------------- 탭 구분 -------------------->

							<div role="tabpanel" class="tab-pane" id="profile">
								<div style="margin-top: 20px; margin-bottom: 20px;">
									<b>입금 예정 금액 : &nbsp;￦${amount }</b>
								</div>
								<div>
									<select class="form-control input-lg" id="sel"
										onchange="if(this.value) location.href=(this.value);"
										style="width: 100%; display: inline-block; margin-top: 10px;">
										<option value="hostHomePaymentBreakdown.do#profile">모든
											숙소</option>
										<c:forEach var="hlist" items="${hlist}">
											<option ${param.seq eq hlist.home_seq ? "selected":"" }
												value="hostHomePaymentBreakdown.do?seq=${hlist.home_seq}#profile">${hlist.home_name }</option>
										</c:forEach>
									</select>
								</div>

								<c:if test="${plist.size() != 0 }">
									<c:forEach var="plist" items="${plist }" begin="0" end="2">
										<%
											cnt++;
										%>
										<div
											style="margin-top: 20px; float: left; width: 100%; height: 100px; border: 1px solid #E6E6E6">
											<div style="width: 69%; display: inline-block;">
												<div style="margin-bottom: 10px;">
													<b>${plist.receiveDate}</b>
												</div>
												<div>${plist.member_name },${plist.checkIn}-
													${plist.checkOut }</div>
												<div>${plist.home_name }</div>
												<div>${plist.account_number }</div>
											</div>
											<div
												style="color: #008489; width: 30%; height: 100%; float: right; text-align: right; display: inline-block;">
												<a data-toggle="collapse" href="#collapseExample<%=cnt%>"
													style="color: #008489;" aria-expanded="false"
													aria-controls="collapseExample"><span
													style="font-size: 17px;">￦${plist.payment_amount }</span>
													&nbsp;<span style="font-size: 23px; margin-top: 5px;"
													class="glyphicon glyphicon-chevron-down"></span> </a>
											</div>
										</div>
										<div class="collapse" id="collapseExample<%=cnt%>"
											style="background-color: white;">
											<div class="well" style="padding: 0;">
												<div class="panel-body" style="background-color: white;">
													<div class="ar-sub">
														<div>예약 코드</div>
														<div>${plist.payment_seq }</div>
													</div>
													<div class=line></div>
													<div class="ar-sub">
														<div>수령 예정 금액</div>
														<div>￦${plist.payment_amount }</div>
													</div>
													<div class=line></div>
													<div class="ar-sub">
														<div>예상 입금 날짜</div>
														<div>${plist.receiveDate}</div>
													</div>
													<div class=line></div>
													<div class="ar-sub">
														<div>대금 수령 방법</div>
														<div>은행 수령</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</c:if>
								<c:if test="${plist.size() == 0 }">
									<div
										style="margin-top: 20px; width: 100%; height: auto; font-size: 18px;">
										<b style="font-size: 20px;">수령예정 내역이 없습니다.</b>
									</div>
								</c:if>
							</div>
							<c:if test="${plist.size() >3 }">
								<div>
									<a href="#">더 보기</a>
								</div>
							</c:if>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>

	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>