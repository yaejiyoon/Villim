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
</style>
</head>
<body>
	<%@ include file="../../resource/include/header.jsp"%>

	<div style="position: relative; left: 250px; top: 56px;">
		<a href="profileEditView.mo"
			style="font-size: 18px; position: relative; top: -24px; left: 0px; color: gray; text-decoration: none;">프로필
			수정</a> <a
			style="font-size: 19px; position: relative; top: 23px; left: -100px; color: gray; font-weight: bold;">후기</a>
		<a id="profileShowBt" class="btn btn-default"
			style="position: relative; left: -150px; top: 80px; width: 150px; text-decoration: none; font-weight: bold;"
			onclick="location.href='printProfile.mo'">프로필 보기</a>


	</div>

	<div class="container"
		style="position: relative; left: 130px; top: -20px; width: 60%; height: 1000px;">
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
									<div class="panel-body">
										후기는 빌림 숙박이 완료된 후 작성됩니다. 나에대한 후기는 이곳과 공개 프로필에서 볼 수 있습니다.
										<!-- if 후기가 있다면 : 클라이언트 사진과 이름 후기 ,날짜 그리고 거기 -->


										<div class="form-group">
											<div class="col-sm-10 col-sm-offset-2"></div>
										</div>
										<!-- else 후기가 없다면 :  아직 작성된 후기가 없습니다. -->

									</div>
								</div>

							</div>
							<div class="tab-pane" id="tab_default_2">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" style="text-align: left;">작성해야 할
											후기</h3>
									</div>
									<div class="panel-body"  style="height:auto;margin-bottom:20px;">


                                       
										<c:forEach items="${result}" var="info">
										
										<%-- <fmt:formatDate var="checkoutDate" value="${info.reserv_checkout}" pattern="yyyy-mm-dd"/>
										
										<c:set var="today" value="<%=new java.util.Date() %>"/>
										<fmt:formatDate var="today" value="${today}" type="DATE" pattern="yyyy-mm-dd"/>
										<c:if test="${checkoutDate+14<=today}"> --%>
												<div class="form-group">
													<div class="col-sm-10 col-sm-offset-2">
														<div id="hostInfo" >
															<h5 style="color: #595c63; position: relative; left: -180px;">${info.home_name} 을 위한 공개 리뷰 작성기간 14일 기간을 드립니다 그 이후 작성해야 할 후기 목록에서 삭제 됩니다.</h5>
															<div class="col-6 col-md-4">
															<img src="files/${homePhotoResult}" class="photo" id="hostPhoto" >
															</div>
															
														</div>
														
														<div class="col-6">
														<h4 style="position: relative; left: -150px; top:30px; color: #595c63; font-weight: bold;">숙박 장소  ${info.home_name}</h4>
														<h4 style="position: relative; left: -150px; top:30px; color: #595c63; font-weight: bold;">숙박 기간  ${info.reserv_checkin} ~ ${info.reserv_checkout}</h4>
														<input type="hidden" value="${info.home_seq}">
														<a href="reviewWrite.mo?home_seq=${info.home_seq}&checkin=${info.reserv_checkin}&checkout=${info.reserv_checkout}&home_pic_name=${homePhotoResult}&home_name=${info.home_name}"
															style="position: relative; top: 35px;left:-150px; color: #ff5959; text-decoration: none;">리뷰쓰기</a>
                                                        </div>     
													</div>
												</div>
												<%-- </c:if> --%>
                                            </c:forEach>
	                                              <!-- else 현재 작성할 후기가 없습니다. 여행을 한번 다녀올 때가 된 것 같네요! -->
                                                  

									
									</div>
								</div>

								<div class="panel panel-default">
									<div class="panel-heading">
										<h3 class="panel-title" style="text-align: left;">내가 작성한
											후기</h3>
									</div>
									<div class="panel-body">
										<!-- if 작성한 후기가 있다면 호스트 사진과 누구를 위한 리뷰와 그리고 리뷰, 작성한 날짜(예:2018년 8월)  -->
										<img src="" alt="호스트 사진" /> 호스트이름, 후기 , 날짜


										<div class="form-group">
											<div class="col-sm-10 col-sm-offset-2"></div>
										</div>
										<!-- else 작성한후기 없다면 : 아직 후기를 남기지 않으셨습니다. -->
									</div>
								</div>

							</div>







						</div>
					</div>
				</div>

			</div>
		</div>
	</div>








	<!-- 	<div style="position: relative; left: 250px; top: 56px;">
		<a href="profileEditView.mo" style="font-size: 18px; position: relative; top: -24px; left: 0px; color:gray; text-decoration: none;">프로필
			수정</a> <a
			style="font-size: 19px; position: relative; top: 23px; left: -100px;color:gray;
			
			font-weight:bold;">후기</a>
		<a id="profileShowBt" class="btn btn-default"
			style="position: relative; left: -150px; top: 80px; width: 150px; text-decoration: none;font-weight:bold;" onclick="location.href='printProfile.mo'">프로필 보기</a>


	</div>
	

