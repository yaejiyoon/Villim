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
	margin-left:22%;
	margin-top:6%;
	
}
#logo img{
	width:250%;

}
#adminLogin{
 	position: absolute;
	z-index: 10;
	border:2px solid white;
	margin-left:15%;
	margin-top:11%;
	width:25%;
	color:white;
	height:50vh;	
}
#email{
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
</style>
</head>
<body>

	<div id="bg">
		<img src="./resources/images/6.jpg" alt="">
	</div>
	
	<div id="logo">
	<img alt="" src="../resources/img/logo2.png">
	</div>
	<div id="adminLogin">
		
		<h3>관리자 계정 로그인</h3><br>
		<form>
			<div class="form-group">
				<label for="exampleInputEmail1">이메일 주소</label> <input type="text"
					class="form-control" id="email"
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
		</form>
		
		

	</div>


</body>
</html>