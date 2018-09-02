<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- header css -->

<link href="<c:url value="/resources/css/main/header.css?var=2" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main/demo.css?var=3" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/main/component.css?var=1" />"
	rel="stylesheet" />

<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>

<!-- 재호  -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> 

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
		
		
	})
</script>

<!-- 	<script>
	var session ='${sessionScope.login_email}';
		alert(session);
	</script> -->

	<c:choose>
	<c:when test="${sessionScope.login_email != null}">
    <div id="header">
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
			<c:if test="${sessionScope.login_email != null}"> 
				<c:if test="${sessionScope.homestep == null}"> 
					<a href="first.host" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
				<c:if test="${sessionScope.homestep == 1}"> 
					<a href="endstepone.host" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
				<c:if test="${sessionScope.homestep == 2}"> 
					<a href="endsteptwo.host" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
               		
			</c:if>
               <c:if test="${sessionScope.login_email == null}"> 
                     <a data-toggle="modal" href="#myModal" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
               			<span data-hover="숙소추가" style="color:black;">숙소추가</span>
               			<ul>
        					<li><a href="home_info.do?seq=1">Item</a></li>
        					<li><a href="#" >Product</a></li>
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
        					<li><a href="messageRoomEnter.msg">Item</a></li>
        					<li><a href="#">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="message.msg" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="도움말" style="color:black;">도움말</span>
               			
               		</a>
               </div>
               
            <div id="header-pic">
              <div class="dropdown">
              <a id="dLabel" href="#" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
               <c:set var="test" value="${sessionScope.login_picture}"/>
               	 <c:if test="${fn:startsWith (test, 'http')}">
             	  <img src="${sessionScope.login_picture}" style="width:50px; height:50px; margin-top:1%; margin-left:3%">
             	  </c:if>
             	  <c:if test="${fn:endsWith (test, 'jpg')}">
             	  <img src="files/${sessionScope.login_picture}" style="width:50px; height:50px; margin-top:1%; margin-left:3%"> 
             	</c:if>
             	  <c:if test="${fn:endsWith (test, 'png')}">
             	  <img src="files/${sessionScope.login_picture}" style="width:50px; height:50px; margin-top:1%; margin-left:3%"> 
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
            </nav>
         </section>  
      </div>
   </div>
   
	
	</c:when>
	<c:otherwise>
		<div id="header">
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
			<c:if test="${sessionScope.login_email != null}"> 
				<c:if test="${sessionScope.homestep == null}"> 
					<a href="first.host" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
				<c:if test="${sessionScope.homestep == 1}"> 
					<a href="endstepone.host" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
				<c:if test="${sessionScope.homestep == 2}"> 
					<a href="endsteptwo.host" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
               		
			</c:if>
               <c:if test="${sessionScope.login_email == null}"> 
                     <a data-toggle="modal" href="#myModal" style=" width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
				</c:if>
               			<span data-hover="숙소추가" style="color:black;">숙소추가</span>
               			<ul>
        					<li><a href="home_info.do?seq=5" id="tohome_info">Item</a></li>
        					<li><a href="profileEditView.mo">Product</a></li>
        					<li><a href="home_info.do?seq=1" id="tohome_info">Item</a></li>
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
        					<li><a href="messageRoomEnter.msg">Item</a></li>
        					<li><a href="ok.msg">Product</a></li>
        					<li><a href="#">Text</a></li>
      					</ul>
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
               		<a href="" style="width:100%;color:black;  overflow: hidden; margin:0px; font-size: 0.93vw; font-weight: 500;  padding-left: 14px;">
               			<span data-hover="도움말" style="color:black;">도움말</span>
               			
               		</a>
               </div>
               <div id="header-menu-div" class="dropdown hover headerDR">
					<a data-toggle="modal" href="#myModal"
						style="width: 100%; color: black; overflow: hidden; margin: 0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
						<span data-hover="회원가입" style="color:black;">회원가입</span>

					</a>
				
				</div>
				<div id="header-menu-div" class="dropdown hover headerDR">
					<a data-toggle="modal" href="#myModal1"
						 style="width: 100%; color: black; overflow: hidden; margin: 0px; font-size: 0.93vw; font-weight: 500; padding-left: 14px;">
						<span data-hover="로그인" style="color:black;">로그인</span>
					</a>
				</div>
             </nav>
         </section>
   
      </div>
   </div>
	<%@ include file="modal_signup/indexSignup.jsp"%>
	</c:otherwise>
	</c:choose>