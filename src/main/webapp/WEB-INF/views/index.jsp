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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- 재호 (15 line ~ 275 line)-->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet"/>
<link href="<c:url value="/resources/css/main/main.css" />" rel="stylesheet" />
<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js"/>"></script>
<script>
	$(document).ready(function() {
		$("#homeButton").click(function(){
			$(location).attr("href","homeMain.do")
		})
	})
</script>
<style>
	@font-face {
  		font-family: font;
		src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');  
	}
	
 	#searchBar { 
 		margin-top : 230px;
 		width : 60%; 
 		height : 150px; 
 		display: inline-block;
 		background-color: white;
 		display : inline-block;
		position: relative; 
		z-index : 10000; 
 	} 
 	
 	#type {
 		width: 25%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#people {
 		width: 25%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#calendar {
 		width: 35%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#searchBt {
 		width: 15%;
 		height : 100%;
 		border : 1px dotted pink;
 		float:left;
 	}
 	
 	#footer {
		position:relative;
		z-index: 10000;
		background-color: white;
	}
	
	#wrapper {
		background-color: pink;
		position:relative;
		z-index:10000;
	}
	
	#myModal{
	text-align:center;
	z-index: 11000;
	}
	#facebook{
		width:80%;	
	}
	#kakao{
		width:80%;	
	}
	#google{
		width:80%;
	}
	#email{
		width:80%;
	}
 	
</style>
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
			<div id="type">숙박유형</div>
			<div id="people">인원수</div>
			<div id="calendar">날짜</div>
			<div id="searchBt">버튼</div>
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
				<img src="<c:url value='/resources/img/homeTitle5.jpg'/>">
			</div>
		</div>

		<div id="homeContents">
			<div class="row">
				<div class="col-md-3">
					<div id="homePic">
						<a href=""><img
							src="<c:url value='/resources/img/homeTitle.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle2.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle3.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle4.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle5.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle6.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle.jpg'/>"></a>
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
							src="<c:url value='/resources/img/homeTitle2.jpg'/>"></a>
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
	<ul class="cb-slideshow">
            <li><span>Image 01</span><div><h3>re·lax·a·tion</h3></div></li>
            <li><span>Image 02</span><div><h3>qui·e·tude</h3></div></li>
            <li><span>Image 03</span><div><h3>bal·ance</h3></div></li>
            <li><span>Image 04</span><div><h3>e·qua·nim·i·ty</h3></div></li>
            <li><span>Image 05</span><div><h3>com·po·sure</h3></div></li>
            <li><span>Image 06</span><div><h3>se·ren·i·ty</h3></div></li>
    </ul>
</div>
<div class="jumbotron" id="wrapper">
</div>

<!-- 재호 -->
<script> /* facebook */
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);

    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else {
      // The person is not logged into your app or we are unable to tell.
      document.getElementById('status').innerHTML = 'Please log ' +
        'into this app.';
    }
  }

  function checkLoginState() {
    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });
  }

  window.fbAsyncInit = function() {
    FB.init({
      appId      : '211147649564685',
      cookie     : true,  // enable cookies to allow the server to access 
                          // the session
      xfbml      : true,  // parse social plugins on this page
      version    : 'v2.8' // use graph api version 2.8
    });



    FB.getLoginStatus(function(response) {
      statusChangeCallback(response);
    });

  };


  (function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "https://connect.facebook.net/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));

  // Here we run a very simple test of the Graph API after login is
  // successful.  See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me',  {fields: 'email,name'},function(response) {
      console.log('Successful login for: ' + response.name +":" + response.email);
      document.getElementById('status').innerHTML =
        'Thanks for logging in, ' + response.name + ':' + response.email;
    });
  }
</script>

<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('1eb250eb8bf7adbda4d75c43029ba939');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
    	  
        success: function(authObj) {
        	 Kakao.API.request({
                 url: '/v1/user/me',
                 success: function(res) {
                   alert(JSON.stringify(res));
                     alert(res.kaccount_email);
                 },
                 fail: function(error) {
                   alert(JSON.stringify(error));
                 }
               });
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };
  //]]>
</script>

<script>
	function loginWithGoogle(){
		
		/* location.href ='${google_url}'; */
		/* var google_url = '${google_url}'
		location.href = google_url; */
		var popupX = (window.screen.width/2) - (500 / 2);
		var popupY= (window.screen.height/2) - (500 / 2);
		
		
		window.open('${google_url}', '', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		

		
	}

</script>

<ul class="nav nav-pills">
  <li role="presentation"><a data-toggle="modal" href="#myModal">회원가입</a></li>
</ul>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        
      </div>
      
      <div class="modal-body">
      <button type="button" class="btn btn-primary" onclick="FB.login();" id="facebook">
      	<i class="fab fa-facebook-f fa-2x" style="color:white"></i>  
      	<font> 페이스북 계정으로 회원가입</font>
      </button><br>
      
      <button type="button" class="btn btn-warning" onclick="loginWithKakao();" id="kakao">
      	<i class="fas fa-comments fa-2x" style="color:black"></i>
      	<font> 카카오 계정으로 회원가입</font>
      </button><br>
  
      <button type="button" class="btn btn-default" onclick="loginWithGoogle();" id="google">
      	<i class="fab fa-google fa-2x" style="color:red"></i>
      	<font> 구글 계정으로 회원가입</font>
      </button><br>
      <span class="_1xktqfm"><span class="_1cd6lfn9"><span>또는</span></span></span><br>
      <!-- <div id="status"></div> -->
      
      <button type="button" class="btn btn-danger" onclick="" id="email">
      	<i class="" style="color:red"></i>
      	<font> 이메일로 회원가입</font>
      </button><br>
      <!-- <button type="button" class="btn btn-primary" onclick="FB.logout();">logout</button> -->
      	
      </div>
      <div class="modal-footer">
      <!--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
       <font>이미 계정이 있나요?</font><a href="#"><font>로그인</font></a>
       
      </div>
    </div>
  </div>
</div>

<%@ include file="../resource/include/footer.jsp" %>
</body>
</html>