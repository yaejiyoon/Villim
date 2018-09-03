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
	box-sizing: border-box;
	

	}
	#mheader{
		border-bottom-width:0px;
		
	}
	#mfooter{
		border-top-width: 0px;
	}
	.modal-body{
	
	height:500px;
		
	}
	.modal-body font{
		padding-left:2%;
		font-size: large;
		font-weight: bold;
	}
	.modal-body i{
		
	}
	#myModal1{
 	right:10px;
	text-align:center;
	z-index: 12000 !important;
	}
	#facebook{
		width:90%;
		padding:3%;
		margin-top:7%;
		margin-bottom: 5%;
		

	}
	
	#facebook:hover{
		

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
	#toindex{
		margin-top: 5%;
	}
	#underline{
		width:550px;
		height:50px;
	}
	
	/* 로그인 */
	#myModal1 .modal-body{
		height:80vh;
	} 
	#mheader1{
		border-bottom-width:0px;
	}
	#tologin{
	margin-top: 5%;
	}
	#mfooter1{
		border-top-width:1px;
	}
	#mfooter1 h4{
		display:inline;
		margin-right:25%;
	}

	#facebookLogin{
		width:90%;
		padding:3%;
		margin-top:7%;
		margin-bottom: 5%;
	
	}
	#kakaoLogin{
	
		width:90%;
		padding:3%;
		margin-top:1%;
		margin-bottom: 5%;
	}
	#googleLogin{
		width:90%;
		padding:3%;
		margin-top:1%;
		margin-bottom: 5%;
	
	}
	#loginEmail{
		width:90%;
		padding-bottom:5%;
		padding-top:5%;
		margin-top:2%;
		margin-bottom: 5%;
		margin-left:5%;
	
	}
	#loginPw{
		width:90%;
		padding-bottom:5%;
		padding-top:5%;
		margin-top:2%;
		margin-bottom: 1%;
		margin-left:5%;
	}
	#findPw{
		margin-left:50%;
	}
	#loginBt{
	width:90%;
	margin-top: 6%;
	padding-bottom:3%;
	padding-top:3%;
	
	}
	#loginEmailIcon{
	position:absolute;
	left:86%;
	top:61%;
	color:silver;
	}
	#loginPwIcon{
	position:absolute;
	left:86%;
	top:74%;
	color:gold;
	}
	
	/* 비번찾기 모달 */
	#findModal{
	
	text-align:center;
	
	z-index: 12000;
	
	box-sizing: border-box;
	}
	#findModal .modal-body{
		height:50vh;
		
		
	}
	
	#findModal h2{
		margin-top:8%;
		margin-bottom:8%;
	}
	#findModal h4{
		
	
	}
	#findModal input{
		margin-top:5%;
		margin-left:11%;
		margin-bottom:5%;
		width:78%;
	}
	#findModal #returnLogin{
		
		width:50%;
		margin-bottom:3%;
		padding-top:2%;
		padding-bottom:2%;
		
	}
	#findModal #sendLink{
		
		width:50%;
		padding-top:2%;
		padding-bottom:2%;
		
	}
	
	#findModalItag{
		position: absolute;
		margin-left:32%;
		margin-top:3.3%;
	}
	
	#findMHeader{
		border-bottom-width:0px;
	
	}
	#findMFooter{
		border-top-width:0px;
	}
	

