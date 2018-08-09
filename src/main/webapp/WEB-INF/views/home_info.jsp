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
<link href="<c:url value="/resources/css/home_info.css?var=3" />" rel="stylesheet" />
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAiC2f29Ojya4wPHM03CBAOZRc-q_4KeYU&callback=initMap" async defer></script> -->
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
		
		if ($(window).scrollTop() <= 900) {
			$("#fixed").css({"top":"91vh","position":"absolute"});
		}else if($(window).scrollTop() == $('#footer').scrollTop(0)){
			alert("dddd");
		}else {
			$("#fixed").css({"top":"1vh","position":"fixed"});
		}	
		
	});
	
	$(function () {

	    var a = function () {
	        var b = $(window).scrollTop();
	        var d = $("#info-main-right").offset().top;
	        var f = $("#footer").offset().top;
	        var c = $("#fixed");
	        var h = $("#fixed").height() + 60; // margin

	        if (b > d) {
	            var myTop = $(window).scrollTop();
	            if (myTop > f - h) myTop = f - h;
	            c.css({
	                position: "absolute",
	                top: myTop,
	                bottom: ""
	            })
	        } else {
	            if (b <= d) {
	                c.css({
	                    position: "absolute",
	                    top: "",
	                    bottom: ""
	                })
	            }
	        }
	    };
	    
	    $(window).scroll(a);
	    
	    
	    
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
            <div id="info-main-left">
               <div id="info-main01">
               		<div id="info-title">
               			<div id="info-title-left">
               				<span>집 전체</span>
               				<h2 style="color:black; margin-top:2px;">아늑한 제주 돌집, 북스테이 독채민박 초(old&cozy house)</h2>
               				<span>Seongsan-eup, Seogwipo-si</span>
               				<br>
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
               			<a href="" class="green">이 공간 자세히 알아보기 </a>
               			<br>
               			<br>
               			<a href="" class="green">호스트에게 연락하기 </a>
               			<br>
               			<br>
               		</div>
               </div>
               <div id="info-main02">
               		<div id="info-main02-left">
               			<br>
               			<span>편의 시설</span>
               			<br>
               			<br>
               			<img src="<c:url value='../resources/img/kitchen.png'/>" class="amenities">
               			주방
               			<br>
               			<br>
               			<img src="<c:url value='../resources/img/wifi.png'/>" class="amenities">
               			무선 인터넷
               			<br>
               			<br>
               			<img src="<c:url value='../resources/img/parking.png'/>" class="amenities">
               			건물 내 무료 주차
               			<br>
               			<br>
               			<a href="" class="green">30개 편의시설 모두 보기 </a>
               		</div>
               		<div id="info-main02-right">
               			<br>
               			<span></span>
               			<br>
               			<br>
               			<img src="<c:url value='../resources/img/morning.png'/>" class="amenities">
               			아침 식사
               			<br>
               			<br>
               			<img src="<c:url value='../resources/img/laptop.png'/>" class="amenities">
               			노트북 작업 공간
               			<br>
               			<br>
               			<img src="<c:url value='../resources/img/iron.png'/>" class="amenities">
               			다리미
               			
               		</div>
               		
               </div>
               <div id="info-main03">
               		<div id="info-main03-top">
               			<br>
               			<span>침대/침구</span>
               		</div>
               		<div id="info-main03-bottom">
               			<div class="bed-div">
               				<div>
               					<img src="<c:url value='../resources/img/bed2.png'/>" class="bed">
               					<br>
               					<span class="bedroom">1번 침실</span>
               					<br>
               					<span class="bedtype">퀸사이즈 침대 1개</span>
               				</div>
               			</div>
               			<div class="bed-div">
               				<div>
               					<img src="<c:url value='../resources/img/bed2.png'/>" class="bed">
               					<br>
               					<span class="bedroom">2번 침실</span>
               					<br>
               					<span class="bedtype">매트리스(요와 이불) 2개</span>
               				</div>
               			</div>
               			<div class="bed-div">
               				<div>
               					<img src="<c:url value='../resources/img/bed2.png'/>" class="bed">
               					<br>
               					<span class="bedroom">공용 공간</span>
               					<br>
               					<span class="bedtype">소파 베드 1개</span>
               				</div>
               			</div>
               		</div>
               </div>
               <div id="info-main04">
               		<br>
               		<span>예약 가능 여부</span>
               </div>
               <div id="info-main05">
               		<div id="info-main05-top">
               			<div id="main05-top-sub01">
               				<br>
               				<span>후기 342개</span>
               				<img src="<c:url value='../resources/img/star.png'/>" class="main05-star">
            				<img src="<c:url value='../resources/img/star.png'/>" class="main05-star">
            				<img src="<c:url value='../resources/img/star.png'/>" class="main05-star">
            				<img src="<c:url value='../resources/img/star.png'/>" class="main05-star">
            				<img src="<c:url value='../resources/img/star.png'/>" class="main05-star">
            				<img src="<c:url value='/resources/img/search.png'/>" id="reviewSearch">
							<input type="text" class="search-query2 form-control" placeholder="후기 검색" />
               			</div>
               			<div id="main05-top-sub02">
               				<div class="main05-top-sub02">
               					<div class="review-text">
               						<h5>정확성</h5>
               						<h5>의사소통</h5>
               						<h5>청결도</h5>
               					</div>
               					<div class="review-star">
               						<div>
               							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
               						</div>
               						<div>
               							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
               						</div>
               						<div>
               							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
               						</div>
               					</div>
               				</div>
               				<div class="main05-top-sub02">
               					<div class="review-text">
               						<h5>위치</h5>
               						<h5>체크인</h5>
               						<h5>가치</h5>
               					</div>
               					<div class="review-star">
               						<div>
               							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
               						</div>
               						<div>
               							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
               						</div>
               						<div>
               							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
            							<img src="<c:url value='../resources/img/star.png'/>" >
               						</div>
               					</div>
               				</div>
               			</div>
               		</div>
               		<div id="info-main05-review">
               			<div class="review-wrapper">
               				<div class="review-top">
               					<div class="review-pic">
               						<img src="<c:url value='../resources/img/1.jpg'/>" >
               					</div>
               					<div class="review-date">
               						<span>제니</span>
               						<br>
               						2018년 8월
               					</div>
               				</div>
               				<div class="review-bottom">
               					<br><br>
               					일본여행을 온것 같은 정갈하고 아기자기한 분위기~~ 입구의 돌담길부터 한적한 제주의 시골 마을을 느낄수 있습니다.
               					책들이 있어 더 좋은~ 커피와 함께 하라고~돌체구스토 머신에 캡슐까지 제공 다시 가고 싶은 곳~^^
               				</div>
               				
               			</div>
               			<div class="review-wrapper">
               				<div class="review-top">
               					<div class="review-pic">
               						<img src="<c:url value='../resources/img/1.jpg'/>" >
               					</div>
               					<div class="review-date">
               						<span>제니</span>
               						<br>
               						2018년 8월
               					</div>
               				</div>
               				<div class="review-bottom">
               					<br><br>
               					일본여행을 온것 같은 정갈하고 아기자기한 분위기~~ 입구의 돌담길부터 한적한 제주의 시골 마을을 느낄수 있습니다.
               					책들이 있어 더 좋은~ 커피와 함께 하라고~돌체구스토 머신에 캡슐까지 제공 다시 가고 싶은 곳~^^
               				</div>
               				
               			</div>
               			<div class="review-wrapper">
               				<div class="review-top">
               					<div class="review-pic">
               						<img src="<c:url value='../resources/img/1.jpg'/>" >
               					</div>
               					<div class="review-date">
               						<span>제니</span>
               						<br>
               						2018년 8월
               					</div>
               				</div>
               				<div class="review-bottom">
               					<br><br>
               					일본여행을 온것 같은 정갈하고 아기자기한 분위기~~ 입구의 돌담길부터 한적한 제주의 시골 마을을 느낄수 있습니다.
               					책들이 있어 더 좋은~ 커피와 함께 하라고~돌체구스토 머신에 캡슐까지 제공 다시 가고 싶은 곳~^^
               				</div>
               				
               			</div>
               		</div>
               		<div id="info-main05-host">
               			<div id="host-top">
               				<div id="host-top-left">
               					<p>호스트: Kim님</p>
               					Seogwipo-si, 한국 · 회원 가입: 2013년 10월
               				</div>
               				<div id="host-top-right">
               					<img src="<c:url value='../resources/img/1.jpg'/>">
               				</div>
               			</div>
               			<div id="host-contents">
               				My name is Sarah and I live just a few minutes away from the sea. 
               				I’m book translator and love to travel in search of new adventures, to meet new people, 
               				to browse flea markets hunting for old items, to eat tasty food and drink fine wine, 
               				to read and float in the sea, to ramble round old streets, and to blow in the wind.
               			</div>
               			<div id="host-bottom">
               				<p>언어: </p><span>English, 한국어</span><br>
							<p>응답률: </p><span>100%</span><br>
							<P>응답 시간: </P><span>1시간 이내</span>
               			</div>
               			<button id="toHost" class="btn btn-secondary">호스트에게 연락하기</button>
               		</div>
               </div>
               <div id="info-main06">
               		<div id="info-main06-top">
               			<br>
               			<span>지역 정보</span>
               			<br>
               			<h5>Kim님의 숙소는 Seongsan-eup, Seogwipo-si,제주도,한국에 있습니다.</h5>
               		</div>
               		<div id="info-main06-map">
               			
               		</div>

						<!-- <script>
        					var map;
							function initMap() {
								map = new google.maps.Map(document
										.getElementById('info-main06-map'), {
									center : {
										lat : 37.5338151,
										lng : 126.89697839999997
									},
									zoom : 14
								});
							}
						</script> -->

					</div>
               <div id="info-main07">
               		<br>
               		<span>숙소 이용규칙</span>
               		<br>
               		<br>
               		<h5>어린이(만 0-12세)에게 안전하거나 적합하지 않음</h5>
               		<h5>흡연 금지</h5>
               		<h5>반려동물 동반에 적합하지 않음</h5>
               		<h5>파티나 이벤트 금지</h5>
               		<h5>체크인 가능 시간: 14:00 - 22:00</h5>
               		<h5>체크아웃: 11:00까</h5>
					<br>
					<a href="" class="green">숙소 이용규칙 모두 보기</a>
               </div>
               <div id="info-main08">
               		<br>
               		<span>예약 취소</span>
               		<br>
               		<br>
               		<span>엄격 정책 - 체크인 30일 전까지 예약 취소 시 취소 수수료 없음</span>
               		<br>
               		체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다.
               		<br>
               		<br>
               		<a href="" class="green">정책 자세히 읽기</a>
               </div>
            </div>
            <div id="info-main-right">
            	<div id="fixed">
            		<div id="fixed-sub01">
            			<br>
            			<img src="<c:url value='../resources/img/won.png'/>" style="width:20px;">
            			<h3 style="display: inline; font-weight: 600;">731,704</h3>/박
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