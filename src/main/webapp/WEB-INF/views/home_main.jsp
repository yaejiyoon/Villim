<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"> -->

<!-- 달력 -->
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/datepicker.js" />"></script>
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/i18n/datepicker.en.js" />"></script>
<link rel="stylesheet" href="<c:url value="../../resources/css/home/dist/css/datepicker_home_main.css?ver=3" />" />
<link rel="stylesheet" href="<c:url value="../../resources/css/home/docs/css/style.css" />"/>

<link href="<c:url value="/resources/css/home_main/map_switch.css" />" rel="stylesheet" />
<script>
$(function () {
    var a = function () {
        var b = $(window).scrollTop();
        var d = $("#mapOnDiv").offset().top;
        var f = $("#footer").offset().top;
        var c = $("#mapWrapper");
        var h = $("#mapWrapper").height() + 220; // margin
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
    a()
});
</script>

<script>
var map, infoWindow;
function initMap() {
	
	var lat = -34.397;
	var lng = 150.644;
	
	<c:if test="${lat eq null}">
		map = new google.maps.Map(document.getElementById('map'), {
	 		center: {lat: lat, lng: lng},
     		zoom: 14
  		});
	
 		infoWindow = new google.maps.InfoWindow;
 		
		
	 	//   Try HTML5 geolocation.
	 		if (navigator.geolocation) {
	 		navigator.geolocation.getCurrentPosition(function(position) {
	 	    
	 	      var pos = {
	 	        	lat: position.coords.latitude,
	 	        	lng: position.coords.longitude
	 	      };
	
	 	      infoWindow.setPosition(pos);
	 	      infoWindow.setContent('검색한 위치입니다. ');
	 	      infoWindow.open(map);
	 	      map.setCenter(pos);
	 	    }, function() {
	 	      handleLocationError(true, infoWindow, map.getCenter());
	 	    });
	 	  } else {
	 	    // Browser doesn't support Geolocation
	 	    handleLocationError(false, infoWindow, map.getCenter());
	 	  }
	
	
	 	function handleLocationError(browserHasGeolocation, infoWindow, pos) {
	 	  infoWindow.setPosition(pos);
	 	  infoWindow.setContent(browserHasGeolocation ?
	 	                        'Error: The Geolocation service failed.' :
	 	                        'Error: Your browser doesn\'t support geolocation.');
	 	  infoWindow.open(map);
	 	}
	 	
		google.maps.event.addListenerOnce(map, 'idle', function(){
	 		// 남서쪽의 좌표
	 		var swLatLng = map.getBounds().getSouthWest();
	 		// 북동쪽의 좌표
	 		var neLatLng = map.getBounds().getNorthEast(); 
		  });
	 	
	</c:if>
	
	<c:if test="${lat ne null}">
		lat = ${lat};
		lng = ${lng};
	
		map = new google.maps.Map(document.getElementById('map'), {
		 	center: {lat: lat, lng: lng},
	     	zoom: 14
		});
		infoWindow = new google.maps.InfoWindow;
		
		google.maps.event.addListenerOnce(map, 'idle', function(){

		  });
		
		</c:if>
		
		var locations = [];
		<c:forEach var="item" items="${homeList}" varStatus="status">
			locations['${status.index}'] = new Array();
			locations['${status.index}'][0] = "${item.home_price}";
			locations['${status.index}'][1] = "${item.home_lat}";
			locations['${status.index}'][2] = "${item.home_lng}";
		</c:forEach>

		for (var i = 0; i < locations.length; i++) {
		 marker = new google.maps.Marker({
		     position: new google.maps.LatLng(locations[i][1], locations[i][2]),
		     map: map
		 });
		google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
		    return function() {
		      infoWindow.setContent(locations[i][0]+" 원");
		      infoWindow.open(map, marker);
		    }
		})(marker, i));
		
		google.maps.event.addListener(marker, 'mouseout', (function(marker, i) {
		    return function() {
		      infoWindow.close();
		    }
		})(marker, i));
		}
		
		
}


