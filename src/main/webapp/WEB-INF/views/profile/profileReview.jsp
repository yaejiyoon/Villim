<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:useBean id="today" class="java.util.Date"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<title>후기</title>
<style>

/* Tabs panel */
.tabbable-panel {
	padding: 10px;
}

/* Default mode */
.tabbable-line>.nav-tabs {
	border: none;
	margin: 0px;
	width: 50%;
}

.tabbable-line>.nav-tabs>li {
	margin-right: 2px;
}

.tabbable-line>.nav-tabs>li>a {
	border: 0;
	margin-right: 0;
	color: #737373;
}

.tabbable-line>.nav-tabs>li>a>i {
	color: #a6a6a6;
}

.tabbable-line>.nav-tabs>li.open, .tabbable-line>.nav-tabs>li:hover {
	border-bottom: 4px solid #fbcdcf;
}

.tabbable-line>.nav-tabs>li.open>a, .tabbable-line>.nav-tabs>li:hover>a
	{
	border: 0;
	background: none !important;
	color: #333333;
}

.tabbable-line>.nav-tabs>li.open>a>i, .tabbable-line>.nav-tabs>li:hover>a>i
	{
	color: #a6a6a6;
}

.tabbable-line>.nav-tabs>li.open .dropdown-menu, .tabbable-line>.nav-tabs>li:hover .dropdown-menu
	{
	margin-top: 0px;
}

.tabbable-line>.nav-tabs>li.active {
	border-bottom: 4px solid #f3565d;
	position: relative;
}

.tabbable-line>.nav-tabs>li.active>a {
	border: 0;
	color: #333333;
}

.tabbable-line>.nav-tabs>li.active>a>i {
	color: #404040;
}

.tabbable-line>.tab-content {
	margin-top: -3px;
	background-color: #fff;
	border: 0;
	border-top: 1px solid #eee;
	padding: 15px 0;
}

.portlet .tabbable-line>.tab-content {
	padding-bottom: 0;
}

/* Below tabs mode */
.tabbable-line.tabs-below>.nav-tabs>li {
	border-top: 4px solid transparent;
}

.tabbable-line.tabs-below>.nav-tabs>li>a {
	margin-top: 0;
}

.tabbable-line.tabs-below>.nav-tabs>li:hover {
	border-bottom: 0;
	border-top: 4px solid #fbcdcf;
}

.tabbable-line.tabs-below>.nav-tabs>li.active {
	margin-bottom: -2px;
	border-bottom: 0;
	border-top: 4px solid #f3565d;
}

.tabbable-line.tabs-below>.tab-content {
	margin-top: -10px;
	border-top: 0;
	border-bottom: 1px solid #eee;
	padding-bottom: 15px;
}
.photo {
border-radius: 50%;
position:relative;
top:15px;
left:-100px;
opacity: 1;
width:140px;height:120px;
}


 * {
     margin: 0;
 	padding: 0;
 	-webkit-box-sizing: border-box;
 	-moz-box-sizing: border-box;
 	box-sizing: border-box;
 }


ul {
	list-style-type: none;
}


/** ====================
 * Lista de Comentarios
 =======================*/
.comments-container {
	margin: 60px auto 15px;
	width: 768px;
}

.comments-container h1 {
	font-size: 36px;
	color: #283035;
	font-weight: 400;
}

.comments-container h1 a {
	font-size: 18px;
	font-weight: 700;
}

.comments-list {
	margin-top: 30px;
	position: relative;
}

/**
 * Lineas / Detalles
 -----------------------*/
.comments-list:before {
	content: '';
	width: 2px;
	height: 100%;
	position: absolute;
	left: 32px;
	top: 0;
}

.comments-list:after {
	content: '';
	position: absolute;
	bottom: 0;
	left: 27px;
	width: 7px;
	height: 7px;

}

