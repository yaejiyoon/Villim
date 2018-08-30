<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!-- header css -->
<link rel="shortcut icon" href="../favicon.ico">
<link href="<c:url value="/resources/css/main/header.css?var=2" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main/demo.css?var=3" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/main/component.css?var=1" />"
	rel="stylesheet" />
<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>

<style>
@font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
</style>

<script>
	$(document).ready(function(){
		$(document).click(function(event) {
			  if(
			    $('.toggle > input').is(':checked') &&
			    !$(event.target).parents('.toggle').is('.toggle')
			  ) {
			    $('.toggle > input').prop('checked', false);
			  }
		});
		
		$("#toindex").click(function(){
			$(location).attr("href","/");
		});
		
		$("#tohome_info").click(function(){
			$(location).attr("href","home_info.do");
		});
	})
</script>


    <div id="header"  style="font-family: font;">
      <div id="header-logo">
         <img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
      </div>
      <div id="header-search" class="form-search form-inline">
         <img src="<c:url value='/resources/img/search.png'/>">
         <input type="text" class="search-query form-control" placeholder="모든 위치·숙소" />
      </div>
      <div id="header-menu" class="headerContainer" >
         <section class="color-5">
            <nav class="cl-effect-5">
            	<div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="profileEditView.mo" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
               			<span data-hover="숙소추가" style="color:black;">숙소추가</span>
               			<ul>
        					<li><a href="home_info.do" id="tohome_info">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
        					<li><a href="#">Page</a></li>
        					<li><a href="#">Thing</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="호스트" style="color:black;">호스트</span>
               			<ul>
        					<li><a href="#">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
        					<li><a href="#">Page</a></li>
        					<li><a href="#">Thing</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%; color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="저장목록" style="color:black;">저장목록</span>
               			<ul>
        					<li><a href="#">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
        					<li><a href="#">Page</a></li>
        					<li><a href="#">Thing</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="여행" style="color:black;">여행</span>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="messageMain.msg" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="메세지" style="color:black;">메세지</span>
             			<ul>
        					<li><a href="#">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="hostMain.do" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="도움말" style="color:black;">도움말</span>
               			
               		</a>
               </div>


            </nav>
         </section>
      </div>
      <%-- <div id="header-pic">
         <img src="<c:url value='/resources/img/1.jpg'/>">
      </div> --%>
      
         <div id="header-pic" style="position:relative;left:80vw;top:-8.6vh;">
              <div class="dropdown">
              <a id="dLabel" href="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
               <c:set var="test" value="${sessionScope.login_picture}"/>
               	 <c:if test="${fn:startsWith (test, 'http')}">
             	  <img src="${sessionScope.login_picture}">
             	  </c:if>
             	  <c:if test="${fn:endsWith (test, 'jpg')}">
             	  <img src=" files/${sessionScope.login_picture}"> 
             	</c:if>
             	  <c:if test="${fn:endsWith (test, 'png')}">
             	  <img src=" files/${sessionScope.login_picture}"> 
             	</c:if>
             	</a>
             	<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
        					<li><a href="profileEditView.mo">프로필 수정하기</a></li>
        					<li><a href="#">친구 초대하기</a></li>
        					<li><a href="#">호스트 추천하기</a></li>
        					<li><a href="#">계정관리</a></li>
        					<li><a href="#">나의 가이드북</a></li>
        					<li><a href="logout.do">로그아웃</a></li>
      			</ul>
              </div>  
              

     	       </div>
   </div>

