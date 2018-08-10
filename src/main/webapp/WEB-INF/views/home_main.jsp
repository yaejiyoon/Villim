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
</head>


<style>
.onoffswitch {
	float: right;
	margin : 15px 100px 13px 0px;
    position: relative; width: 90px;
    -webkit-user-select:none; 
    -moz-user-select:none; -ms-user-select: none;
}
.onoffswitch-checkbox {
    display: none;
}
.onoffswitch-label {
    display: block; overflow: hidden; cursor: pointer;
    border: 2px solid #999999; border-radius: 20px;
}
.onoffswitch-inner {
    display: block; width: 200%; margin-left: -100%;
    transition: margin 0.3s ease-in 0s;
}
.onoffswitch-inner:before, .onoffswitch-inner:after {
    display: block; float: left; width: 50%; height: 30px; padding: 0; line-height: 30px;
    font-size: 16px; color: white; font-family: Trebuchet, Arial, sans-serif; font-weight: bold;
    box-sizing: border-box;
}
.onoffswitch-inner:before {
    content: "MAP";
    padding-left: 18px;
    background-color: #34A7C1; color: #FFFFFF;
}
.onoffswitch-inner:after {
    content: "MAP";
    padding-right: 18px;
    background-color: #EEEEEE; color: #999999;
    text-align: right;
}
.onoffswitch-switch {
    display: block; 
    width: 20px; 
    HEIGHT : 20PX;
    margin: 7px;
    background: #FFFFFF;
    position: absolute; 
    top: 0; 
    bottom: 0;
    right: 56px;
    border: 2px solid #999999; 
    border-radius: 20px;
    transition: all 0.3s ease-in 0s; 
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-inner {
    margin-left: 0;
}
.onoffswitch-checkbox:checked + .onoffswitch-label .onoffswitch-switch {
    right: 0px; 
}
</style>
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
					on.style.display = 'none';
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
     	border : 1px solid black;
     	display: inline-block;
     }
     
     #offTitlePic img{
     	width : 100%;
     	height : 100%;
     }
     

</style>

    
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