</style>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">

	
<script>
	$(document).ready(function(){
		

		$("#facebook").click(function(){
			
			/* facebook */
			 function statusChangeCallback(response) {
				alert("statusChangeCallback");
			  console.log('statusChangeCallback');
			  console.log(response);

			  if (response.status === 'connected') {
			    // Logged into your app and Facebook.
			    alert("statusChangeCallback 내부");
			    testAPI();
			  } else {
				  alert("statusChangeCallback 내부2");
			    // The person is not logged into your app or we are unable to tell.
			    document.getElementById('status').innerHTML = 'Please log ' +
			      'into this app.';
			    testAPI();
			  }
			} 

			 function checkLoginState() {
				 alert("checkLoginState");
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
				  alert("getLoginStatus");
				  alert(response);
				  alert(response.status);
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
    		$("#facebookSignup").val("signup");
		    var member_email = $("#fbEmailBtn").val();
		    
		    
			//새창의 크기
     		var cw=500;
     		var ch=550;

     		//스크린의 크기
     		var sw=screen.availWidth;
     		var sh=screen.availHeight;

     		//열 창의 포지션
     		var px=(sw-cw)/2;
     		var py=(sh-ch)/2;
     		
			 var fbchild = window.open('fbInfo.do?member_email='+member_email, 'fbview', 'status=no, height=500, width=450, left='+ px + ', top='+ py + ', width='+ cw + ', height= '+ ch,',resizable=no');
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
			    testAPI();
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
			//새창의 크기
     		var cw=500;
     		var ch=550;

     		//스크린의 크기
     		var sw=screen.availWidth;
     		var sh=screen.availHeight;

     		//열 창의 포지션
     		var px=(sw-cw)/2;
     		var py=(sh-ch)/2;
			 
     		
			$("#loginFbEmail").val(response.email);
	        $("#loginFbId").val(response.id);
			$('#fbLoginForm').submit();
			
		  
		  });
		  }, {scope:'public_profile, email'}); 
		 
		}; 
		});
		$("#moveSignup").click(function(){
			$("#myModal1").modal('hide');
			$("#myModal").modal('show');
		})
		$("#moveLogin").click(function(){
			$("#myModal").modal('hide');
			$("#myModal1").modal('show');
			
		})
		$("#findPw").click(function(){
			
			$("#myModal1").modal('hide');
			$("#findModal").modal('show');
		})
		$("#returnLogin").click(function(){
			$("#findModal").modal('hide');
			$("#myModal1").modal('show');
		})
		$("#sendLink").click(function(){
			
			var mail = $("#loginEmail2").val();
			$.ajax({
				url : "find.do",
				type : "post",
				data : {

					mail : mail
					
				}, 
				success : function(response) {

					alert(response);
				

				},
				error : function() {
					console.log("에러 발생!");
				}
			});
		})
		
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
                 
                 
             	//새창의 크기
         		var cw=500;
         		var ch=550;

         		//스크린의 크기
         		var sw=screen.availWidth;
         		var sh=screen.availHeight;

         		//열 창의 포지션
         		var px=(sw-cw)/2;
         		var py=(sh-ch)/2;
         		
         		$("#kakaoEmailBtn").val(res.kaccount_email);
         		$("#kakaoNicknameBtn").val(res.properties.nickname);
         		$("#kakaoIdBtn").val(res.id);
         		$("#kakaoImgBtn").val(res.properties.profile_image);
         		$("#kakaoSignup").val("signup");
     		    var member_email = $("#kakaoEmailBtn").val();
         		
         		var kakaoform = document.kakaoForm;
         		alert($("#kakaoEmailBtn").val(res.kaccount_email));
         		var kakaochild = window.open('kakaoInfo.do?member_email='+member_email, 'kakaoview', 'status=no, height=500, width=450, left='+ px + ', top='+ py + ', width='+ cw + ', height= '+ ch,',resizable=no');
        		
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
	                 
	                 
	             	//새창의 크기
	         		var cw=500;
	         		var ch=550;

	         		//스크린의 크기
	         		var sw=screen.availWidth;
	         		var sh=screen.availHeight;

	         		//열 창의 포지션
	         		var px=(sw-cw)/2;
	         		var py=(sh-ch)/2;
	         		
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

		//새창의 크기
		var cw=500;
		var ch=550;

		//스크린의 크기
		var sw=screen.availWidth;
		var sh=screen.availHeight;

		//열 창의 포지션
		var px=(sw-cw)/2;
		var py=(sh-ch)/2;
		
		$("#myModal").modal('hide');
		$("#googleSignup").val("signup");
		window.open(google_url, '', 'status=no, height=500, width=450, left='+ px + ', top='+ py + ', width='+ cw + ', height= '+ ch,',resizable=no');
		
	}
		
/* google */
function loginWithGoogle(){
		var google_url = '${sessionScope.googleUrl}';
		
		//새창의 크기
		var cw=500;
		var ch=550;

		//스크린의 크기
		var sw=screen.availWidth;
		var sh=screen.availHeight;

		//열 창의 포지션
		var px=(sw-cw)/2;
		var py=(sh-ch)/2;
		
		$("#myModal").modal('hide');
		window.open(google_url, '', 'status=no, height=500, width=450, left='+ px + ', top='+ py + ', width='+ cw + ', height= '+ ch,',resizable=no');
		
	}

