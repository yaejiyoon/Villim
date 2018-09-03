<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>위시리스트</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
   
   div {
		box-sizing: border-box;
	 	/* border: 1px solid black; */
	}
	
	html{
		height:100vh;
	}
   
   #wishList-wrapper{
   		font-family: font2;
   		width:100%;
   		height:100%;
   }
   
   #wishList-wrapper:after{
   		content: "";
		display: block;
		clear: both;
   }
   
   #wishList-homeList{
   		float: left;
   		width:40%;
   		overflow-y:auto;
   		overflow-x:hidden;
   		height:88vh;
   }
   
   #wishList-map{
   		float: left;
   		width:60%;
   		height:100%;
   		padding:10px;
   }
   
   #wishList-homeList-top{
   		width: 100%;
   		height: 130px;
   		padding: 20px;
   		border-bottom: 1px solid #d6d6d6;
   }
   
   #goAllList{
   		color:#008489;
		font-weight: 600;
   }
   
   #wishList-homeList-bottom{
   		padding: 20px;
   }
   
   .wish-homePic{
   		width:100%;
   		height: 300px;
   }
   
   .wish-homeInfo{
   		width:100%;
   		height:auto;
   		padding-top: 10px;
   		padding-bottom: 10px;
   }
   
   .wish-homeWrapper{
   		margin-bottom: 10px;
   }
   
   .wish-homeWrapper:hover{
   		cursor: pointer;
   }
   
   #mapmap{
   		
   		width: 57vw;
   		height:86vh;
   }
   
   #goHomeMain{
   		background-color: #008489;
		color:white;
		border:2px solid #008489;
		width: 120px;
		height:40px;
		font-size: 15px;
		font-weight: 600;
		margin-top: 10px;
   }
	
</style>

</head>
<body>
	<%@ include file="../../resource/include/header.jsp" %>
	<div id="wishList-wrapper">
		<div id="wishList-homeList">
			<div id="wishList-homeList-top">
				<a href="likeyPage.do" id="goAllList">전체 목록</a>
				<h2 style="font-weight: 800;">${likeyListDTO.likeyList_name }</h2>
			</div>
			<div id="wishList-homeList-bottom">
			<c:if test="${fn:length(likeyHomeList)<=0}">
				<B>저장된 항목 없음</B>
				<p style="margin-top: 20px;">맘에 드는 숙소가 있으면 하트 아이콘을 눌러 저장하세요.</p>
				<button id="goHomeMain" class="btn btn-secondary">숙소 둘러보기</button>
			</c:if>
				<c:forEach items="${likeyHomeList }" var="likeyHomeList" varStatus="status">
					<div class="wish-homeWrapper" id="wishWrapperID${likeyHomeList.likey_seq}" onclick="location.href='home_info.do?seq=${likeyHomeList.home_seq}'">
						<div class="wish-homePic">
							<img src="<c:url value='files/${likeyHomeList.home_main_pic}'/>"
								style="width: 100%; height: 100%;">
						</div>
						<div class="wish-homeInfo">
							<p style="margin: 0px; font-size: 12px;">${likeyHomeList.home_type }</p>
							<p style="margin: 0px; font-weight: 600; font-size: 17px;">${likeyHomeList.home_name }</p>
							<p style="margin: 0px;">₩<fmt:formatNumber value="${likeyHomeList.home_price }" pattern="#,###" />/박</p>
							<p style="display: inline; color: #008489;">★★★★★</p>
							<p style="display: inline; font-size: 13px;">137</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div id="wishList-map">
			<div id="mapmap">
               				
            </div>
		</div>
		<script>
		
			$("#goHomeMain").click(function(){
				$(location).attr('href','homeMain.do')
			});
			
			var map, infoWindow;
			
			
			function initMap() {
				
				map = new google.maps.Map(document.getElementById('mapmap'), {
					center : {
						lat : 37.5338151,
						lng : 126.89697839999997
					},
					zoom : 5
				});
				
				
				/* infoWindow = new google.maps.InfoWindow; */
			     
				
				var locations = [];
			      <c:forEach var="item" items="${likeyHomeList}" varStatus="status">
			         locations['${status.index}'] = new Array();
			         locations['${status.index}'][0] = "${item.home_price}";
			         locations['${status.index}'][1] = "${item.home_lat}";
			         locations['${status.index}'][2] = "${item.home_lng}";
			         locations['${status.index}'][3] = "${item.likey_seq}";
			     </c:forEach>

			      for (var i = 0; i < locations.length; i++) {
			       marker = new google.maps.Marker({
			           position: new google.maps.LatLng(locations[i][1], locations[i][2]),
			           map: map
			       });
			       
			       /* infowindow = new google.maps.InfoWindow({
			    	   
			    	    content: '<div class="bubble">'+locations[i][0]+'원</div>'
			    	});
			    	infowindow.open(map,marker); */
			    	
			    	  
			    	infoWindow = new google.maps.InfoWindow;
			    	
			    	  google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
			              return function() {
			            	  
			                var offset = $("#wishWrapperID"+locations[i][3]).offset();
						    $('#wishList-homeList').animate({scrollTop : offset.top}, 400);
						    
						    infoWindow.setContent('<div style="color: #008489; font-weight: 600;">'+locations[i][0]+'원</div>');
				            infoWindow.open(map, marker);
				            
				            $("#wishWrapperID"+locations[i][3]).css({"border-top":"3px solid #008489"});
						    
			              }
			              
			          })(marker, i));
  
			    	  
			    	 google.maps.event.addListener(marker, 'mouseout', (function(marker, i) {
			              return function() {
			                infoWindow.close();
			                
			                $("#wishWrapperID"+locations[i][3]).css({"border-top":"0px"});
			                
			              }
			          })(marker, i));
			          
			      
			      }
			      
			     
				
			}
			
		</script>
	</div>
	<!-- 지도 -->
	<script 
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAiC2f29Ojya4wPHM03CBAOZRc-q_4KeYU&callback=initMap" async defer>
	</script>
</body>
</html>