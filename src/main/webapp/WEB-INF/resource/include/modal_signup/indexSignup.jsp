<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> 
<style>
 	#myModal{
 	right:10px;
	text-align:center;
	z-index: 12000;
	height:100vh;
	
	}
	.modal-header{
		border:0px;
	}
	.modal-body{
	
	height:500px;
		
	}
	.modal-body font{
		padding-left:2%;
	}
	.modal-body i{
		padding-right:2%;
	}
	#myModal1{
 	right:10px;
	text-align:center;
	z-index: 12000;
	
	}
	#facebook{
		width:90%;
		padding:3%;
		margin-top:7%;
		margin-bottom: 5%;
	}
	#kakao{
		width:90%;
		padding:3%;
		margin-top:1%;
		margin-bottom: 5%;
	}
	#google{
		width:90%;
		padding:3%;
		margin-top:1%;
		margin-bottom: 5%;
	}
	#email{
		width:90%;
		padding:3%;
		margin-top:2%;
		margin-bottom: 5%;
	}


</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<script>
	$(document).ready(function(){
		

		$("#facebook").click(function(){
			
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
			     if (response.status === 'connected') {
			            //user is authorized
			            //document.getElementById('loginBtn').style.display = 'none';
			    	 console.log('Welcome!  Fetching your information.... 1');
			        } else {
			            //user is not authorized
			        	console.log('Welcome!  ');
			        }

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
		   FB.login(function(response){ 
		  console.log('Welcome!  Fetching your information.... ');
		  FB.api('/me',  {fields: 'email,name,picture'},function(response) {
		    console.log('Successful login for: ' + response.name +":" + response.email);
		    alert(JSON.stringify(response));
		   
		    $("#fbEmailBtn").val(response.email);
		    $("#fbNameBtn").val(response.name);
    		$("#fbIdBtn").val(response.id);
    		$("#fbImgBtn").val(response.picture.data.url);
		    var member_email = $("#fbEmailBtn").val();
		    
		    
		    var popupX =(window.screen.width/2) - (500 / 2);
	    	 var popupY= (window.screen.height/2) - (500 / 2);
			 var fbchild = window.open('fbInfo.do?member_email='+member_email, 'fbview', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
		  	  var fbform = document.fbForm;
		 
/*         		fbform.action = "fbInfo.do";
        		fbform.target = "fbview";
        		fbform.method = "post";
        		fbform.submit(); */
        		$("#myModal").modal('hide'); 
        	  	
        		
        		fbchild.onload = function(){ 
        			
        		alert('${sessionScope.login_email}');
        		/* 	fbchild.close(); */
       		 	/*  $(location).attr("href","/"); */ 
        			
        		
       	 		}; 
        		
        		
		  
		  });
		  }, {scope:'public_profile, email'}); 
		 
		} 
		});
		
		$("#facebookLogin").click(function(e){
			e.preventDefault();
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
			     if (response.status === 'connected') {
			            //user is authorized
			            //document.getElementById('loginBtn').style.display = 'none';
			    	 console.log('Welcome!  Fetching your information.... 1');
			        } else {
			            //user is not authorized
			        	console.log('Welcome!  ');
			        }

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
		   FB.login(function(response){ 
		  console.log('Welcome!  Fetching your information.... ');
		  FB.api('/me',  {fields: 'email,name,picture'},function(response) {
		    console.log('Successful login for: ' + response.name +":" + response.email);
		    alert(JSON.stringify(response));
		    var popupX =(window.screen.width/2) - (500 / 2);
	    	 var popupY= (window.screen.height/2) - (500 / 2);
			 
	    
			$("#loginFbEmail").val(response.email);
	        $("#loginFbId").val(response.id);
			$('#fbLoginForm').submit();
			
		  
		  });
		  }, {scope:'public_profile, email'}); 
		 
		}; 
		});
	})

</script>

</head>


<script>


