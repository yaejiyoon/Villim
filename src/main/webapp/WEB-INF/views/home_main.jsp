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

<!-- 달력 -->
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/datepicker.js" />"></script>
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/i18n/datepicker.en.js" />"></script>
<link rel="stylesheet" href="<c:url value="../../resources/css/home/dist/css/datepicker_home_main.css?ver=3" />" />
<link rel="stylesheet" href="<c:url value="../../resources/css/home/docs/css/style.css" />"/>

<link href="<c:url value="/resources/css/home_main/map_switch.css" />" rel="stylesheet" />
<script>
$(document).ready(function(){
	<c:if test="${sessionScope.login_email eq null}">
	$(".likeyBT").attr('href','#myModal1');
</c:if>
})
</script>
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
var locations = [];
function initMap() {
	
	var lat = 37.534286;
	var lng = 126.901990;
	
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
	 	      infoWindow.setContent('검색한 위치입니다.');
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
		
		</c:if>
		
		
		<c:forEach var="item" items="${markerList}" varStatus="status">
			locations['${status.index}'] = new Array();
			locations['${status.index}'][0] = "${item.home_price}";
			locations['${status.index}'][1] = "${item.home_lat}";
			locations['${status.index}'][2] = "${item.home_lng}";
			locations['${status.index}'][3] = "${item.home_seq}";
			locations['${status.index}'][4] = "${item.home_name}";
			locations['${status.index}'][5] = "${item.home_main_pic}";
		</c:forEach>

		for (var i = 0; i < locations.length; i++) {
		 marker = new google.maps.Marker({
		     position: new google.maps.LatLng(locations[i][1], locations[i][2]),
		     map: map,
		     animation : google.maps.Animation.DROP
		 });

		google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
		    return function() {
		    	var content ='<div><img style="width:200px; height:100px; border-radius:10px; margin-bottom:5px;" src="<c:url value="files/'+locations[i][5]+'"/>"></div>'
		    	+'<div style="width:200px;"><B>'+locations[i][4]+'</b></div>'
		    	+'<div>₩ '+locations[i][0]+'/박</div>';
		      infoWindow.setContent(content);
		      infoWindow.open(map, marker);
		      
		      $("#picCarousel"+locations[i][3]).css({"box-shadow":"0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)"});
		      $("#homeName"+locations[i][3]).css({"color":"#008489"});
		      $("#newAtagId"+locations[i][3]).css({"color":"#008489"});
		    }
		})(marker, i));
		
		google.maps.event.addListener(marker, 'mouseout', (function(marker, i) {
		    return function() {
		      infoWindow.close();
		      $("#picCarousel"+locations[i][3]).css({"box-shadow":"none"});
		      $("#homeName"+locations[i][3]).css({"color":"black"});
		      $("#newAtagId"+locations[i][3]).css({"color":"black"});
		    }
		})(marker, i));
		
		google.maps.event.addListener(marker, 'click', (function(marker, i) {
		    return function() {
		      window.location.href = "home_info.do?seq="+locations[i][3];
		    }
		})(marker, i));
		
		 
		
		}
		
}

