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
	margin-left:23%;
	margin-top:6%;
	
}
#logo img{
	width:70%;

}
#adminLogin{
 	position: absolute;
	z-index: 10;
	border:5px solid #545891;
	margin-left:22%;
	margin-top:15%;
	width:25%;
	color:white;
	height:50vh;	
	
	
}
#loginH3{
	margin-left:10%;
}
#adminNumber1{
	width:80%;
	margin-left:10%;
	padding-top:4%;
	padding-bottom:4%;

}
#adminPassword1{
	width:80%;
	margin-left:10%;
	padding-top:4%;
	padding-bottom:4%;
}
#adminLoginBtn{

	
}
#adminLogin label{
	margin-left:10%;
}
#loginBtns{
	margin-left:10%;
	margin-top:5%;
	
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
		width:20%;
		margin-left:40%;
		
	}
	#underline{
		width:380px;
		height:50px;
	}
</style>
<script>
	$(document).ready(function(){
		$("#adminSignup").click(function(){
			$("#adminSignupModal").modal('show');
			
		})
		
		$("#adminSignup1").click(function(){
			alert("asdasd");
			var adminNumber = $("#adminNumber").val();
			var adminPassword = $("#adminPassword").val();
			$.ajax({
				
				url:"managerNumCheck.admin",
				type : "post",
				data : {
					adminNumber : adminNumber,
					adminPassword : adminPassword
				},
						
				success : function(response) {
					
					if(response == 'success'){
						alert(response);
					}else if(response == 'fail'){
						alert(response);
					}else{
						alert(response);
						$('.collapse').collapse('show');
						$("#adminNumber").val("");
						$("#adminPassword").val("");
						$("#adminNumber").click(function(){
							$('.collapse').collapse('hide');
						})
					}
					}
				})
			
		})
	})

</script>
</head>
<body>

	<div id="bg">
		<img src="./resources/images/17.jpg" alt="">
	</div>
	
	<div id="logo">
	<img alt="" src="../resources/img/logo3.png">
	</div>
	<div id="adminLogin">
		
		<h3 id="loginH3"><strong>관리자 계정 로그인</strong></h3><br>
		<form action="ismanager.admin" method="post">
			<div class="form-group">
			<input type="text" class="form-control" id="adminNumber1" name="adminNumber1" placeholder="사원번호를 입력하세요">
			</div>
			<div class="form-group">
			<input type="password" class="form-control" id="adminPassword1" name="adminPassword1" placeholder="비밀번호를 입력하세요">
			</div>
			<div class="checkbox" style="display: inline;">
				<label> <input type="checkbox"  id="remember"> 계정이름 저장
				</label>
			</div><br>
			<div id="loginBtns">
			<button type="button" class="btn btn-danger" id="adminSignup" style="margin-bottom:3%;  width:89%;">회원가입</button>
			<button type="submit" class="btn btn-success" id="adminLoginBtn" style="width:89%;">로그인</button><br>
			
			</div>
		</form>

	</div>
<!-- 모달 -->

<div class="modal fade" id="adminSignupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="outline: none; margin:0px auto;">
  <div class="modal-dialog" style=" width:30%;">
    <div class="modal-content">
      <div class="modal-header" id="mheader">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <img src="<c:url value='/resources/img/titleLogo.png'/>" id="toindex" >
          <!--  	<img src="../resources/img/admin/admin.jpg" id="signupAdminImg" style="width:20%;" class="img-circle"> -->
        
      </div>
    
     
      <div class="modal-body" style="height:50vh;">

  		<div class="form-group">
    	<input type="text" class="form-control" id="adminNumber" placeholder="사원번호를 입력하세요" name="adminNumber">
  		</div>
  		<div class="form-group">
   		
   		<input type="password" class="form-control" id="adminPassword" placeholder="비밀번호를 입력하세요" name="adminPassword">
  		</div>
  		
  		<div class="collapse" id="collapseExample">
  			<div class="well">
   				존재하지 않는 사원번호 입니다.
  			</div>
		</div>
			<img src="<c:url value='../resources/img/signup/underline5.png'/>" id="underline">
		<button type="button" class="btn btn-danger" id="adminSignup1" style="width:100%; margin-bottom:3%;">
      	<i class="far fa-envelope fa-2x" style="color:white"></i>
      	<font>회원가입</font>
        </button><br>
        <button type="button" class="btn btn-default" id="returnBtn" style="width:100%;">
      	<i class="far fa-envelope fa-2x" style="color:white"></i>
      	<font>돌아가기</font>
        </button><br>


      </div>
      <div class="modal-footer" id="mfooter">
       
      </div>
    </div>
  </div>
</div>
</body>
</html>