.reply-list:before, .reply-list:after {display: none;}
.reply-list li:before {
	content: '';
	width: 60px;
	height: 2px;
	background: #c7cacb;
	position: absolute;
	top: 25px;
	left: -55px;
}


.comments-list li {
	margin-bottom: 15px;
	display: block;
	position: relative;
}

.comments-list li:after {
	content: '';
	display: block;
	clear: both;
	height: 0;
	width: 0;
}

.reply-list {
	padding-left: 88px;
	clear: both;
	margin-top: 15px;
}
/**
 * Avatar
 ---------------------------*/
.comments-list .comment-avatar {
	width: 65px;
	height: 65px;
	position: relative;
	z-index: 99;
	float: left;
	border: 3px solid #FFF;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	-moz-box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	box-shadow: 0 1px 2px rgba(0,0,0,0.2);
	overflow: hidden;
}

.comments-list .comment-avatar img {
	width: 100%;
	height: 100%;
}

.reply-list .comment-avatar {
	width: 50px;
	height: 50px;
}

.comment-main-level:after {
	content: '';
	width: 0;
	height: 0;
	display: block;
	clear: both;
}
/**
 * Caja del Comentario
 ---------------------------*/
.comments-list .comment-box {
	width: 680px;
	float: right;
	position: relative;
	-webkit-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
	-moz-box-shadow: 0 1px 1px rgba(0,0,0,0.15);
	box-shadow: 0 1px 1px rgba(0,0,0,0.15);
}

.comments-list .comment-box:before, .comments-list .comment-box:after {
	content: '';
	height: 0;
	width: 0;
	position: absolute;
	display: block;
	border-width: 10px 12px 10px 0;
	border-style: solid;
	border-color: transparent #FCFCFC;
	top: 8px;
	left: -11px;
}

.comments-list .comment-box:before {
	border-width: 11px 13px 11px 0;
	border-color: transparent rgba(0,0,0,0.05);
	left: -12px;
}

.reply-list .comment-box {
	width: 610px;
}
.comment-box .comment-head {
	background: #FCFCFC;
	padding: 10px 12px;
	border-bottom: 1px solid #E5E5E5;
	overflow: hidden;
	-webkit-border-radius: 4px 4px 0 0;
	-moz-border-radius: 4px 4px 0 0;
	border-radius: 4px 4px 0 0;
}

.comment-box .comment-head i {
	float: right;
	margin-left: 14px;
	position: relative;
	top: 2px;
	color: #A6A6A6;
	cursor: pointer;
	-webkit-transition: color 0.3s ease;
	-o-transition: color 0.3s ease;
	transition: color 0.3s ease;
}

.comment-box .comment-head i:hover {
	color: #03658c;
}

.comment-box .comment-name {
	color: #283035;
	font-size: 14px;
	font-weight: 700;
	float: left;
	margin-right: 10px;
}

.comment-box .comment-name a {
	color: #283035;
}

.comment-box .comment-head span {
	float: left;
	color: #999;
	font-size: 13px;
	position: relative;
	top: 1px;
}

.comment-box .comment-content {
	background: #FFF;
	padding: 12px;
	font-size: 15px;
	color: #595959;
	-webkit-border-radius: 0 0 4px 4px;
	-moz-border-radius: 0 0 4px 4px;
	border-radius: 0 0 4px 4px;
}

