<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOME</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- css -->
<link href="<c:url value="../resources/css/home/home_info.css?var=1" />" rel="stylesheet" />


<!-- 반응형 테스트 -->
<link rel="stylesheet" media="screen and (max-width: 768px)" 
href="<c:url value="../../resources/css/home/test.css" />" />

<!-- 사진 -->
<link href="<c:url value="../../resources/css/home/dist/css/lightgallery.css" />" rel="stylesheet">

<!-- 달력 -->
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/datepicker.js?var=1" />"></script>
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/i18n/datepicker.en.js" />"></script>
<link rel="stylesheet" href="<c:url value="../../resources/css/home/dist/css/datepicker.css?var=1" />" />
<link rel="stylesheet" href="<c:url value="../../resources/css/home/docs/css/style.css?var=1" />"/>


<style>

	
   @font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
   
	#header{
		font-family: font;
	}
      @font-face {
        font-family: font2;
        src: url('<c:url value='/resources/fonts/dx.ttf'/>');
   }
   
   #lightgallery{
		list-style: none;
		width:20px !important;
	}
	
	.pagination>li>a, .pagination>li>span {
		border-radius: 50% !important;
		margin: 0 5px;
	}
	
	.myCalclass{
		background-image: url("<c:url value='../resources/img/pattern2.png'/>");
		background-position: center; /* Center the image */
  		background-repeat: no-repeat; /* Do not repeat the image */
  		background-size: cover;
	}
	
}
	