</script>
<script>
$(document).ready(function() {
	$("#map").mouseup(function() {
// 	$("#map").mousemove(function() {
		// 남서쪽의 좌표
		var swLatLng = map.getBounds().getSouthWest();
		// 북동쪽의 좌표
		var neLatLng = map.getBounds().getNorthEast(); 
		
		var swLat = map.getBounds().getSouthWest().lat();
		var neLat = map.getBounds().getNorthEast().lat();
		var swLng = map.getBounds().getSouthWest().lng();
		var neLng = map.getBounds().getNorthEast().lng();
		
		var latlng = {swLat:swLat, neLat:neLat, swLng:swLng, neLng:neLng};
		
		var on = document.getElementById('mapOnDiv');
        var off = document.getElementById('mapOffDiv');
		
		$.ajax({
		       url: "mapMove.do",
		       type: "post",
		       data:latlng,
		       success:function(resp){
		    	   $('.col-md-4').remove();
		    	   for(var i = 0; i < resp.home.length ; i++) {
		    		   $('.col').append(
		    			$('<div>').attr('class','col-md-4').append(
		    			 $('<div>').attr('id','carouselDiv '+i).append(
		    			  $('<div>').attr('id',resp.home[i].home_seq).attr('class','carousel slide').attr('data-ride','carousel').append(
		    			  	$('<ol>').attr('class','carousel-indicators').attr('id','ol'+resp.home[i].home_seq).append(
		    			  	)
		    			  )
		    			 )
		    			)
		    		   );
					}
		    	   
		    	   for(var i = 0; i < resp.home.length ; i++) {
			    	   var count = 0;
			    	   for(var j = 0; j < resp.pic.length ; j++) {
			    		   if(resp.home[i].home_seq == resp.pic[j].home_seq) {
			    			    if(count==0) {
									$('#ol'+resp.home[i].home_seq).append($('<li>').attr('data-target','#'+resp.home[i].home_seq).attr('data-slide-to',count).attr('class','active'));
			    			    } else {
									$('#ol'+resp.home[i].home_seq).append($('<li>').attr('data-target','#'+resp.home[i].home_seq).attr('data-slide-to',count));
			    			    }
								count++;
			    		   }
						}
					}
		    	   
					for(var i = 0; i < resp.home.length ; i++) {
						$('#'+resp.home[i].home_seq).after($('<p>').attr('class','homePrice').append("₩"+resp.home[i].home_price+" /박"));
						$('#'+resp.home[i].home_seq).after($('<p>').attr('class','homeName').append("<b>"+resp.home[i].home_name+"</b>"));
						$('#'+resp.home[i].home_seq).after($('<p>').attr('class','homeType').append(resp.home[i].home_type));
					}
					
		    	    for(var i = 0; i < resp.home.length ; i++) {
					  $('#ol'+resp.home[i].home_seq).after($('<div>').attr('class','carousel-inner').attr('id','inner'+resp.home[i].home_seq));
				    }
		    	    
		    	    for(var i = 0; i < resp.home.length ; i++) {
		    	    	var count = 0;
		    	    	for(var j = 0; j < resp.pic.length ; j++) {
		    	    		if(resp.home[i].home_seq == resp.pic[j].home_seq) {
		    	    			if(count==0) {
									$('#inner'+resp.home[i].home_seq).append($('<div>').attr('class','item active').append(
											$('<img>').attr('src',"<c:url value='files/"+resp.pic[j].home_pic_name+"'/>").attr('class','homePic')
									));
			    			    } else {
			    			    	$('#inner'+resp.home[i].home_seq).append($('<div>').attr('class','item').append(
											$('<img>').attr('src',"<c:url value='files/"+resp.pic[j].home_pic_name+"'/>").attr('class','homePic')
									));
			    			    }
								count++;
		    	    		}
		    	    	}
		    	    }
		    	    
		    	    for(var i = 0; i < resp.home.length ; i++) {
					  $('#inner'+resp.home[i].home_seq).after(
					  	$('<a>').attr('class','left carousel-control').attr('href','#'+resp.home[i].home_seq).attr('data-slide','prev').attr('id','prev'+resp.home[i].home_seq)
					  );
				    }
		    	    
		    	    for (var i = 0; i < resp.home.length ; i++) {
						$('#prev'+resp.home[i].home_seq).append($('<span>').attr('class','glyphicon glyphicon-chevron-left').attr('id','left'+resp.home[i].home_seq));
					}
		    	    
		    	    for (var i = 0; i < resp.home.length ; i++) {
						$('#left'+resp.home[i].home_seq).after($('<span>').attr('class','sr-only').append("Previous"));
					}
		    	    
		    	    for(var i = 0; i < resp.home.length ; i++) {
						$('#inner'+resp.home[i].home_seq).after(
							$('<a>').attr('class','right carousel-control').attr('href','#'+resp.home[i].home_seq).attr('data-slide','next').attr('id','next'+resp.home[i].home_seq)
					   );
					}
			    	    
			    	for (var i = 0; i < resp.home.length ; i++) {
						$('#next'+resp.home[i].home_seq).append($('<span>').attr('class','glyphicon glyphicon-chevron-right').attr('id','right'+resp.home[i].home_seq));
					}
			    	    
			    	for (var i = 0; i < resp.home.length ; i++) {
						$('#right'+resp.home[i].home_seq).after($('<span>').attr('class','sr-only').append("Next"));
					}
					
					on.style.display = 'block';    
					off.style.display = 'none';
		       },error:function(errordata){
					alert("error 1");
		       }
		});

		
	});
});