/* kakao */
//<![CDATA[
// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('1eb250eb8bf7adbda4d75c43029ba939');
function signupWithKakao() {
  // 로그인 창을 띄웁니다.
  Kakao.Auth.login({
	  
    success: function(authObj) {
    	 Kakao.API.request({
             url: '/v1/user/me',
             success: function(res) {
               alert(JSON.stringify(res));
                 alert(res.kaccount_email);
                 alert(res.id);
                 alert(res.properties.nickname);
                 alert(res.properties.profile_image);
                 
                 
                var popupX =(window.screen.width/2) - (500 / 2);
         		var popupY= (window.screen.height/2) - (500 / 2);
         		
         		$("#kakaoEmailBtn").val(res.kaccount_email);
         		$("#kakaoNicknameBtn").val(res.properties.nickname);
         		$("#kakaoIdBtn").val(res.id);
         		$("#kakaoImgBtn").val(res.properties.profile_image);
     		    var member_email = $("#kakaoEmailBtn").val();
         		
         		var kakaoform = document.kakaoForm;
         		alert($("#kakaoEmailBtn").val(res.kaccount_email));
         		var kakaochild = window.open('kakaoInfo.do?member_email='+member_email, 'kakaoview', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
        		
         		$("#myModal").modal('hide'); 
/*          		kakaochild.onload = function(){ 
         			kakaochild.close();
          			 $(location).attr("href","/");
          		}   */
                 
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

function loginWithKakao() {
	  // 로그인 창을 띄웁니다.
	  Kakao.Auth.login({
		  
	    success: function(authObj) {
	    	 Kakao.API.request({
	             url: '/v1/user/me',
	             success: function(res) {
	               alert(JSON.stringify(res));
	                 alert(res.kaccount_email);
	                 alert(res.id);
	                 alert(res.properties.nickname);
	                 alert(res.properties.profile_image);
	                 
	                 
	                var popupX =(window.screen.width/2) - (500 / 2);
	         		var popupY= (window.screen.height/2) - (500 / 2);
	         		
	         		$("#loginkakaoEmail").val(res.kaccount_email);
	         		$("#loginkakaoId").val(res.id);
	         		
	         		$('#kakaoLoginForm').submit();
	         		
	         		
	         		
	                 
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

/* google */
function signupWithGoogle(){
		var google_url = '${sessionScope.googleUrl}';
		/* location.href ='${google_url}'; */
		/* var google_url = '${google_url}'
		location.href = google_url; */
		var popupX =(window.screen.width/2) - (500 / 2);
		var popupY= (window.screen.height/2) - (500 / 2);
		
		
		
	 	
		var googlechild = window.open(google_url, '', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
	
	 	
	 	$("#myModal").modal('hide'); 
		/* child.close(); */
 		
/* 		child.onload = function(){ 
			 child.close();
			 $(location).attr("href","/");
		}   */
		
		/* alert(login);
		if(login == "login"){  */
			
		/* http://jobdahan.net/scriptstudy/1498310 */
			
		
		
	}
		
/* google */
function loginWithGoogle(){
		var google_url = '${sessionScope.googleUrl}';
		
		var popupX =(window.screen.width/2) - (500 / 2);
		var popupY= (window.screen.height/2) - (500 / 2);
		var child = window.open(google_url, '', 'status=no, height=500, width=500, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);

		$("#myModal").modal('hide'); 
	
		
 		child.onload = function(){ 
			 child.close();
			 $(location).attr("href","/");
		}  
 		 
 			/* opener.location("/"); */
 			
 /* 			$(location).attr("href","/"); */
		 
		 
		
	/* 	setEventHandler(child, 'load', function() { */
			/* child.close(); */
			/* $(location).attr("href","/"); */
		/* 	opener.location("/"); */
		/* }); */
		
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
      <button type="button" class="btn btn-primary" id="facebook">
      	<i class="fab fa-facebook-f fa-2x" style="color:white"></i>  
      	<font> 페이스북 계정으로 회원가입</font>
      </button><br>
      <!-- <form action="" method="post" id="fbForm" name="fbForm"> -->
      <input type="hidden" id=fbEmailBtn name="member_email">
      <input type="hidden" id=fbNameBtn name="member_name">
      <input type="hidden" id=fbImgBtn name="member_picture">
      <input type="hidden" id=fbIdBtn name="member_pw">
      <!-- </form> -->
      
      <button type="button" class="btn btn-warning" onclick="signupWithKakao();" id="kakao">
      	<i class="fas fa-comments fa-2x" style="color:black"></i>
      	<font> 카카오 계정으로 회원가입</font>
      </button><br>
      
      <form action="" method="post" id="kakaoForm" name="kakaoForm">
      <input type="hidden" id=kakaoEmailBtn name="member_email">
      <input type="hidden" id=kakaoNicknameBtn name="member_name">
      <input type="hidden" id=kakaoImgBtn name="member_picture">
      <input type="hidden" id=kakaoIdBtn name="member_pw">
      </form>
  
      <button type="button" class="btn btn-default" onclick="signupWithGoogle();" id="google">
      	<i class="fab fa-google fa-2x" style="color:red"></i>
      	<font> 구글 계정으로 회원가입</font>
      </button><br>
      <input type="hidden" id="googleSignup" value="signup">
    
      
      
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
      
      <form action="snslogin.do" method="post" id="fbLoginForm">
      <input type="hidden" id="loginFbEmail" name="member_email">
      <input type="hidden" id="loginFbId" name="member_pw">
     </form>
     <button type="button" class="btn btn-primary" id="facebookLogin">
      	<i class="fab fa-facebook-f fa-2x" style="color:white"></i>  
      	<font> 페이스북 계정으로 로그인</font>
     </button><br>
      
      <form action="snslogin.do" method="post" id="kakaoLoginForm">
      <input type="hidden" id="loginkakaoEmail" name="member_email">
      <input type="hidden" id="loginkakaoId" name="member_pw">
     </form>
      <button type="button" class="btn btn-warning" onclick="loginWithKakao();" id="kakaoLogin">
      	<i class="fas fa-comments fa-2x" style="color:black"></i>
      	<font>카카오 계정으로 로그인</font>
      </button><br>
 	 
 	 
 	 <form action="snslogin.do" method="post" id="googleLoginForm">
      <input type="hidden" id="logingoogleEmail" name="member_email">
      <input type="hidden" id="logingoogleId" name="member_pw">
     </form>
     <form action="oauth2callback" method="post" id="loginCheck">
     <input type="hidden" id="iamlogin" name="iamlogin" value="login">
     </form>
      <button type="button" class="btn btn-default" onclick="loginWithGoogle();" id="googleLogin">
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

