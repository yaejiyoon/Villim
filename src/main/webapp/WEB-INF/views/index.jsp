<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Villim</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- main css -->
<link href="<c:url value="/resources/css/main/main.css?ver=2" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet" />
<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js"/>"></script>

<!-- google 검색 api -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCKxwlQzLFSDHDwe0Wf_J9bmYrGNxC-R-E&libraries=places"></script>

<!-- 달력 -->
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/datepicker.js" />"></script>
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/i18n/datepicker.en.js" />"></script>
<link rel="stylesheet" href="<c:url value="../../resources/css/home/dist/css/datepicker.css?var=3" />" />
<link rel="stylesheet" href="<c:url value="../../resources/css/home/docs/css/style.css" />"/>



<script>

function typeFunction() {
    document.getElementById("typeDropdownContent").classList.toggle("show");
}

function peopleFunction() {
    document.getElementById("peopleDropdownContent").classList.toggle("show");
    $('#peopleDropdownContent').bind('click', function (e) { e.stopPropagation() })
}
    
// Close the dropdown menu if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}




$(document).ready(function() {
	$("#peopledis").click(function() {
	    var intmax = parseInt($("#pcount").text());
	
	    if(intmax > 1){
	       intmax = intmax - 1; 
	       $("#pcount").text(intmax);
	       $("#peopleup").attr("disabled",false);
	    }else{
	       $("#peopledis").attr("disabled",true);
	       $("#pcount").text(0);
	    }
	    
	 });
	 
	 $("#peopleup").click(function() {
	    var intmax = parseInt($("#pcount").text());
	
	    if(intmax < 15 ){
	       $("#peopledis").attr("disabled",false);
	       intmax = intmax + 1; 
	       $("#pcount").text(intmax)
	       
	    }else if(intmax = 15){
	       $("#peopleup").attr("disabled",true);
	       $("#pcount").text(intmax+1 + "+")
	    }
	 });
	 
	 var pcount = $("#pcount").text();
	  $("#hiddenPeople").val(pcount);
	 
	 
	 
});

   $(document).ready(function() {
      $("#homeButton").click(function(){
         $(location).attr("href","homeMain.do")
      })
      
      $(".typeName").click(function() {
    	  var type = $(this).text();
    	  var typeTitle = document.getElementById('typeTitle');
    	  typeTitle.style.color = '#848281';
    	  $("#typeDropBtn").text("");
    	  $("#typeDropBtn").text(type);
    	  var typeDropBtn = $("#typeDropBtn").text();
    	  $("#hiddenHomeType").val(typeDropBtn);
      })
      
      $("#peopleSubmit").click(function() {
    	  var peopleTitle = document.getElementById('peopleTitle');
    	  peopleTitle.style.color = '#848281';
    	  $("#peopleDropBtn").text("");
    	  var pcount = $("#pcount").text();
    	  $("#peopleDropBtn").text(pcount+" 명");
    	  $("#hiddenPeople").val(pcount);
    	  
    	  var dropdowns = document.getElementsByClassName("dropdown-content");
    	    var i;
    	    for (i = 0; i < dropdowns.length; i++) {
    	      var openDropdown = dropdowns[i];
    	      if (openDropdown.classList.contains('show')) {
    	        openDropdown.classList.remove('show');
    	      }
    	    }
      })
   });
   
   
</script>
<style>
   @font-face {
      font-family: font;
      src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');  
   }
   
   @font-face {
      font-family: dx;
      src: url('<c:url value='/resources/fonts/dx.ttf'/>');  
   }
   
</style>
<style>
/* Style The Dropdown Button */
.dropbtn {
	font-family : font;
    background-color: white;
    color: #5c5d5e;
    font-size: 2vh;
    border: none;
    cursor: pointer;
    width : 100%;
    padding-top: 10px;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
	margin-top : 40px;
	left : -3vh;
    display: none;
    position: absolute;
    background-color: white;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    font-family: font;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 5px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: white;
}