</script>

<script>
$(document).ready(function() {
		$('body').delegate('#myonoffswitch','click',function(){
	        var chkval = 0
	          if($('#myonoffswitch').is(':checked')){
	            chkval  = 1;
	          } else {
	        	chkval = 2;
	          }
	        
	        var on = document.getElementById('mapOnDiv');
	        var off = document.getElementById('mapOffDiv');
	   $.ajax({
	       url: "homeMain.do",
	       type: "get",
	       data:{chkval:chkval},
	
	       success:function(returndata){
	    	   if(chkval==1) {
					on.style.display = 'block';    
					off.style.display = 'none';
	    	   } else if(chkval==2) {
					on.style.display = 'none';
					off.style.display = 'block';    
	    	   }
	       },error:function(errordata){
				alert("error 2");
	       }
	     });
	   });  
	
	
		<c:if test="${mapOn!=null}">
		   $('#myonoffswitch').prop('checked', true);
		   var on = document.getElementById('mapOnDiv');
		   var off = document.getElementById('mapOffDiv');
		   on.style.display = 'block';
		   off.style.display = 'none';
		</c:if>

// 	$('body').delegate('.submit','click',function(){
//         var chkval = 1;
//         $('#myonoffswitch').prop('checked', true);
//         var on = document.getElementById('mapOnDiv');
//         var off = document.getElementById('mapOffDiv');
//     $.ajax({
//        url: "homeMain.do",
//        type: "get",
//        data:{chkval:chkval},
       
//        success:function(returndata){
// 			on.style.display = 'block';    
// 			off.style.display = 'none';
// 	   },error:function(errordata){
// 			alert("error 3");
//        }
//      });
//    });  
	
})


</script>

<script>

<%
String homeType = (String)session.getAttribute("homeType");
if(!homeType.equals("0")) {%>
   $(document).ready(function() {
      var homeTypeBt = document.getElementById('homeTypeBt');
      homeTypeBt.innerHTML = "<%=(String)session.getAttribute("homeType")%>";
      homeTypeBt.style.backgroundColor = '#008489';
      homeTypeBt.style.color = "white";
      homeTypeBt.style.borderRadius = "10px";
   })
<%}%>

