<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
 	#myModal{
 	right:10px;
	text-align:center;
	z-index: 12000;
	
	}
	#myModal1{
 	right:10px;
	text-align:center;
	z-index: 12000;
	
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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>


<script>

/* facebook */
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

/* kakao */
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

/* google */
function loginWithGoogle(){
		
		/* location.href ='${google_url}'; */
		/* var google_url = '${google_url}'
		location.href = google_url; */
		var popupX =(window.screen.width/2) - (500 / 2);
		var popupY= (window.screen.height/2) - (500 / 2);
		
		
		window.open('${google_url}', '', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		

		
	}
	
/* Email */
function loginWithEmail(){
		
	
	var popupX =(window.screen.width/2) - (500 / 2);
	var popupY= (window.screen.height/2) - (500 / 2);
	$("#myModal").modal('hide');
	window.open("controllerEmail.do", '', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	
	}
	

</script>

	<!-- 재호 -->
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
      
      <button type="button" class="btn btn-danger" onclick="loginWithEmail()" id="email">
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

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        
      </div>
      
      <div class="modal-body">
      <button type="button" class="btn btn-primary" onclick="FB.login();" id="facebook">
      	<i class="fab fa-facebook-f fa-2x" style="color:white"></i>  
      	<font> 페이스북 계정으로 로그인</font>
      </button><br>
      
      <button type="button" class="btn btn-warning" onclick="loginWithKakao();" id="kakao">
      	<i class="fas fa-comments fa-2x" style="color:black"></i>
      	<font> 카카오 계정으로 로그인</font>
      </button><br>
  
      <button type="button" class="btn btn-default" onclick="loginWithGoogle();" id="google">
      	<i class="fab fa-google fa-2x" style="color:red"></i>
      	<font> 구글 계정으로 로그인</font>
      </button><br>
      <span class="_1xktqfm"><span class="_1cd6lfn9"><span>또는</span></span></span><br>
      <!-- <div id="status"></div> -->
      
     <form action="login.do" method="post">
  		<div class="form-group">   	
    	<input name="member_email" type="email" class="form-control" id="loginEmail" placeholder="이메일을 입력하세요">
 	 	</div>
 	    <div class="form-group"> 	 
   		<input name="member_pw" type="password" class="form-control" id="loginPw" placeholder="암호">
 	    </div>
 
  		<button type="submit" class="btn btn-danger">로그인</button>
	 </form>
      	
      </div>
      <div class="modal-footer">
      <!--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
       <font>계정이 없으신가요?</font><a href="#"><font>회원가입</font></a>
       
      </div>
    </div>
  </div>
</div>

