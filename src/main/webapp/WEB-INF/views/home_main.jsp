<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

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
  map = new google.maps.Map(document.getElementById('map'), {
	  center: {lat: -34.397, lng: 150.644},
      zoom: 17
  });
  infoWindow = new google.maps.InfoWindow;

  // Try HTML5 geolocation.
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

      infoWindow.setPosition(pos);
      infoWindow.setContent('내 위치입니다.');
      infoWindow.open(map);
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
  infoWindow.open(map);
}

</script>
<script>
$(document).ready(function(){
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
					$("#money").text(chkval);
					on.style.display = 'block';    
					off.style.display = 'none';
	    	   } else if(chkval==2) {
					$("#money").text(chkval);
					on.style.display = 
						'none';
					off.style.display = 'block';    
	    	   }
	       },error:function(errordata){
				alert("에러에러");
	       }
	     });
	   });  
});
</script>
<style>
	@font-face {
  		font-family: font;
		src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');  
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
  		font-size: 0.9vw;
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
	    padding: 14px 16px;
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
 		height : 3000px;
 	}
 	
 	#mapOnDiv {
 		width : 100%;
 		height : 700px;
 		display : none;
 	}
 	
 	#onCardsWrapper, #mapWrapper {
 		margin-top : 200px;
 		width : 45vw;
 		height : 70vw;
 		border : 1px dotted black;
 		display: inline-block;
 	}
 	
 	#onCardsWrapper {
 		margin-left : 5vw;
 		height : 90vh;
 	}
 	
 	#mapWrapper {
 		position: fixed;
 		height: 75vh;
	    z-index: 0;
 	}
 	
 	
 	#mapOffDiv {
 		width : 100%;
 		height : 700px;
 	}
 	
 	#footer {
 		z-index:2;
     	position:relative;
     }
     
     #map {
     	margin : 0 0 0 5%;
     	width : 95%;
     	height: 100%;
     	border : 1px solid red;
     	
     }
     
     #offTitlePic {
     	margin-top : 200px;
     	margin-left : 15vw;
     	width : 70vw;
     	height : 20vw;
     	display: inline-block;
     }
     
     #offTitlePic img{
     	width : 100%;
     	height : 100%;
     	border-radius: 20px;
     }
     
     #offContentsWrapper {
     	border : 1px solid black;
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
		margin : auto;
		height : 50%;		
	} 
     
     .col-md-3 {
     	border : 1px dotted pink;
     	height : 100%;
     }
     
     
	
	.recommend {
		height : 100%;
	}
				
				.col-md-2 {
					height : 100%;
					padding-right : 5px;
					padding-left : 5px;
				}
				
				.countryCard {
					border : 1px solid #babdc1;
					border-radius : 10px;
					height : 100%;
					width : 100%;
				}
				
				.countryCard img {
					width : 50%;
					height: 80%;
					margin-top : 5%;
					margin-bottom : 5%;
					margin-left : 5%;
					margin-right : 7%;
					float : left;
					border-radius: 10px;
				}
				
				.countryName {
					margin-top : 15%;
					font-family: font;
					font-size : 1.8em;
					color : #606163;
				}
				
				#newyork img, #barcelona img {
					margin-right : 5%:
				}
				
				#barcelona p {
					font-size : 1.3em;
				}
				
				#newyork p{
					font-size : 1.5em;
				}
					
</style>
<script>
$('.carousel').carousel({
	  interval: 1000
	})
</script>
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
			<div id="onCardsWrapper"></div>
			<div id="mapWrapper">
				<div id="map"></div>
			</div>
		</div>
		<div id="mapOffDiv">
			<div id="offTitlePic"><img src="<c:url value='/resources/img/homeTitle2.jpg'/>"></div>
			<div id="offContentsTitle">
				<div class="row recommend">
				  <div class="col-md-2">
				  	<div id="paris" class="countryCard" onclick="location.href='/';">
				  		<img src="<c:url value='/resources/img/home_main/paris.jpg'/>">
				  		<p class="countryName">paris</p>
				  	</div>
				  </div>
				  <div class="col-md-2">
				  	<div id="newyork" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/newyork.jpg'/>">
				  		<p class="countryName">newyork</p>
				  	</div>
				  </div>
				  
				  <div class="col-md-2">
				  	<div id="rome" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/rome.jpg'/>">
				  		<p class="countryName">rome</p>
				  	</div>
				  </div>
				  <div class="col-md-2">
				  	<div id="london" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/london.jpg'/>">
				  		<p class="countryName">london</p>
				  	</div>
				  </div>
				  <div class="col-md-2">
				  	<div id="praha" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/praha.jpg'/>">
				  		<p class="countryName">praha</p>
				  	</div>
				  </div>
				  <div class="col-md-2">
				  	<div id="barcelona" class="countryCard">
				  		<img src="<c:url value='/resources/img/home_main/barcelona.jpg'/>">
				  		<p class="countryName">barcelona</p>
				  	</div>
				  </div>
				  
				  
				</div>
			</div>
			<div id="offContentsWrapper">
				<div class="row">
				  <div class="col-md-3">
				  
				  	<div id="myCarousel" class="carousel slide" data-ride="carousel">
					  <!-- Wrapper for slides -->
					  <div class="carousel-inner">
					    <div class="item active">
					      <img src="<c:url value='/resources/img/homeTitle2.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/homeTitle3.jpg'/>" alt="chicago">
					    </div>
					
					    <div class="item">
					      <img src="<c:url value='/resources/img/homeTitle4.jpg'/>" alt="chicago">
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
				  <div class="col-md-3">.col-md-3</div>
				  <div class="col-md-3">.col-md-3</div>
				  <div class="col-md-3">.col-md-3</div>
				</div>
				<div class="row">
				  <div class="col-md-3">.col-md-3</div>
				  <div class="col-md-3">.col-md-3</div>
				  <div class="col-md-3">.col-md-3</div>
				  <div class="col-md-3">.col-md-3</div>
				</div>
			</div>
			
			<style>
				#myCarousel {
			     	margin-top : 20px;
			     	margin-left : 15vw;
			     	width : 10vw;
			     	height : 5vw;
			     	display: inline-block;
			     }
			     
			     .item img {
			     	width : 100%;
			     	height : 100%;
			     }
			     
			     .carousel-inner {
			     	width : 100%;
			     	height : 100%;
			     	border : 1px solid red;
			     }
			     
			</style>
			
			  <!-- Indicators -->
			  <ol class="carousel-indicators">
			    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			    <li data-target="#myCarousel" data-slide-to="1"></li>
			    <li data-target="#myCarousel" data-slide-to="2"></li>
			  </ol>
			  
			
			


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