<%
int people = (int) session.getAttribute("people"); 
if(people!=0) {%>
   $(document).ready(function() {
      var homeTypeBt = document.getElementById('peopleBt');
      homeTypeBt.innerHTML = "인원 "+"<%=(int)session.getAttribute("people")%>";
      homeTypeBt.style.backgroundColor = '#008489';
      homeTypeBt.style.color = "white";
      homeTypeBt.style.borderRadius = "10px";
   })
<%}%>

<% String startDate = (String) session.getAttribute("startDate"); 
if(!startDate.equals("0")) {%>
$(document).ready(function() {
   var dateBt = document.getElementById('dateBt');
   dateBt.innerHTML = "<%=(String)session.getAttribute("startDate")%>"+" ~ "+"<%=(String)session.getAttribute("endDate")%>";
   dateBt.style.backgroundColor = '#008489';
   dateBt.style.color = "white";
   dateBt.style.borderRadius = "10px";
})
<%}%>
</script>



<style>
	@font-face {
  		font-family: font;
		src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');  
	}
	
	@font-face {
		font-family: TmonTium;
		src: url('<c:url value='/resources/fonts/TmonTium.ttf'/>');
	}
	
	
	#header {
		font-family: font;
		z-index : 100;
		background-color: white;
	}
	
	#fixedHeader {
		position: fixed;
		width : 100%;
		z-index : 100;
	}
	
	#searchBar {
		font-family: Interpark;
		src: url('<c:url value='/resources/fonts/Interpark.ttf'/>'); 
		font-weight : 200;
  		font-size: 0.8vw;
		width : 100%;
		height : 8vh;
		border-top : 1px solid #e0dee0;
		border-bottom : 1px solid #e0dee0;
		background-color: white;

	}
	
	#searchBar ul {
		float : left;
	    list-style-type: none;
	    margin: 10px 0px 10px 50px;
	    padding: 0;
	    overflow: hidden;
	    background-color: white;
	}
	
	#searchBar li {
	    float: left;
	    height : 100%;
	    margin-right : 10px;
	}
	
	#searchBar li a {
	    display: block;
	    color: black;
	    text-align: center;
	    padding: 10px 16px 10px;
	    text-decoration: none;
	}
	
 	#searchBar li a:hover { 
		border-bottom: 1px solid  #1c7a96;
		color: #1c7a96;
 	}
 	
 	#contentsWrapper {
 		font-family: Interpark;
		src: url('<c:url value='/resources/fonts/Interpark.ttf'/>'); 
 		width : 100%;
 		height : 170vh;
 	}
 	
 	
 	
 	#mapOffDiv {
 		width : 100%;
 		height : 300px;
 	}
 	
 	#footer {
 		z-index:2;
     	position:relative;
     }
     
     #map {
     	margin : 0 0 0 5%;
     	width : 95%;
     	height: 100%;
     	
     }
     
     #offTitlePic {
     	margin-top : 200px;
     	margin-left : 15vw;
     	width : 70vw;
     	height : 20vw;
     	display: inline-block;
     	overflow:hidden;
     }
     
     #offTitlePic img{
     	height : 100%;
     }
     
     #offContentsWrapper {
     	margin-top : 20px;
     	margin-left : 15vw;
     	width : 70vw;
     	height : 30vw;
     	display: inline-block;
     }
     
     #offContentsTitle {
     	margin-top : 20px;
     	margin-left : 15vw;
     	width : 70vw;
     	height : 5vw;
     	display: inline-block;
     	 
     }
     
	.row {
		box-sizing : border-box;
		height : 50%;
		margin : auto;
	} 
	
	#row {
		box-sizing : border-box;
		height : 50%;
		margin : auto;
	}
     
     .col-md-3 {
     	height : 100%;
     	margin : auto;
     	line-height: 0.8em;
     	overflow: hidden;
     }
     
	.recommend {
		height : 100%;
	}
				
	.col-md-2 {
		height : 100%;
	}
	
	#col-md-2 {
		padding-left : 3px;
		padding-right: 3px;
	}
	
	.countryCard {
		border : 1px solid white;
		border-radius : 10px;
		height : 100%;
		width : 100%;
		cursor: pointer;

	}
				
	.countryCard img {
		width : 50%;
		height: 80%;
		margin-top : 5%;
		margin-bottom : 5%;
		margin-left : 5%;
		margin-right : 4%;
		float : left;
		border-radius: 10px;
	}
				
	.countryName {
		margin-top : 15%;
		font-size : 1.7em;
		color : #a0a6af; 
		font-family: TmonTium;
	}
				
	#newyork p{
		font-size : 1.2em;
	}
	
	#madrid p {
		font-size: 1.4em;
	}
	
	#london p {
		font-size: 1.3em;
	}
			
	#myCarousel {
	   	width : 100%;
	   	height : 100%;
	   	display: inline-block;
	}
			     
 	
			     
	.carousel-inner {
		width : 100%;
		height : 100%;
	}
			     
	#carouselDiv {
		width : 100%;
		height : 60%;
	}	
				
	.reviewStar {
		color : #008489; 
		display : inline;
	}
 	
 	.hostTitle, .reviewCount {
 		display: inline;
 	}
 	
 	.homeType {
 		margin-top: 1vh;
 		padding : 0px;
 		margin-bottom : 0.5vh;
 	}
 	
 	.homeName {
 		margin-bottom : 0.5vh;
 		padding : 0px;
 	}
 	
 	.homePrice{
 		margin-bottom : 0.5vh;
 		padding : 0px;
 	}
 	
 	.introSentence {
 		margin-top : 1vw;
 		font-size: 2em;
 		font-family: TmonTium;
 		color : #3a3b3d;
 	}
 	
 	#mapOnDiv {
 		width : 100%;
 		height : 500px;
 		display : none;
 	}
 	
 	#onCardsWrapper {
 		margin-top : 200px;
 		margin-left : 5vw;
 		width : 55vw;
 		height : 40vw;
 		display: inline-block;
 		line-height : 1em;
 	}
 	
 	#mapWrapper {
 		margin-top : 200px;
 		width : 35vw;
 		height : 70vw;
 		display: inline-block;
 	}
 	
 	
 	#mapWrapper {
 		position: fixed;
 		height: 75vh;
	    z-index: 0;
 	}
	
	.col-md-4 {
		height : 100%;
	}
	
	.row {
		margin : auto;
	}
	
	.col {
		margin : auto;
		height : 33vh;
	}
	
	#onCardsWrapper .row{
		height : 50%;
	}
	
	.carousel-inner>.item>.homePic {
		width : 100vh;
		height : 20vh;
	}
 	