</script>
<script>
$(document).ready(function() {
	
	$('.open-modal').click(function(){
	      $('#likeyMainModal').modal('show');  // show modal
	}); 
		

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
		    			$('<div>').attr('class','col-md-4').attr('id','colMd'+resp.home[i].home_seq).append(
		    			 $('<a>').attr('href','home_info.do?seq='+resp.home[i].home_seq).attr('class','newAtag').attr('id','newAtagId'+resp.home[i].home_seq).append(
		    			  $('<div>').attr('id','carouselDiv '+i).append(
		    			   $('<div>').attr('id',resp.home[i].home_seq).attr('class','carousel slide').attr('data-ride','carousel').append(
		    			  	 $('<ol>').attr('class','carousel-indicators').attr('id','ol'+resp.home[i].home_seq).append(
		    			  	 )
		    			   )
		    			  )
		    			 )
		    			)
		    		   );
					}
		    	   
		    	   for(var i = 0; i < resp.home.length ; i++) {
		    		   $('#colMd'+resp.home[i].home_seq).after($('<a>').attr('href','home_info.do?seq='+resp.home[i].home_seq));
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
						$('#'+resp.home[i].home_seq).after($('<img>').attr('src',"<c:url value='../resources/img/likeW.png'/>").attr('class','likeyBT').attr('id','likeyBTId'+resp.home[i].home_seq))
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
   
})
	
	<c:if test="${mapOn!=null}">
		   $('#myonoffswitch').prop('checked', true);
		   var on = document.getElementById('mapOnDiv');
		   var off = document.getElementById('mapOffDiv');
		   on.style.display = 'block';
		   off.style.display = 'none';
		</c:if>
	
	$('#goParis').click(function(){
		var lat = "48.85661400000001";
		var lng = "2.3522219000000177";
		$(location).attr("href","headerSearch.do?lat="+lat+"&lng="+lng);
	});
	
	$('#goNewyork').click(function(){
		var lat = "40.7127753";
		var lng = "-74.0059728";
		$(location).attr("href","headerSearch.do?lat="+lat+"&lng="+lng);
	});
		
	$('#goRome').click(function(){
		var lat = "41.90278349999999";
		var lng = "12.496365500000024";
		$(location).attr("href","headerSearch.do?lat="+lat+"&lng="+lng);
	});
	
	$('#goLondon').click(function(){
		var lat = "51.5073509";
		var lng = "-0.12775829999998223";
		$(location).attr("href","headerSearch.do?lat="+lat+"&lng="+lng);
	});
		
	$('#goPraha').click(function(){
		var lat = "50.0755381";
		var lng = "14.43780049999998";
		$(location).attr("href","headerSearch.do?lat="+lat+"&lng="+lng);
	});
		
	$('#goMadrid').click(function(){
		var lat = "40.4167754";
		var lng = "-3.7037901999999576";
		$(location).attr("href","headerSearch.do?lat="+lat+"&lng="+lng);
	});
	   
});  
	
	
		
		
$(document).ready(function() {
	$('body').delegate('.submit','click',function(){
        var chkval = 1;
        $('#myonoffswitch').prop('checked', true);
        var on = document.getElementById('mapOnDiv');
        var off = document.getElementById('mapOffDiv');
    $.ajax({
       url: "homeMain.do",
       type: "get",
       data:{chkval:chkval},
       
       success:function(returndata){
			on.style.display = 'block';    
			off.style.display = 'none';
	   },error:function(errordata){
			alert("error");
       }
     });
   });  
	
<c:if test="${sessionScope.login_email ne null }">
	<c:forEach items="${homeList }" var="homeList">
		<c:forEach items="${likeyList }" var="likeyList">
			<c:if test="${homeList.home_seq eq likeyList.home_seq }">
 				$("#likeyBTId${homeList.home_seq }").attr('src','<c:url value='../resources/img/like2.png'/>')
			</c:if>
 		</c:forEach>		
	</c:forEach>
</c:if>
	
	
	
});
			
		


</script>

<script>


<% String homeType = (String)session.getAttribute("homeType");
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
		/* position:fixed; */
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
 		height : 380vh;
 	}
 	
 	
 	#mapOffDiv {
 		width : 100%;
 		height : auto;
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
     	height : 40vw;
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
		font-size : 2.4vh;
		color : #a0a6af; 
		font-family: TmonTium;
	}
				
	#newyork p{
/* 		font-size : 1.2em; */
 		font-size : 1.6vh; 
	}
	
	
	#madrid p {
		font-size: 2vh;
	}
	
	#london p {
		font-size: 1.8vh;
	}
			

	
	.carousel.slide {
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
		height : 36vh;
	}
	
	#onCardsWrapper .row{
		height : 50%;
	}
	
	.carousel-inner>.item>.homePic {
		width : 100vh;
		height : 30vh;
	}
 	
 	.likeyBT{
 		width:20px;
 		position: absolute;
 		z-index: 400000;
 		top:10px;
 		right:30px;
 	}
 	
 	.likeyBT:hover{
 		cursor: pointer;
 	}
 	
 	.newAtag {
 	   color : black;
 	}
 	
 	.newAtag:hover {
 	   text-decoration: none;
 	}
 	
 	#jaehoModal {
  		margin-left : 70vh; 
  		width : 600px;
  		height : 1000px;
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
					<c:forEach var="homeList" items="${homeList}" varStatus="status">
						<a href="home_info.do?seq=${homeList.home_seq}">
						<div class="col-md-4" id="homeCard${homeList.home_seq}">
					  		<div id="carouselDiv">