#typeTitle {
	font-family : font;
	font-size: 1.2em;
	margin-bottom : 0;
	margin-top : 6px;
	color : white;
}

#typeDropdownContent a {
	font-size : 1.8vh;
	font-weight: 50;
}


#peopleTitle {
	margin-bottom : 0;
	margin-top : 6px;
	font-size :  1.2em;
	color : white;
}

#searchBt {
	background-color: #ff5a5f;
	color : white;
	font-size : 2.5vh;
}

#searchBt:hover {
	background-color: #fc7e82;
}


	#peopleup, #peopledis {
		background-color: #008489; 
		color : white;
		outline:0;
		display: inline;
		border-radius: 50%;
	}
	
	#peopleSubmit {
		background-color: white; 
		color : #008489;
		border : 1px solid #008489;
		font-family: dx;
		margin-top : 2vh;
	}
	
	#peopleSubmit:hover {
		background-color: #008489; 
		color : white;
		outline:0;
	}
	
	#peopleDropdownContent {
		width : 25vh;
		height : 15vh;
		background-color: white;
		font-family: font;
		font-size : 2vh;
		right:auto; 
		left: auto;
	}
	
	#peopleDropdownContentInner {
		margin-top : 3vh;
	}
	
	#locationTextField {
		font-family : font;
		margin-top : 8%;
		width : 80%;
		height : 40%;
		font-size : 2vh;
		border : 1px solid white;
		color: #5c5d5e;
	}
	
	#mapGlyphicon , #calendarGlyphicon{
		margin-top : 11%;
		font-size: 2vh;
		color: #5c5d5e;
	}
	
	#datepicker {
		border : 1px solid white;
		font-family: font;
		font-size : 2vh;
	}

	#searchicon {
		color : white;
		font-size : 5vh;
	}
</style>
<script>
	
	window.onload = function() { 
		if (navigator.geolocation) { 
			navigator.geolocation.getCurrentPosition(MyPosition); 
		} 
	} 
	
	function MyPosition(position) { 
		var lat = position.coords.latitude; 
		var lng = position.coords.longitude; 
		
		$("#hiddenLocationLat").val(lat);
		$("#hiddenLocationLng").val(lng);
	}

	$(document).ready(function init() {
			
		var input = document.getElementById('locationTextField');
		var autocomplete = new google.maps.places.Autocomplete(input);
		
		
		$("#searchBt").click(function() {
			var place = autocomplete.getPlace();

			var lat = place.geometry.location.lat();
			var lng = place.geometry.location.lng();
			
			$("#hiddenLocationLat").val(lat);
			$("#hiddenLocationLng").val(lng);
		})

		
	});
	
	$('.datepicker-here').datepicker({
	    onClose:function(theDate) {
	        alert('.datepicker-here');
	    }
	});
	
	google.maps.event.addDomListener(window, 'load', init);
</script>
<script>
$(document).ready(function() {
	$('.datepicker-here').datepicker({
	    autoClose : "true",
	    dateFormat : "yyyy/mm/dd",
	    minDate: new Date(),
	    toggleSelected: false,
	    language: {
	       days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	        daysShort: ['일', '월', '화', '수', '목', '금', '토'],
	        daysMin: ['일', '월', '화', '수', '목', '금', '토'],
	        months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
	        monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
	        dateFormat: "yyyy/mm/dd",
	        timeFormat: 'hh:ii aa'
	     }
	})
});
</script>