.comment-box .comment-name.by-author, .comment-box .comment-name.by-author a {color: #03658c;}
.comment-box .comment-name.by-author:after {
	background: #03658c;
	color: #FFF;
	font-size: 12px;
	padding: 3px 5px;
	font-weight: 700;
	margin-left: 10px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

/** =====================
 * Responsive
 ========================*/
@media only screen and (max-width: 766px) {
	.comments-container {
		width: 480px;
	}

	.comments-list .comment-box {
		width: 390px;
	}

	.reply-list .comment-box {
		width: 320px;
	}
}

@import url(//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);
/*Comment List styles*/
.comment-list .row {
  margin-bottom: 0px;
}
.comment-list .panel .panel-heading {
  padding: 4px 15px;
  position: absolute;
  border:none;
  /*Panel-heading border radius*/
  border-top-right-radius:0px;
  top: 1px;
}
.comment-list .panel .panel-heading.right {
  border-right-width: 0px;
  /*Panel-heading border radius*/
  border-top-left-radius:0px;
  right: 16px;
}
.comment-list .panel .panel-heading .panel-body {
  padding-top: 6px;
}
.comment-list figcaption {
  /*For wrapping text in thumbnail*/
  word-wrap: break-word;
}
/* Portrait tablets and medium desktops */
@media (min-width: 768px) {
  .comment-list .arrow:after, .comment-list .arrow:before {
    content: "";
    position: absolute;
    width: 0;
    height: 0;
    border-style: solid;
    border-color: transparent;
  }
  .comment-list .panel.arrow.left:after, .comment-list .panel.arrow.left:before {
    border-left: 0;
  }
  /*****Left Arrow*****/
  /*Outline effect style*/
  .comment-list .panel.arrow.left:before {
    left: 0px;
    top: 30px;
    /*Use boarder color of panel*/
    border-right-color: inherit;
    border-width: 16px;
  }
  /*Background color effect*/
  .comment-list .panel.arrow.left:after {
    left: 1px;
    top: 31px;
    /*Change for different outline color*/
    border-right-color: #FFFFFF;
    border-width: 15px;
  }
  /*****Right Arrow*****/
  /*Outline effect style*/
  .comment-list .panel.arrow.right:before {
    right: -16px;
    top: 30px;
    /*Use boarder color of panel*/
    border-left-color: inherit;
    border-width: 16px;
  }
  /*Background color effect*/
  .comment-list .panel.arrow.right:after {
    right: -14px;
    top: 31px;
    /*Change for different outline color*/
    border-left-color: #FFFFFF;
    border-width: 15px;
  }
}
.comment-list .comment-post {
  margin-top: 6px;
}
</style>
<script>

$(document).keypress(function(e) { if (e.keyCode == 13) e.preventDefault(); });

$(document).ready(function(){
	$('#confirmBt').click(function(){
		
		
		
		if(!$("#textValue").val()){
			alert("입력 후 확인 버튼을 눌러주세요");
			return false;
		}
	
		$("#formId").submit();
	})
})

</script>
</head>
<body>
	<%@ include file="../../resource/include/header_profile.jsp" %>

	<div style="position: relative; left: 250px; top: 56px;">
		<a href="profileEditView.mo"
			style="font-size: 18px; position: relative;  top: -24px; left: -2vw;  color: gray; text-decoration: none;">프로필
			수정</a> 
			<a style="font-size:19px; position: relative; z-index:500; top: 23px; left: -6vw; color: gray; font-weight: bold;text-decoration:none;">후기</a>
		<a id="profileShowBt" class="btn btn-default"
			style="position: relative; left: -11vw; top: 80px; z-index:500; width: 150px; text-decoration: none; font-weight: bold;"
			onclick="location.href='printProfile.mo'">프로필 보기</a>


	</div>

	<div class="container"
		style="position: relative; left: 130px; top: -20px; width: 50%; height: auto;">
		<div class="row">
			<div class="col-md-12">


				<div class="tabbable-panel">
					<div class="tabbable-line">
						<ul class="nav nav-tabs " style="text-align: center; width: 100%;">
							<li class="active"><a href="#tab_default_1"
								data-toggle="tab"> 나에 대한 후기 </a></li>
							<li><a href="#tab_default_2" data-toggle="tab"> 내가 작성한
									후기</a></li>
						</ul>






						<div class="tab-content">
							<div class="tab-pane active" id="tab_default_1">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" style="text-align: left;">지난 후기</h3>
									</div>
									
								
									<div class="panel-body" style="height:auto;">
										후기는 빌림 숙박이 완료된 후 작성됩니다. 나에대한 후기는 이곳과 공개 프로필에서 볼 수 있습니다.

                                        <c:forEach items="${getHostReview}" var="hostReview" varStatus="i">
				  	<c:forEach items="${getrealHostReview}" var="host">
				  <article class="row" style="margin-top:3%;">
            <div class="col-md-2 col-sm-2 hidden-xs">
              <figure class="thumbnail">
                <img class="img-responsive" src="files/${hostReview.member_picture}" />
                <figcaption class="text-center">${hostReview.member_name}</figcaption>
              </figure>
            </div>
            <div class="col-md-10 col-sm-10">
              <div class="panel panel-default arrow left">
                <div class="panel-body">
                  <header class="text-left">
                    <div class="comment-user"><i class="fa fa-user"></i></div>
                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i>${hostReview.g_review_date}</time>
                  </header>
                  <div class="comment-post">
                    <p>
                      ${hostReview.g_review_public}
                    </p>
                  </div>
                  <c:if test="${hostReview.g_review_seq!=host.g_review_seq}">
                  <p class="text-right"><a class="btn btn-default btn-sm"  data-toggle="collapse" href="#collapseExample${i}" role="button" aria-expanded="false" >답글 리뷰쓰기</a></p>
                       <article class="row collapse" id="collapseExample${i}">
         <form method="post" id="formId" name="formId" action="hostReview.mo" method="post">
            <div class="col-md-10 col-sm-10">
            
                  <div class="comment-post">
                    <p>
                     <textarea id="textValue" class="form-control" name="h_review_public" style="resize: none;margin-top:10px;height:100px;line-height:1.6em;" maxlength='500'  >
                     
                     </textarea>
                     <input type="hidden" name="g_review_seq" id="g_review_seq" value="${hostReview.g_review_seq}">
                     <input type="hidden" name="home_seq" id="home_seq" value="${hostReview.home_seq}">
                    </p>
                  </div>
                  
                  <p class="text-right"><a id="confirmBt"  type="button" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> 확인</a></p>
              
              
            </div>
            </form>
           
            <div class="col-md-2 col-sm-2 hidden-xs">
              <figure class="thumbnail">
                <img class="img-responsive" src="files/${hostPicture}" />
                <figcaption class="text-center">${hostName}</figcaption>
              </figure>
            </div>
          </article>
                    
                    </c:if> 
       
                   
                 
                </div>
              </div>
            </div>
          </article>
				  <!--  -->
				  <c:if test="${hostReview.g_review_seq==host.g_review_seq}">
				     <article class="row">
            <div class="col-md-10 col-sm-10">
              <div class="panel panel-default arrow right">
                <div class="panel-body">
                  <header class="text-right">
                    <div class="comment-user"><i class="fa fa-user"></i> </div>
                    <time class="comment-date" datetime="16-12-2014 01:05"><i class="fa fa-clock-o"></i> ${host.h_review_date}</time>
                  </header>
                  <div class="comment-post">
                    <p>
                    ${host.h_review_public}
                    </p>
                  </div>
                  <p class="text-right"><!-- <a href="#" class="btn btn-default btn-sm"><i class="fa fa-reply"></i> reply</a> --></p>
                </div>
              </div>
            </div>
            <div class="col-md-2 col-sm-2 hidden-xs">
              <figure class="thumbnail">
                <img class="img-responsive" src="files/${hostPicture}" />
                <figcaption class="text-center">${hostName}</figcaption>
              </figure>
            </div>
          </article>
				 </c:if> 
				  
				   <c:if test="${not i.last}"><hr style="width:100%;color:#828282;position:relative;top:-1vh;"></c:if>
				  </c:forEach>
               </c:forEach>
 
 
 
 
				
				<%-- 	<c:forEach items="${getrealHostReview}" var="host">
					         <!-- Third Comment -->
       
				</c:forEach>	 --%>
					
					
					
					
					
					
                                        
										<!-- else 후기가 없다면 :  아직 작성된 후기가 없습니다. -->

									</div>
								</div>

							</div>
							<div class="tab-pane" id="tab_default_2" style="max-width: 100%;">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" style="text-align: left;">작성해야 할
											후기</h3>
									</div>
									<div class="panel-body"  style="height:auto;margin-bottom:20px;">


                                      <%--  <fmt:formatDate var="checkoutDate" value="${info.reserv_checkout}" pattern="yyyy-mm-dd"/>
                                       <c:set var="today" value="<%=new java.util.Date() %>"/>
                                       <fmt:formatDate var="today" value="${today}"  pattern="yyyy-mm-dd"/> --%>
										<c:choose>
										<c:when test="${not empty result}">
										<c:forEach items="${result}" var="info">
										
										<%-- <c:if test="${today.date-checkoutDate<=14}"> --%> 
								
											
	<ul id="comments-list" class="comments-list">
			<li>
				<div class="comment-main-level" style="width:auto;">
				<div class="row" >
				<div class="col-sm-9" style="width:auto;">
				<h5 style="color: #595c63;margin-top:0px;">${info.home_name} 을 위한 공개 리뷰 작성기간 14일 기간을 드립니다 그 이후 작성해야 할 후기 목록에서 삭제 됩니다.</h5>
				</div>
				</div>
					<div class="comment-avatar"><img src="files/${homePhotoResult}"></div>
					<div class="comment-box" style="">
						<div class="comment-head" style="width:auto">
							<h6 class="comment-name by-author">숙박 장소  ${info.home_name}</h6>
							<span style="text-align:center">${info.reserv_checkin} ~ ${info.reserv_checkout}</span>
						</div>
						<div class="comment-content">
							<input type="hidden" value="${info.home_seq}">
														<a href="reviewWrite.mo?home_seq=${info.home_seq}&checkin=${info.reserv_checkin}&checkout=${info.reserv_checkout}&home_main_pic=${homePhotoResult}&home_name=${info.home_name}&reservation_seq=${info.reservation_seq}"
															style="color: #ff5959; text-decoration: none;">리뷰쓰기</a>						
	
						</div>
					</div>
				</div>
				</li>
				</ul>
                                    
                    </c:forEach>
	                          </c:when>
	                          <c:otherwise>
	                          현재 작성할 후기가 없습니다. 여행을 한번 다녀올 때가 된 것 같네요!
	                          </c:otherwise>             
	                          </c:choose>
	                              
                                 
									</div>
								</div>

								<div class="panel panel-default" style="max-width: 100%;">
									<div class="panel-heading">
										<h3 class="panel-title" style="text-align: left;">내가 작성한
											후기</h3>
									</div>
									<div class="panel-body">
								<c:choose>	
								<c:when test="${not empty guestReviewresult}">
						
										<c:forEach items="${guestReviewresult}" var="review">			

          	<ul id="comments-list" class="comments-list">
			<li>
				<div class="comment-main-level" style="width:auto;">
					<div class="comment-avatar"><img src="files/${reviewHomePhoto}"></div>
					<div class="comment-box">
						<div class="comment-head" style="width:auto">
							<h6 class="comment-name by-author">'${review.home_name}' 을 위한 후기</h6>
							<span style="text-align:right;">${review.g_review_date}</span>
						</div>
						<div class="comment-content">
							${review.g_review_public}
						</div>
					</div>
				</div>
				</li>
				</ul>
          
          
          </c:forEach>
          </c:when>
          <c:otherwise>
          아직 후기를 남기지 않으셨습니다.
          </c:otherwise>
          </c:choose>
           
										<div class="form-group">
											<div class="col-sm-10 col-sm-offset-2"></div>
										</div>
										
									</div>
								</div>

							</div>







						</div>
					</div>
				</div>

			</div>
		</div>
	</div>



	<%@ include file="../../resource/include/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>



</body>
</html>