<div class="tab_container">
         <input id="tab1" type="radio" name="tabs" checked>
         <label for="tab1"><i class="fa fa-code"></i><span>나에 대한 후기</span></label>

         <input id="tab2" type="radio" name="tabs">
         <label for="tab2"><i class="fa fa-pencil-square-o"></i><span>내가 작성한 후기</span></label>

      
         <section id="content1" class="tab-content">
         
         
         <div class="panel panel-default">
      <div class="panel-heading">
         <h3 class="panel-title" style="text-align:left;">지난 후기</h3>
      </div>
      <div class="panel-body">
         후기는 빌림 숙박이 완료된 후 작성됩니다. 나에대한 후기는 이곳과 공개 프로필에서 볼 수 있습니다.
         if 후기가 있다면 : 클라이언트 사진과 이름 후기 ,날짜 그리고 거기
         

            <div class="form-group">
               <div class="col-sm-10 col-sm-offset-2">
                  <button id="imageChangeBt" name="submit" type="submit"
                     class="btn btn-default"
                     style="margin-top: 15px; margin-left: 470px;"><img src="../photo.png" style="width:23px; padding-right: 3px;">새로운 사진 변경</button>
               </div>
            </div>
           else 후기가 없다면 :  아직 작성된 후기가 없습니다.
      
      </div>
   </div>
               
               
         </section>

         --------------------------------게스트-----------------------------------------------------

         <section id="content2" class="tab-content">
            
   <div class="panel panel-default">
      <div class="panel-heading">
         <h3 class="panel-title" style="text-align:left;">작성해야 할 후기</h3>
      </div>
      <div class="panel-body">
         if 구매를 하고 체크인 날짜이후부터 리뷰쓰기 가능
            <div class="form-group">
               <div class="col-sm-10 col-sm-offset-2">
               <div id="hostInfo">
               <h5 style="color:#595c63;position:relative;left:140px;font-weight:bold;">리뷰는 체크아웃 후에 쓸 수 있습니다.</h5>
               <img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle" id="hostPhoto">
               <h4 style="position:relative;left:27px;color:#595c63;font-weight:bold;">James Bro</h4>
               </div>
               <h5 style="position:relative;top:-155px;">샌디에이고에서 5성급 펜션 을 위한 공개 리뷰 작성기간 11일 기간을 드립니다.</h5>
                  <a href="reviewWrite.mo" style="position:relative;top:-140px;color:#ff5959;text-decoration:none;">리뷰쓰기</a>
                  
               </div>
            </div>

         else 현재 작성할 후기가 없습니다. 여행을 한번 다녀올 때가 된 것 같네요!
      </div>
   </div>

   <div class="panel panel-default">
      <div class="panel-heading">
         <h3 class="panel-title" style="text-align:left;">내가 작성한 후기</h3>
      </div>
      <div class="panel-body">
         if 작성한 후기가 있다면 호스트 사진과 누구를 위한 리뷰와 그리고 리뷰, 작성한 날짜(예:2018년 8월)
         
         <img src="" alt="호스트 사진"/>
          호스트이름, 후기 , 날짜
         

            <div class="form-group">
               <div class="col-sm-10 col-sm-offset-2">
                  
               </div>
            </div>
             else 작성한후기 없다면 : 아직 후기를 남기지 않으셨습니다.
      </div>
   </div>

         </section>
   
      </div> -->

	<%@ include file="../../resource/include/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>



</body>
</html>