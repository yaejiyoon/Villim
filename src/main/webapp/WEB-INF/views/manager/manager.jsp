<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인 페이지</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<style>
#bg {
	position: fixed;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%;
}

#bg img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
}
#logo{
	position: absolute;
	z-index: 10;
	margin-left:25%;
	margin-top:6%;
	
}
#logo img{
	width:250%;

}
#adminLogin{
 	position: absolute;
	z-index: 10;
	border:2px solid white;
	margin-left:22%;
	margin-top:15%;
	width:25%;
	color:white;
	height:50vh;	
}
#loginH3{
	margin-left:10%;
}
#adminemail{
	width:80%;
	margin-left:10%;
	padding-top:4%;
	padding-bottom:4%;

}
#password{
	width:80%;
	margin-left:10%;
	padding-top:4%;
	padding-bottom:4%;
}
#adminLogin label{
	margin-left:10%;
}
#login{
	margin-left:44%;

}
#remember{
	width:12%;
	height:2vh;
	margin-top:0px;
}

/* 모달 스타일*/

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
</style>
<script>
	$(document).ready(function(){
		$("#adminSignup").click(function(){
			$("#adminSignupModal").modal('show');
		})
		
		$("#adminSignup1").click(function(){
			
			
		})
	})

</script>
</head>
<body>

	<div id="bg">
		<img src="./resources/images/17.jpg" alt="">
	</div>
	
	<div id="logo">
	<img alt="" src="../resources/img/logo2.png">
	</div>
	<div id="adminLogin">
		
		<h3 id="loginH3">관리자 계정 로그인</h3><br>
		<form>
			<div class="form-group">
				<label for="exampleInputEmail1">이메일 주소</label> <input type="text"
					class="form-control" id="adminemail"
					placeholder="이메일을 입력하세요">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">암호</label> <input type="password"
					class="form-control" id="password" placeholder="암호">
			</div>
			
			<div class="checkbox" style="display: inline;">
				<label> <input type="checkbox"  id="remember"> 계정이름 저장
				</label>
			</div>
			<button type="submit" class="btn btn-default" id="login">로그인</button>
			<button type="button" class="btn btn-default" id="adminSignup">회원가입</button>
		</form>

	</div>
<!-- 모달 -->

<div class="modal fade" id="adminSignupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none; margin:0px auto;">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header" id="mheader">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
      </div>
      
      <div class="modal-body">
  		<form id="adminSignupForm">
  		<div class="form-group">
    	<input type="text" class="form-control" id="adminNumber" placeholder="사원번호를 입력하세요">
  		</div>
  		<div class="form-group">
   		
   		<input type="password" class="form-control" id="adminPassword" placeholder="비밀번호를 입력하세요">
  		</div>
  		</form>
		<button type="button" class="btn btn-danger" id="adminSignup1">
      	<i class="far fa-envelope fa-2x" style="color:white"></i>
      	<font>회원가입</font>
        </button><br>


      </div>
      <div class="modal-footer" id="mfooter">
      <!--   <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
       <font>Villim의 회원이신가요?</font> <a href="#" id="moveLogin"><font>로그인</font></a>
       
      </div>
    </div>
  </div>
</div>
</body>
</html>