<!-- 재호 -->
</head>
<body>
   <%@ include file="../resource/include/header.jsp"%>
   <ul class="cb-slideshow">
      <li><span>Image 01</span></li>
      <li><span>Image 02</span></li>
      <li><span>Image 03</span></li>
      <li><span>Image 04</span></li>
      <li><span>Image 05</span></li>
      <li><span>Image 06</span></li>
   </ul>


   <div class="jumbotron">
      <div id="welcome">
         <p>빌림과 함께 여행을 떠나볼까요?</p>
      </div>
      <Br>
      <form action="search.do" method="post">
      <div id="searchBar">
         <div id="type">
         	<input type="hidden" name="homeType" id="hiddenHomeType" value="0">
         	<div class="dropdown" >
         	  <p id="typeTitle">숙소유형</p>
			  <button onclick="typeFunction()" class="dropbtn" id="typeDropBtn" type="button" >
			  	<span class="glyphicon glyphicon-home" aria-hidden="true"></span>&ensp;숙소유형
			  </button>
			  <div class="dropdown-content" id="typeDropdownContent" >
			    <a class="typeName" href="#">집 전체</a>
			    <a class="typeName" href="#">다인실</a>
			    <a class="typeName" href="#">개인실</a>
			  </div>
			</div>
         </div>
         <div id="people">
         	<input type="hidden" name="people" id="hiddenPeople">
         	<div class="dropdown">
         		<p id="peopleTitle">인원수</p>
			  <button onclick="peopleFunction()" class="dropbtn" id="peopleDropBtn" type="button" >
			  	<span class="glyphicon glyphicon-user" aria-hidden="true"></span>&ensp;인원 수
			   </button>
			  <div class="dropdown-content" id="peopleDropdownContent">
			  		<div id="peopleDropdownContentInner">
				   		<span>인원</span>&emsp;
	               		<button id="peopleup" class="btn btn-primary-outline" type="button">+</button>
	               		&ensp;<span id="pcount">0</span>&ensp;
	               		<button id="peopledis" class="btn btn-primary-outline" type="button">-</button>
	               		<br>
	               		<button class="btn btn-primary-outline" id="peopleSubmit" type="button">적용하기</button> 
			  		</div>
			  </div>
         	</div>
         </div>
         <div id="location">
         	<input type="hidden" name="lat" id="hiddenLocationLat" value="0">
         	<input type="hidden" name="lng" id="hiddenLocationLng" value="0">
         	<i class="glyphicon glyphicon-map-marker" id="mapGlyphicon"></i>
         	<input id="locationTextField" type="text" placeholder="위치를 입력해주세요"></input>
         </div>
         <div id="calendar">
         	<i class="glyphicon glyphicon-calendar" id="calendarGlyphicon"></i>
	         	<input id="datepicker" type="text" data-range="true"
	                   data-multiple-dates-separator="    ~    "
	                   todayButton="true" class="datepicker-here"
	                     placeholder="  체크인       ㅡ       체크아웃" />
         	</div>
         <button id="searchBt"><span class="glyphicon glyphicon-search" aria-hidden="true" id="searchicon"></span></button>
      </div>
      </form>
   </div>
   
   
   <div class="jumbotron" id="wrapper">

      <div id="homeTitle">
         <div id="homeTitleD">
            <p>마음에 드는 숙소를 빌려보세요 !</p>
         </div>
         <div id="homeTitleD2">
            <p>퀄리티와 편안함이 검증된 새로운 숙소 컬렉션</p>
         </div>
         <div id="homeTitlePic">
            <button class="btn btn-secondary" id="homeButton">숙소 둘러보기</button>
            <img src="<c:url value='/resources/img/index/homeTitle5.jpg'/>">
         </div>
      </div>

      <div id="homeContents">
         <div class="row">
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle2.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle3.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle4.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>


         </div>
         <div class="row">
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle5.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle6.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
                  </p>
                  <p class="homePrice">\88,732 /박</p>
                  <p class="reviewStar">★★★★★</p>
                  <p class="reviewCount">247</p>
                  <p class="hostTitle">슈퍼호스트</p>
               </div>
            </div>
            <div class="col-md-3">
               <div id="homePic">
                  <a href=""><img
                     src="<c:url value='/resources/img/index/homeTitle2.jpg'/>"></a>
                  <p class="homeType">집 전체·레체</p>
                  <p class="homeName">
                     <B>In the historical center of Leccee</B>
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
 </div>
   <%@ include file="../resource/include/footer.jsp"%>
</body>
</html>