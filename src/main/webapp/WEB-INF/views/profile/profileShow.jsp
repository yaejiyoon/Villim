<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


<style>
.avatar{

	position:relative;
	left:1vw;
	top: 5vh; 
	height : 20.23em;
	width: 20.23em;
	border-radius: 18em;
	height: 20.23em;
}
.title-pen {
	margin-top: 30px; color : #333;
	font-family: "Coda", sans-serif;
	text-align: center;
	color: #333;
	position:relative;
	left:-500px;
}

#profile {

	position: relative;
	top: 0px;
	left: 35vw; width : 100vw;
	height: 51vh;
	background: #fff;
	width: 700px; height : 500px; background : #fff;
	border-radius: 5px;
/* 	border:1px solid #ccc; */
}

.user-profile  .username {
	position: relative;
	left: 20vw;
	top: -14vw; color : #658585;
	font-size: 3.53em;
	font-family: "Coda", sans-serif;
	font-weight: bold;
	color: #658585;
}

.user-profile  .bio {
	margin: 10px;
	display: inline-block;
	margin-left: 10.43em;
	color: #658585;
	font-size: 1.0em;
	font-family: "varela round", sans-serif;
	position: relative;
	left: 13vw;
	top: -13.5vw;
}

.user-profile>.description {
	margin: auto;
	margin-top: 1.35em;
	margin-right: 4.43em;
	width: 500px;
	height:auto;
	color: #658585;
	font-size: 1.8em;
	font-family: "varela round", sans-serif;
	position: relative;
	left: 1vw;
	top: -20vh;
	text-align:center;

}

.user-profile>img.avatar {
	padding: .7em;
	position:relative;left:-5vw;
	top: 10px; height : 20.23em;
	width: 20.23em;
	border-radius: 18em;
	height: 20.23em;
}

.user-profile ul.data {
	position: relative;
	left: 10px;
	top: -180px;
	margin: 2em auto;
	width: 500px; height : 3.70em;
	background: #ff5b5b;
	text-align: center;
	border-radius: 0 0 .3em .3em;
	height: 3.70em;
}

.user-profile li {
	margin: 0 auto;
	padding: 1.30em;
	width: 33.33334%;
	display: table-cell;
	text-align: center;
}

.user-profile span {
	
}

.user-profile span:hover {
	color: #daebea;
}

#span {
	position: relative;
	left: 200px;
	font-family: "varela round", sans-serif;
	color: #e3eeee;
	white-space: nowrap;
	font-size: 1.27em;
	font-weight: bold;
}

.entypo-home,#click{
	position: relative;
	left: 220px;
	font-family: "varela round", sans-serif;
	color: #e3eeee;
	white-space: nowrap;
	font-size: 1.27em;
	font-weight: bold;
}


#showHouseContainer{
width:27vw;
height:auto;
position:relative;
top:-20vh;
left:0.3vw;

}
#textOverImage{
margin:0;
margin-bottom:0;
text-align:center;
padding:2px;
max-width:400px;
}
</style>
<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<title>Profile</title>
</head>
<body>
<%@ include file="../../resource/include/header_profile.jsp" %>

<div class=container style="width:100%;height:1150px;">
	
	<div style="position: relative; left: 250px; top: 56px;">
		<a href="profileEditView.mo" style="z-index:500;font-size: 19px; position: relative; top: -24px; left: -2vw; color:gray;text-decoration: none;">프로필
			수정</a> <a href="profileReview.mo"
			style="font-size: 18px; z-index:500;position: relative; top: 23px; left: -6vw; color:gray;text-decoration: none;">후기</a>
	


	</div>
 
	<div class="user-profile" id="profile">
		<img class="avatar img-responsive"  id="photo"
			src="files/${result.member_picture}" />
      
		<div class="username">${result.member_name} <span>님!</span></div>
		<div class="bio">지역 : ${result.member_location}</div>
		<br>
		<div class="bio">회원가입 : ${result.member_date}</div>
		<br>
		<div class="bio">이메일 : ${result.member_email}</div>
		<br>
		<div class="bio">전화번호 : ${result.member_phone}</div>
		<div class="description">${result.member_introduction}</div>
		<ul class="data">
			<li><span id="span"> 숙소</span> <span class="entypo-home">
					${count}</span></li>   <!-- 숙소 가지고 있는 count 가져오기 -->
		</ul>
		
		<c:choose>
		<c:when test="${count>0}">
		<div id="showHouseContainer" class=container>
		<c:forEach  var="house" items="${houseResult}">
	<div class="gallery_product col-lg-6 filter hdpe" style="margin-top:12px;">
                <img src="files/${house.home_main_pic}" class="img-responsive" style="object-fit: contain;">
                
                <div class="carousel-caption" id="textOverImage">
              <p>${house.home_name}</p>
            </div>
            </div>
           </c:forEach> 
        
		</div>
</c:when>
<c:otherwise>
<div id="showHouseContainer" class="bio" style="position:relative;left:-2vw;top:-22vh;font-weight:bold;height:11vh;">
<h4 style="position:relative;left:8.5vw;top:0vh;font-weight:800;">숙소를 추가하세요!</h4><button class="btn btn-default" id="homeAddBt" style="font-weight:800;position:relative;left:9.5vw;top:2vh;">숙소 추가하기</button>
<script>

$(document).ready(function(){
	
	$('#homeAddBt').click(function(){
		$(location).attr('href','first.host');
	})

})

</script>


</div>
</c:otherwise>
	</c:choose>	
	</div>
</div>

 <%@ include file="../../resource/include/footer.jsp" %> 

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>