</style>
<script>


	$(window).scroll(function() {
		
		if ($(window).scrollTop() >= 700) {
			$("#scrollNav").css({"display":"inline","top":"0vh","position":"fixed"});
			$("#fixed").css({"margin-top":"9vh","position":"fixed"});
			//$(".datepicker").css({"margin-top":"34vh","top":"34vh","position":"fixed"}); 
		}else if($(window).scrollTop() <= 900){
			$("#scrollNav").css({"display":"none"});
			$("#fixed").css({"margin-top":"2vh"});
			//$(".datepicker").css({"margin-top":"0vh","top":"119vh","position":"absolute"});
		}else {
			
		}
		
	});
	
	$(function () {

	    var scrollFunc = function () {
	        var b = $(window).scrollTop();
	        var d = $("#info-main-right").offset().top;
	        var f = $("#footer").offset().top;
	        var c = $("#fixed");
	        var h = $("#fixed").height() + 120; // margin
	        
	        /* var c2 = $(".datepicker");
	        var h2 = $(".datepicker").height() + 0; */
	        

	        if (b > d) {
	            var myTop = $(window).scrollTop();
	            if (myTop > f - h) myTop = f - h;
	            c.css({
	                position: "absolute",
	                top: myTop,
	                bottom: ""
	            })
	            
	            /* c2.css({
	                position: "absolute",
	                top: myTop,
	                bottom: ""
	            }) */
	            
	            
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
	    
	    $(window).scroll(scrollFunc);
	    
	});
	
	$(document).ready(function(){
		$('#lightgallery').lightGallery({
        	thumbnail:true
        });
		
		$("[data-toggle=popover]").each(function(i, obj) {

			$(this).popover({
			  html: true,
			  content: function() {
			    var id = $(this).attr('id')
			    return $('#popover-content-' + id).html();
			  }
			});
		});
		
		
		var pageFunction = function(i,home_seq){
			console.log("dddddddddddddd");
	        console.log(i);
	        console.log(home_seq);
				return null;
			};
		
		$("#amenitiesLink").click(function(){
			/* $("#scrollNav").css({"display":"none"}); */
		});
			
		
	})
	
	
</script>
</head>
<body  data-spy="scroll" data-target="#navbar-example2" data-offset="100">
   <%@ include file="../../resource/include/header.jsp" %>
   
   <!-- scrollspy -->

   
   <div id="scrollNav">
		<div id="scrollNav-contents">
			<div id="scrollNav-contents01">
				<nav id="navbar-example2" class="navbar navbar-light bg-light">
					<ul class="nav nav-pills" style="padding:0px;">
						<li class="nav-item"><a class="nav-link" href="#info-main01" id="scrollNavID01">정보</a></li>
						<li class="nav-item"><a class="nav-link" href="#info-main05" id="scrollNavID02">후기</a></li>
						<li class="nav-item"><a class="nav-link" href="#info-main05-host" id="scrollNavID03">호스트</a></li>
						<li class="nav-item"><a class="nav-link" href="#info-main06" id="scrollNavID04">위치</a></li>
					</ul>
				</nav>
			</div>
			<div id="scrollNav-contents02">
         		<div>
         			<img src="<c:url value='../resources/img/like.png'/>">
         			<p>저장</p>
         		</div>
         		<div>
					<img src="<c:url value='../resources/img/share.png'/>">
         			<p style="margin-right: 20px;">공유하기</p>
         		</div>
			</div>
		</div>
	</div>
   
   
   
   
   <div id="info-wrapper">
      <div id="info-contents">
         <div id="info-contents-photo">
         	<img src="<c:url value='../resources/img/home.jpg'/>" >
         	
         	
         	<!-- 사진보기-->
         	
         	<div>
            	<ul id="lightgallery" class="list-unstyled row ">
                	<li id="1stPhoto" data-src="<c:url value='/resources/img/1.jpg'/>" data-sub-html="<h4>Fading Light</h4><p>사진 설명</p>">
                    	<button id="picsBT" class="btn btn-secondary">
                    		사진 보기
                    		<img class="img-responsive" src="<c:url value='/resources/img/1.jpg'/>" style="display: none;">
                    	</button>
                	</li>
                	<li data-src="<c:url value='/resources/img/home.jpg'/>" data-sub-html="<p>설명설명</p>">
                        <img class="img-responsive" src="<c:url value='/resources/img/home.jpg'/>" style="display: none;">
                	</li>
            	</ul>
        	</div>
         	
         	<script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
			<script src="<c:url value="../../resources/css/home/dist/js/lightgallery-all.min.js" />"></script>
			<script src="<c:url value="../../resources/css/home/lib/jquery.mousewheel.min.js" />"></script>
         	
         	<button id="shareBT" class="btn btn-secondary">
         		<img src="<c:url value='../resources/img/share.png'/>" >
         		공유하기
         	</button>
         	<c:if test="${sessionScope.login_email eq null}">
         		<button id="likeBT" class="btn btn-secondary" data-toggle="modal" href="#myModal1">
         			<img src="<c:url value='../resources/img/like.png'/>" id="likeImg">
         			저장
         		</button>
         	</c:if>
         	<c:if test="${sessionScope.login_email ne null}">
         		<button id="likeBT2" class="btn btn-secondary" data-toggle="modal" href="#likeyModal">
         			<img src="<c:url value='../resources/img/like.png'/>" id="likeImg">
         			저장
         		</button>
         	</c:if>
         	
         	<script>
         		 /* var likeState = 0;
         		$("#likeBT2").click(function(){
    				if(likeState == 0){
    					$("#likeImg").attr("src","<c:url value='../resources/img/like2.png'/>");
    					likeState = 1;
    				}else{
    					$("#likeImg").attr("src","<c:url value='../resources/img/like.png'/>");
    					likeState = 0;
    				}
         		}) */
         		
         	</script>
         </div>
         <div id="info-contents-main">
            <div id="info-main-left">
               <div id="info-main01">
               		<div id="info-title">
               			<div id="info-title-left">
               				<span>집 전체</span>
               				<h2 style="color:black; margin-top:2px;">
               				${hdto.getHome_name() }
							안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕안녕
               				</h2>
               				<span> ${hdto.home_nation }, ${hdto.home_addr1 }, ${hdto.home_addr2 }</span>
               				<br>
               				<br>
               				<img src="<c:url value='../resources/img/people.png'/>">인원 ${hdto.home_people }명
               				<c:if test="${bedroom ne '0'}">
               				<img src="<c:url value='../resources/img/door.png'/>">침실 ${bedroom }개
               				</c:if>
               				<c:if test="${bedCount ne '0'}">
               					<img src="<c:url value='../resources/img/bed.png'/>">침대 ${bedCount }개
               				</c:if>
               				<c:if test="${bathroom ne '0'}">
               				<img src="<c:url value='../resources/img/bath.png'/>">욕실 ${bathroom }개
               				</c:if>
               			</div>
               			<div id="info-title-right">
               				<img src="<c:url value='../resources/img/1.jpg'/>">
               				<br>
               				<div style="width:80px;">
               				<h5 style="padding-left: 25px;">${memberDTO.member_name }</h5>
               				</div>
               			</div>
               		</div>
               		<div id="info-details">
               			<br>
               			<br>
               			${hdto.home_contents }
               			<br>
               			<br>
               			<div id="details-collapse" class="collapse">
               				<div class="card card-body">
               					<div id="homeExplain">
               						<p class="homeDescTitle">
               							숙소
               						</p>
               						<p>${hddto.home_desc_explain }</p>
               					</div>
               					<div id="homeSpace">
               						<p class="homeDescTitle">
               							사용가능 공간/시설
               						</p>
               						<p>${hddto.home_desc_space }</p>
               					</div>
               					<div id="homewithGuest">
               						<p class="homeDescTitle">
               							게스트와의 교류
               						</p>
               						<p>${hddto.home_desc_guest }</p>
               					</div>
               					<div id="homeEtc">
               						<p class="homeDescTitle">
               							기타 사항
               						</p>
               						<p>${hddto.home_desc_etc }</p>
               					</div>
               				</div>
               				
               			</div>
               			
               			<a id="detailsA" class="green" data-toggle="collapse" href="#details-collapse" role="button" aria-expanded="false" aria-controls="collapseExample">
               			<div id="a-content" style="display: inline;" >이 공간 자세히 알아보기</div>
               				<div style="position: static;">
               					<span class="glyphicon glyphicon-menu-down" aria-hidden="true" id="detailsDown"></span>
               				</div>
               			</a>
               			
               			<script>
               				$('#details-collapse').on('shown.bs.collapse', function () {
               				 $(this)
                             .parent()
                             .find(".glyphicon-menu-down")
                             .removeClass("glyphicon-menu-down")
                             .addClass("glyphicon-menu-up");
               				 
               				$(this)
                            .parent()
                            .find("#a-content").html("숨기기");
               				
               				$(this)
                            .parent()
                            .find(".glyphicon").attr('style','right:-55px; top:-15px;')
               				
               				 
               				});
	
               				//The reverse of the above on hidden event:

               				$('#details-collapse').on('hidden.bs.collapse', function () {
               					$(this)
                                .parent()
                                .find(".glyphicon-menu-up")
                                .removeClass("glyphicon-menu-up")
                                .addClass("glyphicon-menu-down");
               					
               					$(this)
                              	.parent()
                              	.find("#a-content").html("이 공간 자세히 알아보기");
               					
               					$(this)
                                .parent()
               					.find(".glyphicon").attr('style','right:-177px;')
               					
               				});
               			</script>
               			<br>
               			<a href="messageSend.msg" class="green">호스트에게 연락하기 </a>
               			<br>
               			<br>
               			<br>
               		</div>
               </div>
               <div id="info-main02">
               		<br>
                    <span>편의 시설</span>
                 	<br>
                 	<p>&nbsp;</p>
               		<div class="col">
               			<c:forEach items="${amenitiesList }" var="amenitiesList">
               				<c:choose>
               					<c:when test="${amenitiesList eq '주방'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/kitchen.png'/>" class="amenities">
               							주방
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq '무선인터넷'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/wifi.png'/>" class="amenities">
               							무선 인터넷
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq '옷걸이'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/hanger.png'/>" class="amenities">
               							옷걸이
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq '작업공간'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/laptop.png'/>" class="amenities">
               							노트북 작업 공간
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq '다리미'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/iron.png'/>" class="amenities">
               							다리미
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq '세탁기'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/iron.png'/>" class="amenities">
               							세탁기
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq '헤어드라이어'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/hairdryer.png'/>" class="amenities">
               							헤어드라이어
               						</div>
               					</c:when>
               					<c:when test="${amenitiesList eq 'TV'}">
               						<div class="col-md-6">
               							<img src="<c:url value='../resources/img/television.png'/>" class="amenities">
               							TV
               						</div>
               					</c:when>
               				</c:choose>
               			</c:forEach>
               		</div>
               		<div>
               		<p>&nbsp;</p>
               		<a href="#amenitiesModal" class="green" data-toggle="modal" id="amenitiesLink" >${amenitiesCount }개 편의시설 모두 보기 </a>
               		</div>
               		<br>
               		<br>
               </div>
               <div id="info-main03">
               		<div id="info-main03-top">
               			<br>
               			<span>침대/침구</span>
               			<br>
               			<br>
               		</div>
               		<div id="info-main03-bottom">
               			<div class="col">
               				<c:forEach items="${bedList }" var="bedList" varStatus="status">
               				<div class="col-md-4 bed-div">
               					<div>
               						<img src="<c:url value='../resources/img/bed2.png'/>" class="bed">
               						<br>
               						<span class="bedroom">${status.count}번 침실</span>
               						<br>
               						<c:if test="${bedList.bed_single ne '0' && bedList.bed_double eq '0' && bedList.bed_queen eq '0'}">
               							<span class="bedtype">싱글사이즈 침대 ${bedList.bed_single }개</span>
               						</c:if>
               						<c:if test="${bedList.bed_single ne '0' && (bedList.bed_double ne '0' || bedList.bed_queen ne '0')}">
               							<span class="bedtype">싱글사이즈 침대 ${bedList.bed_single }개,</span>
               						</c:if>
               						<c:if test="${bedList.bed_double ne '0' && bedList.bed_queen ne '0'}">
               							<span class="bedtype">더블사이즈 침대 ${bedList.bed_double }개,</span>
               						</c:if>
               						<c:if test="${bedList.bed_double ne '0' && bedList.bed_queen eq '0'}">
               							<span class="bedtype">더블사이즈 침대 ${bedList.bed_double }개</span>
               						</c:if>
               						<c:if test="${bedList.bed_queen ne '0' }">
               							<span class="bedtype">퀸사이즈 침대 ${bedList.bed_queen }개</span>
               						</c:if>
               					</div>
               				</div>
               				</c:forEach>
               				<c:if test="${pub eq true }">
               				<div class="col-md-4 bed-div">
               					<div>
               						<img src="<c:url value='../resources/img/sofa.png'/>" class="bed">
               						<br>
               						<span class="bedroom">공용 공간</span>
               						<br>
               						<c:if test="${mattress ne '0' && sofa ne '0'}">
               							<span class="bedtype">매트리스(요와 이불) ${mattress }개,</span>
               						</c:if>
               						<c:if test="${mattress ne '0' && sofa eq '0'}">
               							<span class="bedtype">매트리스(요와 이불) ${mattress }개</span>
               						</c:if>
               						<c:if test="${sofa ne '0'}">
               							<span class="bedtype">소파 ${sofa }개</span>
               						</c:if>
               					</div>
               				</div>
               				</c:if>
               			</div>
               			
               			
               		</div>
               </div>
               <div id="info-main07">
               		<br>
               		<span>숙소 이용규칙</span>
               		<br>
               		<br>
               		<c:forEach items="${rulesList }" var="rulesList">
               			<h5>${rulesList }</h5>
               		</c:forEach>
					<div id="hrDIV" style="display:none;"></div>
					<br>
					<div id="rules-collapse" class="collapse">
						
						<c:forEach items="${rulesDetailsList }" var="rulesDetailsList">
						<c:set var="rules" value="${rulesDetailsList}"></c:set>
							<div class="card card-body">
               				<h5>${fn:split(rules,':')[0]}</h5>
               				<h5>&nbsp; - ${fn:split(rules,':')[1]}</h5>
               			</div>
						</c:forEach>
               		</div>
               			
               		<a id="rulesA" class="green" data-toggle="collapse" href="#rules-collapse" role="button" aria-expanded="false" aria-controls="collapseExample">
               		<div id="a-content" style="display: inline;" >숙소 이용규칙 모두 보기</div>
               			<div style="position: static;">
               				<span class="glyphicon glyphicon-menu-down" aria-hidden="true" id="detailsDown"></span>
               			</div>
               		</a>
               			
               			<script>
               				$('#rules-collapse').on('shown.bs.collapse', function () {
               				 $(this)
                             .parent()
                             .find(".glyphicon-menu-down")
                             .removeClass("glyphicon-menu-down")
                             .addClass("glyphicon-menu-up");
               				 
               				$(this)
                            .parent()
                            .find("#a-content").html("숨기기");
               				
               				$(this)
                            .parent()
                            .find(".glyphicon").attr('style','right:-55px; top:-15px;');
               				
               				$(this)
                            .parent()
                            .find("#hrDIV").attr('style','display:block; width:60px; height:auto; border-bottom: 1px solid #e8e8e8;');
               				 
               				});
	
               				//The reverse of the above on hidden event:

               				$('#rules-collapse').on('hidden.bs.collapse', function () {
               					$(this)
                                .parent()
                                .find(".glyphicon-menu-up")
                                .removeClass("glyphicon-menu-up")
                                .addClass("glyphicon-menu-down");
               					
               					$(this)
                              	.parent()
                              	.find("#a-content").html("이 공간 자세히 알아보기");
               					
               					$(this)
                                .parent()
               					.find(".glyphicon").attr('style','right:-177px; ');
               					
               					$(this)
                                .parent()
                                .find("#hrDIV").attr('style','display:none;');
                   				 
               					
               				});
               			</script>
               			<br>
               			
               </div>
               <div id="info-main08">
               		<br>
               		<span>예약 취소</span>
               		<br>
               		<br>
               		<c:choose>
               			<c:when test="${hdto.home_policy eq '엄격' }">
               				<div>
               					<span>엄격 정책 - 체크인 30일 전까지 예약 취소 시 취소 수수료 없음</span>
               					<br>
               					체크인 30일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다.
               				</div>
               			</c:when>
               			<c:when test="${hdto.home_policy eq '일반' }">
               				<div>
               					<span>일반 정책 - 체크인 5일 전까지 예약 취소 시 취소 수수료 없음</span>
               					<br>
               					체크인 5일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다.
               				</div>
               			</c:when>
               			<c:when test="${hdto.home_policy eq '엄격' }">
               				<div>
               					<span>유연 정책 - 체크인 1일 전까지 예약 취소 시 취소 수수료 없음</span>
               					<br>
               					체크인 1일 전까지 예약을 취소하면 모든 수수료를 포함한 요금 전액이 환불됩니다.
               				</div>
               			</c:when>
               		</c:choose>
               		<br>
               		<a href="https://www.airbnb.co.kr/home/updated_cancellation_policies?guest_fee_policy=full_refund" class="green">정책 자세히 읽기</a>
               		<br><br><br>
               </div>
               <div id="info-main04">
               		<br>
               		<span>예약 가능 여부</span>
               		<br><br>
               		<div id="calcal" style="width: 200px; height:350px;">
               			<div id="contentInlineCal" class="datepicker-here" data-range="true"></div>
               		</div>
               		
               		<script>
            			var blockedDates = '${getBlockedDate}';
            			var disabledDays = new Array; 
            					
            			for(var i=0;i<blockedDates.split(",").length;i++){
            				disabledDays.push(blockedDates.split(",")[i]);
            			}
            			console.log(disabledDays);
            					
                    	var isDisabled;
                    	var today = new Date();
                    	var d;
                    	var blockDate;
                    	var ttt;
                    	var vvv;
                    	var reserveDate;
                    			
                    	var checkinDate;
                    	var checkoutDate;
                    			
            					
            			$('#contentInlineCal').datepicker({
                    				
                    		todayButton: new Date(),
                    		clearButton : true,
                    		autoClose : "true",
                    		dateFormat : "yyyy-mm-dd",
                    		minDate: new Date(),
                    		toggleSelected: false,
                    		language: {
                    			days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                    				  daysShort: ['일', '월', '화', '수', '목', '금', '토'],
                    				  daysMin: ['일', '월', '화', '수', '목', '금', '토'],
                    				  months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                    				  monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                    				  today: '오늘',
                    				  clear: '날짜 지우기',
                    				  dateFormat: "yyyy/mm/dd",
                    				  timeFormat: 'hh:ii aa'
                    			    },
                    				
                    		onSelect: function(formattedDate, date, inst){
                    			function formatDate(date) {
                    		              var d = new Date(date),
                    		              month = '' + (d.getMonth() + 1),
                    		              day = '' + d.getDate(),
                    		              year = d.getFullYear();

                    		              if (month.length < 2) month = '0' + month;
                    		              if (day.length < 2) day = '0' + day;

                    		               return [year, month, day].join('-');
                    		          }
                    					
                    			var checkin = formatDate(date);
                    					
                    			var inYear = checkin.split('-')[0];
                    			var inMonth = checkin.split('-')[1];
                    			var inDay = checkin.split('-')[2];
                    					
                    			console.log("select");
                    			console.log(date);
                    					
                    					
                    			if(date.length == 1){
                    				checkinDate = formatDate(date[0]);
                    						
                    				/* inpunt value */
            						$("#calendarDrop").val(checkinDate + "              →         체크아웃");
                    			}
                    					
                    			if(date.length == 2){
                    						
                    				checkinDate = formatDate(date[0]);
                    				checkoutDate = formatDate(date[1]);
                    					
                        			console.log("-----");
                        			console.log(checkinDate);
                        			console.log(checkoutDate);
                    						
                    				/* inpunt value */
            						$("#calendarDrop").val(checkinDate + "              →           "+checkoutDate);
                    						
                    				/* 날짜 선택시 달력 없애기 */
									$( "#myDropdown2" ).removeClass( "show" );
                    						
                    				$.ajax({
                    					url:"clickDate.re",
                    					type:"get",
                    					data:{
                    						checkinDate:checkinDate,
                    						checkoutDate:checkoutDate
                    						},
                    					success:function(resp){
                    						var priceLeft = resp.priceLeft;
                    						var priceRight = resp.priceRight;
                    						var cleaningfee = resp.cleaningfee;
                    						var servicefee = resp.servicefee;
                    						var total = resp.total;
                    						var blockedDate = resp.blockedDate;
                    								
                    						/* alert(priceLeft+" : "+priceRight); */
                    								
                    						$("#priceLeft").text(priceLeft);
                    						$("#priceRight").text(priceRight);
                    						$("#cleaningfee").text(cleaningfee);
                    						$("#servicefee").text(servicefee);
                    						$("#total").text(total);
                    								
                    								
                    						$("#fixed").css({"height":"580px","transition-duration":"0.1s"});
                    						$(".fixedprice").css({"display":"block"});
                    								
                    						$("#reserv_checkin").val(checkinDate);
                    						$("#reserv_checkout").val(checkoutDate);
                    						$("#nightsAmount").val(priceRight);
                    						$("#cleaningFee").val(cleaningfee);
                    						$("#serviceFee").val(servicefee);
                    						$("#totalAmount").val(total);
                    								
                    						$("#blockedDate").val(blockedDate);
                    								
                    								
                    					},
                    					error : function(request,status,error) {
                    						console.log(request.status + " : " + status + " : " + error);
                    					}
                    				})
                    						
                    			}
                    					
                    			for(var j=0; j<disabledDays.length;j++){
                    						
                    				var reservYear = disabledDays[j].split('-')[0];
                    		      	var reservMonth = disabledDays[j].split('-')[1];
                    		      	var reservDay = disabledDays[j].split('-')[2];
                    		      		  	
                    		      	reserveDate = new Date(reservYear,reservMonth,reservDay);
                    		      		  	
                    		      	console.log(reserveDate.getDate()-1);
                    		      	console.log(reserveDate.getMonth());
                    		       	console.log(inMonth);
                    						
                    		      	if(inMonth == reserveDate.getMonth()){
                    		      		if(date[0].getDate() == reserveDate.getDate()-1){
                    		      				   
                    		      			blockDate = new Date(2018,date[0].getMonth(),reserveDate.getDate()-2);
                    		      			console.log(blockDate);
                    		      				  
                    		      			d = new Date(2018,date[0].getMonth(),reserveDate.getDate()-1);
                    		      				  
                    		      			ttt = new Date(2018,date[0].getMonth(),reserveDate.getDate());
                    		      			vvv = new Date(2018,date[0].getMonth(),reserveDate.getDate()+1);
                    		      				  
                    		      		}else{
                    		      			return;
                    		      		}
                    		      	}
                    			} 
                    		},
                    		onRenderCell: function (date, cellType) {

                             	
                    			var currentDate = date.getDate();
                    			var currentMonth = date.getMonth();
                    			 currentMonth = "0"+currentMonth;
                    			 
                    			 if (cellType == 'day') {
                    			        	
                    			 function formatDate(date) {
                    			       var d = new Date(date),
                    			       month = '' + (d.getMonth() + 1),
                    			       day = '' + d.getDate(),
                    			       year = d.getFullYear();  

                    			       if (month.length < 2) month = '0' + month;
                    			       if (day.length < 2) day = '0' + day;

                    			       return [year, month, day].join('-');
                    			  }
                    			            
                    			        	 
                    			 for(var i=0; i<disabledDays.length;i++){
                    			        		
                    			     var reservYear = disabledDays[i].split('-')[0];
                    			     var reservMonth = disabledDays[i].split('-')[1];
                    			     var reservDay = disabledDays[i].split('-')[2];
                    				           
                    				 var checkin = formatDate(date);
                    				 var inYear = checkin.split('-')[0];
                    				 var inMonth = checkin.split('-')[1];
                    				 var inDay = checkin.split('-')[2];
                    				           
                    				 if(reservMonth == inMonth){
                    				      if(reservDay === inDay){
                    				       		return {
                    				       			classes: 'myCalclass',
                    				        		disabled : true
                    				        	}
                    				       };
                    				 }
                    			        	
                    			  }
                    			        	
                    			}      
                    		}  
                    	});
            					</script>
            					
               		
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
							<input type="text" class="search-query2 form-control" placeholder="후기 검색"
							style="float:right;" />
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
               			<div class="guestWrapperDiv">
               			<c:forEach items="${guestReviewList }" var="guestReviewList">
               			<div class="review-wrapper" >
               				<ul class="media-list">
								<li class="media" style="margin-bottom: 20px; margin-top: 20px;">
								<a class="pull-left">
									<img class="media-object" src="<c:url value='files/${guestReviewList.member_picture }'/>">
								</a>
									<div class="media-body">
										<h4 class="media-heading" >${guestReviewList.member_name }</h4>
										<h6>
											${guestReviewList.g_review_date}
										</h6>
										<p >${guestReviewList.g_review_public}</p>
										
										<c:forEach items="${hostReviewList }" var="hostReviewList">
										<c:if test="${guestReviewList.g_review_seq eq hostReviewList.g_review_seq}">
											<!-- Nested media object -->
											<div class="media">
												<a class="pull-left" href="#"> <img class="media-object"
													src="<c:url value='files/${hostReviewList.member_picture }'/>">
												</a>

											<div class="media-body">
												<h4 class="media-heading">${hostReviewList.member_name }님의 답변:</h4>
												<p>${hostReviewList.h_review_public }</p>
												<h6>
													${hostReviewList.h_review_date}
												</h6>
												<!-- Nested media object -->
											</div>
										</div>
										</c:if>
										</c:forEach>
									</div>	
							</ul>
               				
               			</div>
               			
               			</c:forEach>
               			</div>
               			<div id="paginationID">
               			<ul class="pagination" >
               				${page}

						</ul>
						</div>	

								<script type="text/javascript">
									function pageFunction(i,home_seq) {
										//alert(i+" : "+home_seq);
										
										var currentPage = i;
										var home_seq = home_seq;
										
										$.ajax({
			                                 url:"reviewList.info",
			                                 type:"get",
			                                 data:{
			                                    currentPage:currentPage,
			                                    home_seq:home_seq
			                                        },
			                                 success:function(resp){
			                                	 
			                                	 var page = resp.page;
			                                	 $(".pagination").html(page);
			                                	 
			                                    $('.review-wrapper').remove();
			                                    
			                                    for(var i = 0; i < resp.guestReviewList.length ; i++){
			                                       $('.guestWrapperDiv').append(
			                                                  $('<div>').attr('class','review-wrapper').append(
			                                                       $('<ul>').attr('class','media-list').append(
			                                                             $('<li>').attr('class','media '+resp.guestReviewList[i].g_review_seq).attr('id','li'+resp.guestReviewList[i].g_review_seq).attr('style','margin-bottom: 20px; margin-top: 20px;')
			                                                       )
			                                                    )
			                                            );
			                                       
			                                    }
			                                    
			                                     for(var i = 0; i < resp.guestReviewList.length ; i++){
			                                     $('#li'+resp.guestReviewList[i].g_review_seq).after(
			                                    		   $('<a>').attr('class','pull-left '+resp.guestReviewList[i].g_review_seq).attr('id','a'+resp.guestReviewList[i].g_review_seq).append(
			                                    				$('<img>').attr('class','media-object').attr('id','img'+resp.guestReviewList[i].g_review_seq).attr("src","<c:url value='files/"+resp.guestReviewList[i].member_picture+"'/>")
			                                    				.attr('style','margin-right:10px;')
			                                    		   )
			                                    	);
			                                     }
			                                       
			                                     for(var i = 0; i < resp.guestReviewList.length ; i++){
			                                    	 $('#a'+resp.guestReviewList[i].g_review_seq).after(
			                                    		$('<div>').attr('id','media-body'+resp.guestReviewList[i].g_review_seq).attr('class','media-body').append(
			                                    			$('<h4>').attr('class','media-heading '+resp.guestReviewList[i].g_review_seq).attr('id','h4'+resp.guestReviewList[i].g_review_seq).html(resp.guestReviewList[i].member_name)		
			                                    		)
			                                    	 );
			                                     }
			                                     
			                                     for(var i = 0; i < resp.guestReviewList.length ; i++){
			                                    	 $('#h4'+resp.guestReviewList[i].g_review_seq).after(
			                                    		$('<h6>').attr('id','h6'+resp.guestReviewList[i].g_review_seq).html(resp.guestReviewList[i].g_review_date)
			                                    	 );
			                                     }
			                                     
			                                     for(var i = 0; i < resp.guestReviewList.length ; i++){
			                                    	 $('#h6'+resp.guestReviewList[i].g_review_seq).after(
			                                    		$('<p>').attr('id','p'+resp.guestReviewList[i].g_review_seq).html(resp.guestReviewList[i].g_review_public)
			                                    	 );
			                                     }
			                                     
			                                     for(var i = 0; i < resp.guestReviewList.length ; i++){
			                                    	 for(var j=0;j<resp.hostReviewList.length;j++){
			                                    		 if(resp.guestReviewList[i].g_review_seq === resp.hostReviewList[j].g_review_seq){
			                                    			$("#p"+resp.guestReviewList[i].g_review_seq).after(
			                                    				$('<div>').attr('class','media').attr('id','mediaDIV'+resp.hostReviewList[j].h_review_seq).append(
			                                    					$('<a>').attr('class','pull-left').attr('id','hostA'+resp.hostReviewList[j].h_review_seq).append(
			                                    							$('<img>').attr('class','media-object').attr('id','hostImg'+resp.hostReviewList[j].h_review_seq).attr("src","<c:url value='files/"+resp.hostReviewList[j].member_picture+"'/>")	
			                                    					)
			                                    				)
			                                    			)
			                                    		 }
			                                    	 }
			                                     }
			                                     
			                                     for(var i = 0; i < resp.hostReviewList.length ; i++){
			                                    	 $("#hostA"+resp.hostReviewList[i].h_review_seq).after(
			                                    		$('<div>').attr('class','media-body').attr('id','hostMediabody'+resp.hostReviewList[i].h_review_seq).append(
			                                    			$('<h4>').attr('class','media-heading').attr('id','hostH4'+resp.hostReviewList[i].h_review_seq).html(resp.hostReviewList[i].member_name+"님의 답변:")
			                                    		)
			                                    	 )
			                                     }
			                                     
			                                     for(var i = 0; i < resp.hostReviewList.length ; i++){
			                                    	 $("#hostH4"+resp.hostReviewList[i].h_review_seq).after(
			                                    		$('<p>').attr('id','hostP'+resp.hostReviewList[i].h_review_seq).html(resp.hostReviewList[i].h_review_public)
			                                    	 )
			                                     }
			                                     
			                                     for(var i = 0; i < resp.hostReviewList.length ; i++){
			                                    	 $("#hostP"+resp.hostReviewList[i].h_review_seq).after(
			                                    		$('<h6>').attr('id','hostH6'+resp.hostReviewList[i].h_review_seq).html(resp.hostReviewList[i].h_review_date)
			                                    	 )
			                                     }
			                                     
			                                     fnMove();
			                                     
			                                    },
			                                 error:function(request,status,error){
			                                    console.log(request.status + " : " + status + " : " + error);
			                                 }
			                              }); 
										
									}
									
									function fnMove(){
										var offset = $("#info-main05").offset();
								        $('html, body').animate({scrollTop : offset.top}, 400);
								        
								    }
								</script>

							
							
							
               		</div>
               		<div id="info-main05-host">
               			<div id="host-top">
               			<br>
               				<div id="host-top-left">
               					
               					<p>호스트: ${memberDTO.member_name }님</p>
               					${memberDTO.member_location } · 회원 가입: ${memberDTO.member_date }
               				</div>
               				<div id="host-top-right">
               					<img src="<c:url value='../resources/img/1.jpg'/>">
               				</div>
               			</div>
               			<div id="host-contents">
               				${memberDTO.member_introduction }
               			</div>
               			<div id="host-bottom">
               				<p>언어: </p><span>English, 한국어</span><br>
							<p>응답률: </p><span>100%</span><br>
							<P>응답 시간: </P><span>1시간 이내</span>
               			</div>
               			<form action="messageSend.msg">
               			<input type="hidden" name="home_seq" value="${hdto.home_seq}">
               			</form>
               			<button id="toHost" class="btn btn-secondary">호스트에게 연락하기</button>
               			<br><br><br>
               		</div>
               </div>
               <div id="info-main06">
               		<div id="info-main06-top">
               			<br>
               			<span>지역 정보</span>
               			<br>
               			<h5>Kim님의 숙소는 ${hdto.home_nation }, ${hdto.home_addr1 }, ${hdto.home_addr2 }에 있습니다.</h5>
               			<p>${hddto.home_desc_region }</p>
               			<div id="map-collapse" class="collapse">
               				<div class="card card-body">
               					<p class="homeDescTitle">
               						교통편
               					</p>
               					<p>${hddto.home_desc_traffic }</p>
               				</div>
               			</div>
               			
               			<a id="mapAtag" class="green" data-toggle="collapse" href="#map-collapse" role="button" aria-expanded="false" aria-controls="collapseExample">
               				<div id="mapA-content" style="display: inline;" >이 지역 자세히 알아보기</div>
               				<div style="position: static;">
               					<span class="glyphicon glyphicon-menu-down" aria-hidden="true" id="mapDown"></span>
               				</div>
               			</a>
               			
               			<script>
               				$('#map-collapse').on('shown.bs.collapse', function () {
               				 $(this)
                             .parent()
                             .find(".glyphicon-menu-down")
                             .removeClass("glyphicon-menu-down")
                             .addClass("glyphicon-menu-up");
               				 
               				$(this)
                            .parent()
                            .find("#mapA-content").html("숨기기");
               				
               				$(this)
                            .parent()
                            .find(".glyphicon").attr('style','right:-55px; top:-15px;')
               				
               				 
               				});
	
               				//The reverse of the above on hidden event:

               				$('#map-collapse').on('hidden.bs.collapse', function () {
               					$(this)
                                .parent()
                                .find(".glyphicon-menu-up")
                                .removeClass("glyphicon-menu-up")
                                .addClass("glyphicon-menu-down");
               					
               					$(this)
                              	.parent()
                              	.find("#mapA-content").html("이 지역 자세히 알아보기");
               					
               					$(this)
                                .parent()
               					.find(".glyphicon").attr('style','right:-177px;')
               					
               				});
               			</script>
               		</div>
               		<div id="info-main06-map">
               			<div id="mapmap">
               				
               			</div>
               			<br>
               			<br>
               		</div>

						<!-- <script>
        					var map;
							function initMap() {
								map = new google.maps.Map(document
										.getElementById('mapmap'), {
									center : {
										lat : 37.5338151,
										lng : 126.89697839999997
									},
									zoom : 14
								});
								
								var cityCircle = new google.maps.Circle({
									  center:{
										  lat:37.5338151,
										  lng:126.89697839999997
									  },
									  radius:500,
									  strokeColor:"#04B4AE",
									  strokeOpacity:0.8,
									  strokeWeight:2,
									  fillColor:"#81F7D8",
									  fillOpacity:0.4,
									  map:map,
								});
								
							}
							
							
						</script> -->

					</div>
               
            </div>
            <div id="info-main-right">
            	<div id="fixed">
            		<div id="fixed-sub01">
            			<br>
            			<img src="<c:url value='../resources/img/won.png'/>" style="width:20px;">
            			
            			<h3 style="display: inline; font-weight: 600;">
            				<fmt:formatNumber value="${hdto.home_price }" pattern="#,###" />
            			</h3>/박
            			<br>
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<img src="<c:url value='../resources/img/star.png'/>" class="star">
            			<h6 style="display: inline;">342</h6>
            		</div>
            		<div id="fixed-sub02">
            		 	<form action="reservReq.re" method="post" id="">
            		 	
            			<br>
            			날짜
            			<div class="dropdown fixed">
            				<input type="text" class="search-query3 form-control"
            				style="position: static;"
            				id="calendarDrop"
            				placeholder="체크인              →         체크아웃"
            				onclick="myFunction2()"
            				/>
            				
            				<div class="dropdown-content calDrop" id="myDropdown2">
            					<div  id="inlineCal" class="datepicker-here " data-range="true"></div>
            					<script>
            					
            					var blockedDates = '${getBlockedDate}';
            					var disabledDays = new Array; 
            				
            					
            					//disabledDays.split(",");
            					
            					for(var i=0;i<blockedDates.split(",").length;i++){
            						disabledDays.push(blockedDates.split(",")[i]);
            					}
            					//var test;
            					
            					//<c:forTokens items="disabledDays" delims="," var="item">
            					//	test = ${item}
            					//	disabledDays2.push(test.toString());
								//</c:forTokens>
            					
            					//console.log(disabledDays[0]);
            					//console.log(disabledDaysString);
            					console.log(disabledDays);
            					
            					
            					//var disabledDays = ${getBlockedDate};
                    			var isDisabled;
                    			var today = new Date();
                    			var d;
                    			var blockDate;
                    			var ttt;
                    			var vvv;
                    			var reserveDate;
                    			
                    			var checkinDate;
                    			var checkoutDate;
                    			
            					
            					$('#inlineCal').datepicker({
                    				
                    				todayButton: new Date(),
                    				clearButton : true,
                    				autoClose : "true",
                    				dateFormat : "yyyy-mm-dd",
                    				minDate: new Date(),
                    				toggleSelected: false,
                    				language: {
                    					days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                    				    daysShort: ['일', '월', '화', '수', '목', '금', '토'],
                    				    daysMin: ['일', '월', '화', '수', '목', '금', '토'],
                    				    months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                    				    monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                    				    today: '오늘',
                    				    clear: '날짜 지우기',
                    				    dateFormat: "yyyy/mm/dd",
                    				    timeFormat: 'hh:ii aa'
                    			    },
                    				
                    				onSelect: function(formattedDate, date, inst){
                    					
                    					function formatDate(date) {
                    		                var d = new Date(date),
                    		                    month = '' + (d.getMonth() + 1),
                    		                    day = '' + d.getDate(),
                    		                    year = d.getFullYear();

                    		                if (month.length < 2) month = '0' + month;
                    		                if (day.length < 2) day = '0' + day;

                    		                 return [year, month, day].join('-');
                    		            }
                    					
                    					var checkin = formatDate(date);
                    					
                    			        var inYear = checkin.split('-')[0];
                    			        var inMonth = checkin.split('-')[1];
                    			        var inDay = checkin.split('-')[2];
                    					
                    					
                    					
                    					console.log("select");
                    					console.log(date);
                    					
                    					
                    					if(date.length == 1){
                    						
                    						checkinDate = formatDate(date[0]);
                    						
                    						/* inpunt value */
            								$("#calendarDrop").val(checkinDate + "              →         체크아웃");
                    					}
                    					
                    					if(date.length == 2){
                    						alert("이오와엉");
                    						
                    						checkinDate = formatDate(date[0]);
                    						checkoutDate = formatDate(date[1]);
                    						
                    					
                        					console.log("-----");
                        					console.log(checkinDate);
                        					console.log(checkoutDate);
                    						
                    						/* inpunt value */
            								$("#calendarDrop").val(checkinDate + "              →           "+checkoutDate);
                    						
                    						/* 날짜 선택시 달력 없애기 */
											$( "#myDropdown2" ).removeClass( "show" );
                    						
                    						$.ajax({
                    							url:"clickDate.re",
                    							type:"get",
                    							data:{
                    								checkinDate:checkinDate,
                    								checkoutDate:checkoutDate
                    								},
                    							success:function(resp){
                    								var priceLeft = resp.priceLeft;
                    								var priceRight = resp.priceRight;
                    								var cleaningfee = resp.cleaningfee;
                    								var servicefee = resp.servicefee;
                    								var total = resp.total;
                    								var blockedDate = resp.blockedDate;
                    								
                    								alert(priceLeft+" : "+priceRight);
                    								
                    								$("#priceLeft").text(priceLeft);
                    								$("#priceRight").text(priceRight);
                    								$("#cleaningfee").text(cleaningfee);
                    								$("#servicefee").text(servicefee);
                    								$("#total").text(total);
                    								
                    								
                    								$("#fixed").css({"height":"580px","transition-duration":"0.1s"});
                    								$(".fixedprice").css({"display":"block"});
                    								
                    								$("#reserv_checkin").val(checkinDate);
                    								$("#reserv_checkout").val(checkoutDate);
                    								$("#nightsAmount").val(priceRight);
                    								$("#cleaningFee").val(cleaningfee);
                    								$("#serviceFee").val(servicefee);
                    								$("#totalAmount").val(total);
                    								
                    								$("#blockedDate").val(blockedDate);
                    								
                    								
                    							},
                    							error : function(request,status,error) {
                    								console.log(request.status + " : " + status + " : " + error);
                    							}
                    						})
                    						
                    					}
                    					
                    					for(var j=0; j<disabledDays.length;j++){
                    						
                    						var reservYear = disabledDays[j].split('-')[0];
                    		      		  	var reservMonth = disabledDays[j].split('-')[1];
                    		      		  	var reservDay = disabledDays[j].split('-')[2];
                    		      		  	
                    		      		  	reserveDate = new Date(reservYear,reservMonth,reservDay);
                    		      		  	
                    		      		  	console.log(reserveDate.getDate()-1);
                    		      		  	console.log(reserveDate.getMonth());
                    		      			console.log(inMonth);
                    						
                    		      		  if(inMonth == reserveDate.getMonth()){
                    		      			  if(date[0].getDate() == reserveDate.getDate()-1){
                    		      				   
                    		      				  blockDate = new Date(2018,date[0].getMonth(),reserveDate.getDate()-2);
                    		      				  console.log(blockDate);
                    		      				  
                    		      				  d = new Date(2018,date[0].getMonth(),reserveDate.getDate()-1);
                    		      				  
                    		      					ttt = new Date(2018,date[0].getMonth(),reserveDate.getDate());
                    		      					vvv = new Date(2018,date[0].getMonth(),reserveDate.getDate()+1);
                    		      				  
                    		      			  }else{
                    		      				  return;
                    		      			  }
                    		      		  }
                    					} 
                    				},
                    				
                    			     onRenderCell: function (date, cellType) {

                             			var eventDates = ['2018-09-30','2018-10-01'];
                    			    	 
                    			    	 var currentDate = date.getDate();
                    			    	 var currentMonth = date.getMonth();
                    			    	 currentMonth = "0"+currentMonth;
                    			    	 
                    			         /* // Add extra element, if `eventDates` contains `currentDate`
                    			         if (cellType == 'day' && eventDates.indexOf(currentDate) != -1) {
                    			             return {
                    			            	 classes: 'my-class'
                    			             }
                    			         }
                    			    	  */
                    			    	  
                    			    	  
                    			    	 
                    			        if (cellType == 'day') {
                    			        	
                    			        	
                    			        	/* console.log("fff");
                    			        	console.log(blockDate);
                    			        	console.log(d);
                    			        	console.log(ttt);
                    			        	console.log(vvv);
                    			        	
                    			        	var c = new Date(2111,1,1);
                    			        	console.log(c);
                    			        	
                    			        	if(blockDate >= date){
                    		        			return {
                    			        			   disabled : true
                    			        		   }
                    		        		}else if(blockDate < date){
                    		        			return {
                    			        			   disabled : false
                    			        		   }
                    		        		}else if(vvv > 0){
                    			        		return {
                    			        			   disabled : true
                    			        		   }
                    			        	}
                    			        	 */
                    			        	function formatDate(date) {
                    			                var d = new Date(date),
                    			                    month = '' + (d.getMonth() + 1),
                    			                    day = '' + d.getDate(),
                    			                    year = d.getFullYear();  

                    			                if (month.length < 2) month = '0' + month;
                    			                if (day.length < 2) day = '0' + day;

                    			                  return [year, month, day].join('-');
                    			            }
                    			            
                    			        	 
                    			        	for(var i=0; i<disabledDays.length;i++){
                    			        		
                    			        		var reservYear = disabledDays[i].split('-')[0];
                    			      		  	var reservMonth = disabledDays[i].split('-')[1];
                    			      		  	var reservDay = disabledDays[i].split('-')[2];
                    				           
                    				           
                    				           var checkin = formatDate(date);
                    				           var inYear = checkin.split('-')[0];
                    				           var inMonth = checkin.split('-')[1];
                    				           var inDay = checkin.split('-')[2];
                    				            
                    				           //console.log("reservMonth : "+reservMonth);
                    				           //console.log("inMonth : "+inMonth);
                    				           
                    				           if(reservMonth == inMonth){
                    				        	   /* console.log("같으면 : "+inMonth);
                    				        	   
                    				        	   console.log("inDay : "+ inDay);
                    				        	   console.log("reservDay : "+ reservDay);
                    				        	    */
                    				        	   if(reservDay === inDay){
                    				        		   return {
                    				        			   disabled : true
                    				        		   }
                    				        	   };
                    				           }
                    			        	
                    			                

                    			                /* console.log(isDisabled);
                    				            console.log(date);
                    				            console.log(checkin);
                    				            console.log(inDay);   */
                    				            
                    				            /* return {
                    				                disabled: isDisabled
                    				                
                    				            	} */
                    				             
                    			        	 }
                    			        	
                    			        }
                    			        
                    			    }  
                    			});
            					</script>
            					
            				</div>
            			</div>
            			
            			<script>
            				function myFunction2() {
            				    document.getElementById("myDropdown2").classList.toggle("show");
            				}
            				
            				// Close the dropdown menu if the user clicks outside of it
            				window.onclick = function(event) {
            					  if (!event.target.matches('#calendarDrop')) {

            					    var dropdowns = document.getElementsByClassName("dropdown-content calDrop");
            					    var i;
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            					  }
            					}
            				
            				$('#myDropdown2').bind('click', function (e) { e.stopPropagation() })
            				
            					
            				
            				</script>
            			
            			
            			
            			
            			
            			인원<br>
            			<div class="dropdown fixed">
            			
            				<input type="text" class="search-query3 form-control"
            				style="position: static;"
            				id="peopleDrop" value="게스트 1명"
            				onclick="myFunction()"
            				/>
            				
            				<div class="dropdown-content peoDrop" id="myDropdown">
            					 <div id="peopleDropdownContentInner">
                     				<div>
                     					인원
                     				</div>
                     				<div>
                     					<button id="peopleup" class="btn btn-primary-outline" type="button">+</button>
										<p style="display: inline;" id="pcount">1</p>
										<button id="peopledown" class="btn btn-primary-outline" type="button">-</button>
										
                     				</div>
                     				<div>
                     					<button id="dropdownClose" class="btn btn-primary-outline" type="button">닫기</button>
                     				</div>
                 				</div>

            				</div>
            				
            				<script>
            				function myFunction() {
            				    document.getElementById("myDropdown").classList.toggle("show");
            				}
            				
            				// Close the dropdown menu if the user clicks outside of it
            				window.onclick = function(event) {
            					  if (!event.target.matches('#peopleDrop')) {

            					    var dropdowns = document.getElementsByClassName("dropdown-content peoDrop");
            					    var i;
            					    
            					    var population = $("#peopleDrop").val();
            					    console.log(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    $("#population").val(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            					  }
            					}
            				
            				$('#myDropdown').bind('click', function (e) { e.stopPropagation() })
            				
            					$("#peopledown").attr("disabled",true);
            				
            					
            				   $("#peopledown").click(function() {
            					   var intmax = parseInt($("#pcount").text());
            					   
            					  
            					   
            				       if(intmax > 2){
            				          intmax = intmax - 1; 
            				          $("#peopleDrop").val("게스트 "+intmax+"명");
            				          $("#pcount").text(intmax);
            				          $("#peopleup").attr("disabled",false);
            				       }else if(intmax = 2){
            				    	   $("#peopleDrop").val("게스트 "+1+"명");
            				    	   $("#peopledown").attr("disabled",true);
            				    	   $("#pcount").text(1);
            				       }
            				       
            				    });
            				    
            				    $("#peopleup").click(function() {
            				       var intmax = parseInt($("#pcount").text());
            				   
            				       if(intmax < 14 ){
            				          $("#peopledown").attr("disabled",false);
            				          intmax = intmax + 1; 
            				          $("#pcount").text(intmax);
            				          $("#peopleDrop").val("게스트 "+intmax+"명");
            				       }else if(intmax = 14){
            				          $("#peopleup").attr("disabled",true);
            				          $("#pcount").text(intmax);
            				          $("#peopleDrop").val("게스트 "+intmax+"명");
            				       }
            				    });
            				    
            				    $("#dropdownClose").click(function(){
            				    	var dropdowns = document.getElementsByClassName("dropdown-content");
            					    var i;
            					    
            					    var population = $("#peopleDrop").val();
            					    console.log(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    $("#population").val(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            				    });
            				</script>
            				
            				
            			</div>
            			<span class='glyphicon glyphicon-menu-down' aria-hidden="true"></span>
            			
            			<div class="fixedprice">
            				<span style="float: left;" id="priceLeft">₩132,766 x 1박</span>
            				<span style="float: right;" id="priceRight">₩132,766</span>
            			</div>
            			<div class="fixedprice">
            				<span style="float: left;">청소비</span>
            				
            				<img src="<c:url value='../resources/img/question.png'/>" 
            				data-container="body" data-toggle="popover" data-placement="top" data-html="true"
            				class="question1" id="popCleaning"
            				/>
            				
            				<div id="popover-content-popCleaning" class="hide" >
            					<div style="float: left; width:82%; margin: 10px;">
            						<p>호스트가 청구하는  일회성 숙소 청소 비용입니다.</p>
            					</div>
            					<div style="float: right; margin-top: 10px; margin-right: 10px; cursor: pointer;">
            						<img src="<c:url value='../resources/img/delete.png'/>" style="width:10px;"
            						class="close2" onclick="$('.question1').popover('hide').trigger('click')"/>
            					</div>
            				</div>
							
							
            				<span style="float: right;" id="cleaningfee">₩32,225</span>
            			</div>
            			<div class="fixedprice">
            				<span style="float: left;">서비스 수수료</span>
            				
            				<img src="<c:url value='../resources/img/question.png'/>" 
            				data-container="body" data-toggle="popover" data-placement="top" data-html="true"
            				class="question" id="popService"/>
            				
            				<div id="popover-content-popService" class="hide" >
            					<div style="float: left; width:82%; margin: 10px;">
            						<p>수수료는 에어비앤비 플랫폼을 운영하고 연중무휴 고객 지원과 같은 다양한 서비스를 제공하는데 사용됩니다.</p>
            					</div>
            					<div style="float: right; margin-top: 10px; margin-right: 10px; cursor: pointer;">
            						<img src="<c:url value='../resources/img/delete.png'/>" style="width:10px;"
            						class="close2" onclick="$('.question').popover('hide').trigger('click')"/>
            					</div>
            				</div>
            				
            				<span style="float: right;" id="servicefee">₩21,913</span>
            			</div>
            			<div style="border: none;" class="fixedprice">
            				<span style="float: left; font-weight: 600;">합계</span>
            				<span style="float: right;" id="total" >₩21,913</span>
            			</div>
            			<br>
            			<c:if test="${sessionScope.login_email eq null}">
            				<button id="reservationBT" class="btn btn-secondary" type="button" data-toggle="modal" href="#myModal1">
            					예약 하기
            				</button>
            			</c:if>
            			<c:if test="${sessionScope.login_email ne null}">
            				<button id="reservationBT" class="btn btn-secondary" type="submit">
            					예약 하기
            				</button>
            			</c:if>
            			
            			<br>
            			<p style="text-align: center;">예약 확정 전에는 요금이 청구되지 않습니다</p>
            			
            			<!-- 게스트 이메일로 바꾸기 -->
            			<input type="hidden" name="member_email" value="${sessionScope.login_email}">
            		 	<input type="hidden" name="reserv_checkin" id="reserv_checkin" value="">
            		 	<input type="hidden" name="reserv_checkout" id="reserv_checkout" value="">
            			<input type="hidden" name="population" id="population" value="1">
            			<input type="hidden" name="home_seq" value="${hdto.getHome_seq() }">
            			<input type="hidden" name="home_name" value="${hdto.getHome_name() }">
            			<input type="hidden" name="nightsAmount" id="nightsAmount">
            			<input type="hidden" name="cleaningFee" id="cleaningFee">
            			<input type="hidden" name="serviceFee" id="serviceFee">
            			<input type="hidden" name="totalAmount" id="totalAmount">
            			<input type="hidden" name="blockedDate" id="blockedDate">
            			<input type="hidden" name="host_email" value="${hdto.member_email }">
            			</form>
            		</div>
            		
            	</div>
            </div>
         </div>
      </div>
   </div>
   
   <%@ include file="../../resource/include/footer.jsp" %>
   <%@ include file="../../resource/include/modal_homeInfo/amenities.jsp"%>
   <%@ include file="../../resource/include/modal_homeInfo/likey.jsp"%>
   <!-- 지도 -->
	<!-- <script 
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAiC2f29Ojya4wPHM03CBAOZRc-q_4KeYU&callback=initMap" async defer>
	</script> -->
</body>
</html>