/* Email */
function loginWithEmail(){
		
	//새창의 크기
	var cw=500;
	var ch=550;

	//스크린의 크기
	var sw=screen.availWidth;
	var sh=screen.availHeight;

	//열 창의 포지션
	var px=(sw-cw)/2;
	var py=(sh-ch)/2;
	
	$("#myModal").modal('hide');
	window.open("controllerEmail.do", '', 'status=no, height=500, width=450, left='+ px + ', top='+ py + ', width='+ cw + ', height= '+ ch,',resizable=no');
	
	
	}
	

</script>
	<!-- 재호 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none; margin:0px auto;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" id="mheader">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
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
      <input type="hidden" id=facebookSignup value="">
      
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
      <input type="hidden" id="kakaoSignup" value="">
      </form>
  
      <button type="button" class="btn btn-default" onclick="signupWithGoogle();" id="google">
      	<i class="fab fa-google fa-2x" style="color:red"></i>
      	<font> 구글 계정으로 회원가입</font>
      </button><br>
      <input type="hidden" id="googleSignup" value="">
    
      
      <img src="<c:url value='/resources/img/signup/underline5.png'/>" id="underline">
      
      <!-- <div id="status"></div> -->
      
      <button type="button" class="btn btn-danger" onclick="loginWithEmail()" id="email">
      	<i class="far fa-envelope fa-2x" style="color:white"></i>
      	<font> 이메일로 회원가입</font>
      </button><br>
      <!-- <button type="button" class="btn btn-primary" onclick="FB.logout();">logout</button> -->
      	
      </div>
      <div class="modal-footer" id="mfooter">
      <!--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
       <font>Villim의 회원이신가요?</font> <a href="#" id="moveLogin"><font>로그인</font></a>
       
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none" >
  <div class="modal-dialog" id="jaehoModal" >
    <div class="modal-content">
      <div class="modal-header" id="mheader1">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <img src="<c:url value='/resources/img/logo2.png'/>" id="tologin">
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
 	 
 	 
<!--  	 <form action="snslogin.do" method="post" id="googleLoginForm">
      <input type="hidden" id="logingoogleEmail" name="member_email">
      <input type="hidden" id="logingoogleId" name="member_pw">
     </form>
     <form action="oauth2callback" method="post" id="loginCheck">
     <input type="hidden" id="iamlogin" name="iamlogin" value="login">
     </form> -->
      <button type="button" class="btn btn-default" onclick="loginWithGoogle();" id="googleLogin">
      	<i class="fab fa-google fa-2x" style="color:red"></i>
      	<font> 구글 계정으로 로그인</font>
      </button><br>
      <input type="hidden" id="googleSignup" value="">
      <img src="<c:url value='/resources/img/signup/underline5.png'/>" id="underline">
    
      
     <form action="login.do" method="post">
  			
    	<input name="member_email" type="email" class="form-control" id="loginEmail" placeholder="이메일을 입력하세요"><i class="fas fa-envelope fa-2x" id="loginEmailIcon"></i>
 	 	
 	    
   		<input name="member_pw" type="password" class="form-control" id="loginPw" placeholder="암호"><i class="fas fa-key fa-2x" id="loginPwIcon"></i>
 	    
 	    <strong><a href="#" id="findPw">비밀번호가 생각나지 않으세요?</a></strong>
 
  		<button type="submit" class="btn btn-danger" id="loginBt">로그인</button>
	 </form>
      	
      </div>
      <div class="modal-footer" id="mfooter1">
     	<div>
       <h4>Villim 계정이 없으신가요?<strong><a href="#" id="moveSignup"><font>회원가입</font></a></strong></h4>
       </div>
      </div>
    </div>
  </div>
</div>

 <div class="modal fade" id="findModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" id="findMHeader"> 
      </div>
      <div class="modal-body">
       <img src="<c:url value='/resources/img/logo2.png'/>">
      <h2><strong>비밀번호 재설정</strong></h2>
  
      <h4>계정으로 사용하는 이메일 주소를 입력하시면</h4>
      <h4>비밀번호 재설정 링크를 전송해 드립니다.</h4>
    
      
      <i class="far fa-envelope fa-2x" style="color:black" id="findModalItag"></i>
      <input name="resetEmail" type="email" class="form-control" id="loginEmail2" placeholder="이메일을 입력하세요">

     <button class="btn btn-success" id="returnLogin">로그인으로 돌아가기</button><br>
     <button class="btn btn-danger" id="sendLink">재설정 링크 전송하기</button>
    
      <div class="modal-footer" id="findMFooter">

      </div>
    </div>
  </div>
</div>
</div>