<%-- 								<div id="${homeList.home_seq}" class="carousel slide" data-ride="carousel" onmouseover="hover(${homeList.home_seq})" onmouseout="out(${homeList.home_seq})"> --%>
								<div id="${homeList.home_seq}" class="carousel slide" data-ride="carousel" >
								  		<!-- Indicators -->
								  <ol class="carousel-indicators">
									<li data-target="#${homeList.home_seq}" data-slide-to="0" class="active"></li>
									<li data-target="#${homeList.home_seq}" data-slide-to="1"></li>
								  </ol>
							 		 <!-- Wrapper for slides -->
								  <div class="carousel-inner" id="picCarousel${homeList.home_seq}">
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
							<img src="<c:url value='../resources/img/likeW.png'/>" class="likeyBT" 
							id="likeyBTId${homeList.home_seq }" data-toggle="modal" href="#likeyMainModal"
							data-pic-id="${homeList.home_main_pic}" data-name-id="${homeList.home_name }"
							data-addr1-id="${homeList.home_addr1 }" data-addr2-id="${homeList.home_addr2 }"
							data-nation-id="${homeList.home_nation }" data-seq-id="${homeList.home_seq }"
							>
							<script>
							$(function () {
								
								
								
							    $("#likeyBTId${homeList.home_seq }").click(function () {
							        var home_main_pic = $(this).data('pic-id');
							        $(".modal-body #hiddenValue").val(home_main_pic);
							        
							        var home_name = $(this).data('name-id');
							        $(".modal-body #hiddenValue2").val(home_name);
							        
							        var home_addr1 = $(this).data('addr1-id');
							        $(".modal-body #hiddenValue3").val(home_addr1);
							        
							        var home_addr2 = $(this).data('addr2-id');
							        $(".modal-body #hiddenValue4").val(home_addr2);
							        
							        var home_nation = $(this).data('nation-id');
							        $(".modal-body #hiddenValue5").val(home_nation);
							        
							        var home_seq = $(this).data('seq-id');
							        $(".modal-body #hiddenValue6").val(home_seq);
							        
							        var name= $("#hiddenValue2").val();
					         		$("#home_home_name").text(name);
					         		
					         		var addr1= $("#hiddenValue3").val();
					    	  		var addr2= $("#hiddenValue4").val();
					    	  		var nation= $("#hiddenValue5").val();
					         		
					         		$("#home_home_addr").text(nation+", "+addr1+", "+addr2);
					         		
					         		var pic= $("#hiddenValue").val();
					         		$("#home_home_pic").attr("src","<c:url value='files/"+pic+"'/>");
					         		
					         		var home_seq_heart = $("#hiddenValue6").val();
					         		
					         		
					         		$.ajax({
										url:"HeartHeart.do",
										type:"get",
										data:{
											home_seq_heart:home_seq_heart
											},
									success:function(resp){
											
										for(var i=0;i<resp.lLikey.length;i++){
											$("#modalLikeyBTID"+resp.lLikey[i].likeyList_seq).attr('src','<c:url value='../resources/img/like.png'/>')
										}
										
										for(var i=0;i<resp.lLikey.length;i++){
											for(var j=0;j<resp.likeyHeart.length;j++){
												if(resp.lLikey[i].likeyList_seq == resp.likeyHeart[j].likeyList_seq){
													$("#modalLikeyBTID"+resp.lLikey[i].likeyList_seq).attr('src','<c:url value='../resources/img/like2.png'/>')
												} else {
													$("#modalLikeyBTID"+resp.lLikey[i].likeyList_seq).attr('src','<c:url value='../resources/img/like.png'/>')
												}
											}
										}
									}
										,
									error : function(request,status,error) {
										console.log(request.status + " : " + status + " : " + error);
										}
									})
									
					         		
							    })
							});
   							</script>
							<p class="homeType" id="homeType${homeList.home_seq}">${homeList.home_type}</p>
		                  	<p class="homeName" id="homeName${homeList.home_seq}">
		                    <B>${homeList.home_name}</B>
		                  </p>
		                  <p class="homePrice" id="homePrice${homeList.home_seq}">₩ ${homeList.home_price} /박</p>
		                  <p class="reviewStar">★★★★★</p>
		                  <p class="reviewCount">247</p>
		                  <p class="hostTitle">슈퍼호스트</p>
						</div>
				  </div>
				  </a>
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
				  <div class="col-md-2" id="goParis">
				  	<div id="paris" class="countryCard" onclick="location.href='/';">
				  		<img src="<c:url value='/resources/img/home_main/paris.jpg'/>">
				  		<p class="countryName">PARIS</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="goNewyork">
				  	<div id="newyork" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/newyork.jpg'/>">
				  		<p class="countryName">NEWYORK</p>
				  	</div>
				  </div>
				  
				  <div class="col-md-2"  id="goRome">
				  	<div id="rome" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/rome.jpg'/>">
				  		<p class="countryName">ROME</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="goLondon">
				  	<div id="london" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/london.jpg'/>">
				  		<p class="countryName">LONDON</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="goPraha">
				  	<div id="praha" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/praha.jpg'/>">
				  		<p class="countryName">PRAHA</p>
				  	</div>
				  </div>
				  <div class="col-md-2"  id="goMadrid">
				  	<div id="madrid" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/madrid.jpg'/>">
				  		<p class="countryName">MADRID</p>
				  	</div>
				  </div>
				  
				  
				</div>
			</div>
			
			
			<div id="offContentsWrapper">
			
			<p class="introSentence">파리(Paris)의 숙소 </p>
				<div class="col" id="row">
				  <c:forEach var="paris" items="${getParis}" varStatus="status" begin="0" end="3">
				  <a href="home_info.do?seq=${paris.home_seq}">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="${paris.home_seq}" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#${paris.home_seq}" data-slide-to="0" class="active"></li>
					    <li data-target="#${paris.home_seq}" data-slide-to="1"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img class="homePic" src="<c:url value='files/${paris.home_main_pic}'/>">
					    </div>
					
					    <div class="item">
					      <img class="homePic" src="<c:url value='files/${paris.home_main_pic}'/>">
					    </div> 
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#${paris.home_seq}" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#${paris.home_seq}" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">${paris.home_type}</p>
                  <p class="homeName">
                     <B>${paris.home_name}</B>
                  </p>
                  <p class="homePrice">₩ ${paris.home_price}</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  </a>
				  </c:forEach>
				  </div>
				  
				
				
				<p class="introSentence">뉴욕(New York)의 숙소 </p>
			
				<div class="col" id="row">
				  <c:forEach var="newyork" items="${getNewyork}" varStatus="status" begin="0" end="3">
				  <a href="home_info.do?seq=${newyork.home_seq}">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="${newyork.home_seq}" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#${newyork.home_seq}" data-slide-to="0" class="active"></li>
					    <li data-target="#${newyork.home_seq}" data-slide-to="1"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img class="homePic" src="<c:url value='files/${newyork.home_main_pic}'/>">
					    </div>
					
					    <div class="item">
					      <img class="homePic" src="<c:url value='files/${newyork.home_main_pic}'/>">
					    </div> 
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#${paris.home_seq}" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#${paris.home_seq}" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">${newyork.home_type}</p>
                  <p class="homeName">
                     <B>${newyork.home_name}</B>
                  </p>
                  <p class="homePrice">₩ ${newyork.home_price}</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  </a>
				  </c:forEach>
				  </div>
				  
				
				<p class="introSentence">로마(Rome)의 숙소 </p>
			
				<div class="col" id="row">
				  <c:forEach var="rome" items="${getRome}" varStatus="status" begin="0" end="3">
				  <a href="home_info.do?seq=${rome.home_seq}">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="${rome.home_seq}" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#${rome.home_seq}" data-slide-to="0" class="active"></li>
					    <li data-target="#${rome.home_seq}" data-slide-to="1"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img class="homePic" src="<c:url value='files/${rome.home_main_pic}'/>">
					    </div>
					
					    <div class="item">
					      <img class="homePic" src="<c:url value='files/${rome.home_main_pic}'/>">
					    </div> 
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#${rome.home_seq}" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#${rome.home_seq}" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">${rome.home_type}</p>
                  <p class="homeName">
                     <B>${rome.home_name}</B>
                  </p>
                  <p class="homePrice">₩ ${rome.home_price}</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">135</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  </a>
				  </c:forEach>
				  </div>
				  
				<p class="introSentence">런던(London)의 숙소 </p>
			
				<div class="col" id="row">
				  <c:forEach var="london" items="${getLondon}" varStatus="status" begin="0" end="3">
				  <a href="home_info.do?seq=${london.home_seq}">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="${london.home_seq}" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#${london.home_seq}" data-slide-to="0" class="active"></li>
					    <li data-target="#${london.home_seq}" data-slide-to="1"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img class="homePic" src="<c:url value='files/${london.home_main_pic}'/>">
					    </div>
					
					    <div class="item">
					      <img class="homePic" src="<c:url value='files/${london.home_main_pic}'/>">
					    </div> 
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#${london.home_seq}" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#${london.home_seq}" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">${london.home_type}</p>
                  <p class="homeName">
                     <B>${london.home_name}</B>
                  </p>
                  <p class="homePrice">₩ ${london.home_price}</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">135</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  </a>
				  </c:forEach>
				  </div>
				
				<p class="introSentence">프라하(Praha)의 숙소 </p>
			
				<div class="col" id="row">
				  <c:forEach var="praha" items="${getPraha}" varStatus="status" begin="0" end="3">
				  <a href="home_info.do?seq=${praha.home_seq}">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="${praha.home_seq}" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#${praha.home_seq}" data-slide-to="0" class="active"></li>
					    <li data-target="#${praha.home_seq}" data-slide-to="1"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img class="homePic" src="<c:url value='files/${praha.home_main_pic}'/>">
					    </div>
					
					    <div class="item">
					      <img class="homePic" src="<c:url value='files/${praha.home_main_pic}'/>">
					    </div> 
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#${praha.home_seq}" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#${praha.home_seq}" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">${praha.home_type}</p>
                  <p class="homeName">
                     <B>${rome.home_name}</B>
                  </p>
                  <p class="homePrice">₩ ${praha.home_price}</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">135</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  </a>
				  </c:forEach>
				  </div>
				
				<p class="introSentence">마드리드(Madrid)의 숙소 </p>
			
				<div class="col" id="row">
				  <c:forEach var="madrid" items="${getMadrid}" varStatus="status" begin="0" end="3">
				  <a href="home_info.do?seq=${madrid.home_seq}">
				  <div class="col-md-3">
					<div id="carouselDiv">
						<div id="${madrid.home_seq}" class="carousel slide" data-ride="carousel">
						  		<!-- Indicators -->
					  <ol class="carousel-indicators">
					    <li data-target="#${madrid.home_seq}" data-slide-to="0" class="active"></li>
					    <li data-target="#${madrid.home_seq}" data-slide-to="1"></li>
					  </ol>
				  		
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img class="homePic" src="<c:url value='files/${madrid.home_main_pic}'/>">
					    </div>
					
					    <div class="item">
					      <img class="homePic" src="<c:url value='files/${madrid.home_main_pic}'/>">
					    </div> 
					  </div>
					
					  <!-- Left and right controls -->
					  <a class="left carousel-control" href="#${madrid.home_seq}" data-slide="prev">
					    <span class="glyphicon glyphicon-chevron-left"></span>
					    <span class="sr-only">Previous</span>
					  </a>
					  <a class="right carousel-control" href="#${madrid.home_seq}" data-slide="next">
					    <span class="glyphicon glyphicon-chevron-right"></span>
					    <span class="sr-only">Next</span>
					  </a>
						</div>
					</div>
					<p class="homeType">${madrid.home_type}</p>
                  <p class="homeName">
                     <B>${rome.home_name}</B>
                  </p>
                  <p class="homePrice">₩ ${madrid.home_price}</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">135</p>
                  <p class="hostTitle">슈퍼호스트</p>
				  </div>
				  </a>
				  </c:forEach>
				  </div>
				
			</div>
		</div>
	</div>


<%@ include file="../resource/include/modal_homeMain/date.jsp"%>
<%@ include file="../resource/include/modal_homeMain/people.jsp"%>
<%@ include file="../resource/include/modal_homeMain/homeType.jsp"%>
<%@ include file="../resource/include/modal_homeMain/price.jsp"%>
<%@ include file="../resource/include/modal_homeInfo/likey_main.jsp"%>
<%@ include file="../resource/include/footer.jsp"%>

<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKxwlQzLFSDHDwe0Wf_J9bmYrGNxC-R-E&callback=initMap">
    </script>
</body>
</html>