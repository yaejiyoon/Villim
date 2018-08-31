<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="resources/hosting.css">
<link rel="stylesheet" type="text/css" href="resources/thirdhost.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.div {
	box-sizing: border-box;
}

.grid-container {
	display: grid;
	grid-gap: 35px 150px;
	grid-template-columns: 280px 280px 280px;		
	padding: 15px;
}

.grid-item {
	background-color: rgba(255, 255, 255, 0.8);
	border: 1px solid rgba(0, 0, 0, 0.8);
	padding: 20px;
	font-size: 30px;
	text-align: center;
	color: #000000;
}

.grid-block {
	background-color: #BEBEBE;
	border: 1px solid rgba(0, 0, 0, 0.8);
	padding: 20px;
	font-size: 30px;
	text-align: center;
	color: #000000;
}
.divlevel{
	margin: 20px;
}

</style>
</head>
<body>
<c:if test="${sessionScope.homestep == 1}">            	
  <%@ include file="../../resource/include/header.jsp" %>
<div class="row">
	<div class="container">
		<div class="grid-container">
			<a href="/second.host"><div class="grid-item">빌딩과 숙소 종류</div></a>
			<a href="/third.host"><div class="grid-item">침대 인구수</div></a>
			<a href="/fore.host"><div class="grid-item">지도</div></a>
			<a href="/five.host"><div class="grid-item">편의시설</div></a>
		</div>
	</div>
	<div class="divlevel"></div>
	<div class="container">
		<div class="grid-container">
			<a href="/step2first.host"><div class="grid-item">사진</div></a>
			<a href="/step2seond.host"><div class="grid-item">숙소설명</div></a>
			<a href="/step2third.host"><div class="grid-item">숙소제목</div></a>
		</div>
	</div>
	<div class="divlevel"></div>
	<div class="container">
		<div class="grid-container">
			<a href="/step3first.host"><div class="grid-item">규칙</div></a>
			<a href="/step3second.host"><div class="grid-item">예약리미트</div></a>
			<a href="/step3third.host"><div class="grid-item">최대최소</div></a>
			<a href="/step3fore.host"><div class="grid-item">예약블락</div></a>
			<a href="/step3five.host"><div class="grid-item">가격</div></a>
		</div>
	</div>
</div>
</c:if>
<c:if test="${sessionScope.homestep == 2}">            	
  <%@ include file="../../resource/include/header.jsp" %>
<div class="row">
	<div class="container">
		<div class="grid-container">
			<a href="#"><div class="grid-block" >빌딩과 숙소 종류</div></a>
			<a href="#"><div class="grid-block" >침대 인구수</div></a>
			<a href="#"><div class="grid-block" >지도</div></a>
			<a href="#"><div class="grid-block" >편의시설</div></a>
		</div>
	</div>
	<div class="divlevel"></div>
	<div class="container">
		<div class="grid-container">
			<a href="/step2first.host"><div class="grid-item">사진</div></a>
			<a href="/step2seond.host"><div class="grid-item">숙소설명</div></a>
			<a href="/step2third.host"><div class="grid-item">숙소제목</div></a>
		</div>
	</div>
	<div class="divlevel"></div>
	<div class="container">
		<div class="grid-container">
			<a href="/step3first.host"><div class="grid-item">규칙</div></a>
			<a href="/step3second.host"><div class="grid-item">예약리미트</div></a>
			<a href="/step3third.host"><div class="grid-item">최대최소</div></a>
			<a href="/step3fore.host"><div class="grid-item">예약블락</div></a>
			<a href="/step3five.host"><div class="grid-item">가격</div></a>
		</div>
	</div>
</div>
</c:if>
<c:if test="${sessionScope.homestep == 3}">            	
  <%@ include file="../../resource/include/header.jsp" %>
<div class="row">
	<div class="container">
		<div class="grid-container">
			<a href="#"><div class="grid-block">빌딩과 숙소 종류</div></a>
			<a href="#"><div class="grid-block">침대 인구수</div></a>
			<a href="#"><div class="grid-block">지도</div></a>
			<a href="#"><div class="grid-block">편의시설</div></a>
		</div>
	</div>
	<div class="divlevel"></div>
	<div class="container">
		<div class="grid-container">
			<a href="#"><div class="grid-block">사진</div></a>
			<a href="#"><div class="grid-block">숙소설명</div></a>
			<a href="#"><div class="grid-block">숙소제목</div></a>
		</div>
	</div>
	<div class="divlevel"></div>
	<div class="container">
		<div class="grid-container">
			<a href="/step3first.host"><div class="grid-item">규칙</div></a>
			<a href="/step3second.host"><div class="grid-item">예약리미트</div></a>
			<a href="/step3third.host"><div class="grid-item">최대최소</div></a>
			<a href="/step3fore.host"><div class="grid-item">예약블락</div></a>
			<a href="/step3five.host"><div class="grid-item">가격</div></a>
		</div>
	</div>
</div>
</c:if>
<script type="text/javascript">

</script>
</body>
</html>
