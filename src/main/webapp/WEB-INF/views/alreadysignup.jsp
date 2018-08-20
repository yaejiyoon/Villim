<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이미 가입하셨습니다.</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link href="<c:url value="/resources/css/main/main.css" />" rel="stylesheet" />
<link href="<c:url value="/resources/css/style1.css" />" rel="stylesheet" />
<script type="text/javascript" src="<c:url value="/resources/js/modernizr.custom.86080.js"/>"></script>
<script>
   $(document).ready(function() {
	   
	  
	   $("#loginPage").click(function(){
		   
		   self.close();
		  
		   window.opener.location.href="fbInfo2.do";

	   })
	   
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
   
</style>
</head>
<body>
	<script>
	alert($('#googleSignup',opener.document).val());
	alert($('#kakaoSignup',opener.document).val());
	alert($('#facebookSignup',opener.document).val());
	if($('#googleSignup',opener.document).val() != 'signup' &&   $('#kakaoSignup',opener.document).val() != 'signup'  && $('#facebookSignup',opener.document).val() != 'signup'){
		self.close();  
		window.opener.location.href="fbInfo2.do";
	}
	this.resizeTo(screen.availWidth, screen.availHeight);
	</script>
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
         <p><font>계정은 이미 빌림의 회원입니다.</font></p>
         <h3><font>로그인을 통해 더 많은 빌림의 서비스를 이용하세요</font></h3>
         <button class="btn btn-success" id="loginPage">로그인</button>
      </div>
    </div>
<%-- <%@ include file="../resource/include/modal_signup/indexSignup.jsp"%> --%>
<%@ include file="../resource/include/footer.jsp"%>
</body>
</html>