</style>
</head>
    
<body>
	<div id=fixedHeader>
		<%@ include file="../resource/include/header.jsp"%>
		<div id="searchBar">
			<ul>
			  <li><a href="" data-toggle="modal" data-target="#date" id="dateBt">날짜</a></li>
			  <li><a href="" data-toggle="modal" data-target="#people" id="peopleBt">인원</a></li>
			  <li><a href="" data-toggle="modal" data-target="#homeType" id="homeTypeBt">숙소 종류</a></li>
			  <li><a href="" data-toggle="modal" data-target="#price" id="priceBt">가격</a></li>
			</ul>
			<div class="onoffswitch">
			    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch">
			    <label class="onoffswitch-label" for="myonoffswitch">
			        <span class="onoffswitch-inner"></span>
			        <span class="onoffswitch-switch"></span>
			    </label>
			</div>
		</div>
	</div>
	
	
	<div id="contentsWrapper">
		<div id="mapOnDiv">
			<div id="onCardsWrapper">
				<div class="col">
				<%int cnt=0;%>
					<c:forEach var="homeList" items="${homeList}" varStatus="status">
						<div class="col-md-4">
					  		<div id="carouselDiv">
								<div id="${homeList.home_seq}" class="carousel slide" data-ride="carousel">
								  		<!-- Indicators -->
								  <ol class="carousel-indicators">
									<li data-target="#${homeList.home_seq}" data-slide-to="0" class="active"></li>
									<li data-target="#${homeList.home_seq}" data-slide-to="1"></li>
								  </ol>
							 		 <!-- Wrapper for slides -->
								  <div class="carousel-inner">
								    <div class="item active">
								      <img class="homePic" src="<c:url value='files/${homeList.home_main_pic}'/>">
								    </div>
								
								    <div class="item">
								      <img class="homePic" src="<c:url value='files/${homeList.home_main_pic}'/>">
								    </div>
								
								  </div>
							
							  		<!-- Left and right controls -->
								  <a class="left carousel-control" href="#${homeList.home_seq}" data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left"></span>
								    <span class="sr-only">Previous</span>
								  </a>
								  <a class="right carousel-control" href="#${homeList.home_seq}" data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right"></span>
								    <span class="sr-only">Next</span>
								  </a>
								</div>
							<p class="homeType" id="homeType<%=cnt%>">${homeList.home_type}</p>
		                  	<p class="homeName" id="homeName<%=cnt%>">
		                    <B>${homeList.home_name}</B>
		                  </p>
		                  <p class="homePrice" id="homePrice<%=cnt%>">₩ ${homeList.home_price} /박</p>
		                  <p class="reviewStar">★★★★★</p>
		                  <p class="reviewCount">247</p>
		                  <p class="hostTitle">슈퍼호스트</p>
						</div>
				  </div>
					<%cnt++; %>
					</c:forEach>
				  
				</div> 
