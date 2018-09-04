<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700"> -->

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- animated -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<link rel="shortcut icon"
	href="<c:url value='/resources/img/titleLogo.png'/>" />
<title>예약&결제 목록</title>
<style>
</style>

</head>
<body>
	<%@ include file="../../resource/include/header.jsp"%>
	<div class=container
		style="height: auto; min-height:50vh;position: relative; top:6vh;left:-1vw;">
      <h3 style="color:#595959;font-weight:800;position:relative;left:-1vw;top:2vh;">예약 & 결제 정보</h3>
		<table class="table table-hover" style="text-align:center; position:relative;top:4vh;left:-2vw;">
			<thead style="text-align:center;">
				<tr  style="text-align:center;">
					<th  style="text-align:center;" scope="col">#</th>
					<th  style="text-align:center;" scope="col">숙소 이름</th>
					<th  style="text-align:center;" scope="col">체크인</th>
					<th  style="text-align:center;" scope="col">체크아웃</th>
					<th  style="text-align:center;" scope="col">숙박 비용</th>
					<th  style="text-align:center;" scope="col">상태</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach items="${myReservList}" var="list" varStatus="i">
					<tr>
						<th scope="row">${i.count}</th>
						<td style="text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">${list.home_name}</td>
						<td>${list.reserv_checkin}</td>
						<td>${list.reserv_checkout}</td>
						<td>${list.totalAmount}</td>

						<c:choose>
							<c:when test="${list.reserv_state==0}">
								<td>예약 대기중</td>
							</c:when>
							<c:when test="${list.reserv_state==1}">
								<td>예약 완료</td>
							</c:when>
							<c:when test="${list.reserv_state==2}">
								<td>예약 취소</td>
							</c:when>
							<c:when test="${list.reserv_state==3}">
								<td>예약 거절</td>
							</c:when>
							<c:when test="${list.reserv_state==4}">
								<td>결제 완료</td>
							</c:when>
							<c:when test="${list.reserv_state==5}">
								<td>결제 취소</td>
							</c:when>

						</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
	<%@ include file="../../resource/include/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>