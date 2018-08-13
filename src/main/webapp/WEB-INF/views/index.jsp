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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link href="<c:url value="/resources/css/main/main.css" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet" />
<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js"/>"></script>
<script>
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
#typeTitle {
	font-family : font;
	font-size: 1.2em;
	margin-top : 4px;
	margin-bottom : 0;
	color : white;
}

#peopleTitle {
	font-size : 2em;
	margin-top : 32px;
	color: #5c5d5e;
}

/* Style The Dropdown Button */
.dropbtn {
	font-family : font;
    background-color: white;
    color: #5c5d5e;
    font-size: 2em;
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
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    font-family: dx;
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

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: white;
}

#searchBt {
	background-color: #ff5a5f;
	color : white;
	font-size : 2em;
	padding-top: 30px;
}

#searchBt:hover {
	background-color: #fc7e82;
}
</style>
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
      <div id="searchBar">
         <div id="type">
         	<div class="dropdown">
         	  <p id="typeTitle">숙소유형</p>
			  <button class="dropbtn" id="typeDropBtn">
			  	<span class="glyphicon glyphicon-home" aria-hidden="true"></span>&ensp;숙소유형
			  </button>
			  <div class="dropdown-content">
			    <a class="typeName" href="#">집 전체</a>
			    <a class="typeName" href="#">다인실</a>
			    <a class="typeName" href="#">개인실</a>
			  </div>
			</div>
         </div>
         <div id="people">
         	<p id="peopleTitle">
         	<span class="glyphicon glyphicon-user" aria-hidden="true"></span>&ensp;인원 수</p>
         </div>
         <div id="calendar">날짜</div>
         <div id="searchBt">search !</div>
      </div>
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
   <%@ include file="../resource/include/footer.jsp"%>
</body>
</html>