<!-- 				row -->
				
			</div>
			
			
			
			
			
			<div id="mapWrapper">
				<div id="map"></div>
			</div>
		</div>
		<div id="mapOffDiv">
			<div id="offTitlePic"><img src="<c:url value='/resources/img/home_main/villimPic6.jpg'/>"></div>
			<div id="offContentsTitle">
				<div class="row recommend">
				  <div class="col-md-2" id="col-md-2">
				  	<div id="paris" class="countryCard" onclick="location.href='/';">
				  		<img src="<c:url value='/resources/img/home_main/paris.jpg'/>">
				  		<p class="countryName">PARIS</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="col-md-2">
				  	<div id="newyork" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/newyork.jpg'/>">
				  		<p class="countryName">NEWYORK</p>
				  	</div>
				  </div>
				  
				  <div class="col-md-2"  id="col-md-2">
				  	<div id="rome" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/rome.jpg'/>">
				  		<p class="countryName">ROME</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="col-md-2">
				  	<div id="london" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/london.jpg'/>">
				  		<p class="countryName">LONDON</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="col-md-2">
				  	<div id="praha" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/praha.jpg'/>">
				  		<p class="countryName">PRAHA</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="col-md-2">
				  	<div id="madrid" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/madrid.jpg'/>">
				  		<p class="countryName">MADRID</p>
				  	</div>
				  </div>
				  
				  
				</div>
			</div>
			
			
			<div id="offContentsWrapper">
			
			<p class="introSentence">파리(Paris)의 숙소 </p>
				<div class="row" id="row">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				</div>
				
				
				<p class="introSentence">뉴욕(New York)의 숙소 </p>
			
				<div class="row" id="row">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					    <li data-target="#myCarousel" data-slide-to="1"></li>
					    <li data-target="#myCarousel" data-slide-to="2"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle6.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/index/homeTitle4.jpg'/>" alt="chicago">
					    </div>
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#myCarousel" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>Apartment 1 of 4 with green terrace in Roma Norte</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				</div>
				
			</div>
		</div>
	</div>
	

<%@ include file="../resource/include/modal_homeMain/date.jsp"%>
<%@ include file="../resource/include/modal_homeMain/people.jsp"%>
<%@ include file="../resource/include/modal_homeMain/homeType.jsp"%>
<%@ include file="../resource/include/modal_homeMain/price.jsp"%>
<%@ include file="../resource/include/footer.jsp"%>

<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKxwlQzLFSDHDwe0Wf_J9bmYrGNxC-R-E&callback=initMap">
    </script>
</body>
</html>