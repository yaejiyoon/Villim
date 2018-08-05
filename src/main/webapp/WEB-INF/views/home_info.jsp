<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOME</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link href="<c:url value="/resources/css/home_info.css?var=1" />" rel="stylesheet" />
<style>
   @font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
   
      @font-face {
        font-family: font2;
        src: url('<c:url value='/resources/fonts/dx.ttf'/>');
   }
</style>
<script>
	$(window).scroll(function() {
		if ($(window).scrollTop() <= 800) {
			$("#fixed").css({"top":"106vh","position":"absolute"});

		} else {
			$("#fixed").css({"top":"0","position":"fixed"});
		}
	});
</script>
</head>
<body>
   <%@ include file="../resource/include/header.jsp" %>
   
   <div id="info-wrapper">
      <div id="info-contents">
         <div id="info-contents-photo">
         	<img src="<c:url value='../resources/img/home.jpg'/>">
         	<button id="picsBT" class="btn btn-secondary">사진 보기</button>
         	<button id="shareBT" class="btn btn-secondary">
         		<img src="<c:url value='../resources/img/share.png'/>">
         		공유하기
         	</button>
         	<button id="likeBT" class="btn btn-secondary">
         		<img src="<c:url value='../resources/img/like.png'/>">
         		저장
         	</button>
         </div>
         <div id="info-contents-main">
         	<br>
            <div id="info-main-left">
               <div id="info-main01">
               		<div id="info-title">
               			<div id="info-title-left">
               				<span>집 전체</span>
               				<h2 style="color:black; margin-top:2px;">아늑한 제주 돌집, 북스테이 독채민박 초(old&cozy house)</h2>
               				<span>Seongsan-eup, Seogwipo-si</span>
               				<br>
               				<img src="<c:url value='../resources/img/people.png'/>">인원 5명
               				<img src="<c:url value='../resources/img/door.png'/>">침실 3개
               				<img src="<c:url value='../resources/img/bed.png'/>">침대 1개
               				<img src="<c:url value='../resources/img/bath.png'/>">욕실 2개
               			</div>
               			<div id="info-title-right">
               				<img src="<c:url value='../resources/img/1.jpg'/>">
               				<br>
               				<h5 style="padding-left: 25px;">kim</h5>
               				<br>
               			</div>
               		</div>
               		<div id="info-details">
               			<br>
               			100년 된 제주 돌집을 손보았습니다. 고급스럽고 넓지는 않으나, 
               			시골집의 불편함은 최소화하고 아늑함을 주려 노력했습니다. 책과 함께 휴가를 보낼 수 있는 '북스테이' 공간으로, 
               			약 2천 권의 책이 비치되어 있습니다. 독서, 일행과의 대화를 위해 TV는 일부러 두지 않았습니다.
               			<br>
               			<br>
               			방문으로 구분된 방이 2개, 문이 없는 서재공간 겸 방이 1개입니다. 방 하나에는 더블침대, 다른 방에는 침구(요)를 준비해드립니다.
               			작은 욕실 2개, 간단한 취사가 가능한 주방이 있습니다.
               			욕실에 욕조는 없으나 아기가 있을 경우 요청하시면 아기욕조를 넣어드립니다.
               			<br>
               			<br>
               			<a href="">이 공간 자세히 알아보기 </a>
               			<br>
               			<br>
               			<a href="">호스트에게 연락하기 </a>
               			<br>
               			<br>
               		</div>
               </div>
               <div id="info-main02">
               		
               </div>
               <div id="info-main03"></div>
               <div id="info-main04"></div>
               <div id="info-main05"></div>
               <div id="info-main06"></div>
               <div id="info-main07"></div>
               <div id="info-main08"></div>
            </div>
            <div id="info-main-right">
            	<div id="fixed">
            		<div id="fixed-sub01">
            			<br>
            			<img src="<c:url value='../resources/img/won.png'/>" style="width:20px;">
            			<h3 style="display: inline;">731,704</h3>/박
            			<br>
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<h6 style="display: inline;">342</h6>
            		</div>
            		<div id="fixed-sub02">
            			<br>
            			날짜
            			<input type="text" class="search-query form-control"/>
            			<br>
            			인원
            			<input type="text" class="search-query form-control"/>
            			<br>
            			<button id="reservationBT" class="btn btn-secondary">
            			예약 요청
            			</button>
            			<h5 style="text-align: center;">예약 확정 전에는 요금이 청구되지 않습니다</h5>
            		</div>
            	</div>
            </div>
         </div>
      </div>
   </div>
   
   <%@ include file="../resource/include/footer.jsp" %>
</body>
</html>