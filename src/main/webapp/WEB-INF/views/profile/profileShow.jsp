<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

@import
	url(https://fonts.googleapis.com/css?family=Raleway|Varela+Round|Coda);

@import url(http://weloveiconfonts.com/api/?family=entypo);

[class*="entypo-"]:before {
	font-family: 'entypo', sans-serif;
}


.title-pen {
	margin-top: 30px; color : #333;
	font-family: "Coda", sans-serif;
	text-align: center;
	color: #333;
	position:relative;
	left:-70px;
}

#profile {
	position: relative;
	top: 60px;
	left: 500px; width : 700px;
	height: 500px;
	background: #fff;
	width: 700px; height : 500px; background : #fff;
	border-radius: 5px;
/* 	border:1px solid #ccc; */
}

.user-profile  .username {
	position: relative;
	left: 390px;
	top: -290px; color : #658585;
	font-size: 3.53em;
	font-family: "Coda", sans-serif;
	font-weight: bold;
	color: #658585
}

.user-profile  .bio {
	margin: 10px;
	display: inline-block;
	margin-left: 10.43em;
	color: #e76043;
	font-size: 1.0em;
	font-family: "varela round", sans-serif;
	position: relative;
	left: 290px;
	top: -270px;
}

.user-profile>.description {
	margin: auto;
	margin-top: 1.35em;
	margin-right: 4.43em;
	width: 500px;
	height:auto;
	color: #c0c5c5;
	font-size: 1.8em;
	font-family: "varela round", sans-serif;
	position: relative;
	left: 15px;
	top: -200px;
}

.user-profile>img.avatar {
	padding: .7em;
	position: relative;
	left: 92px;
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
	background: #4eb6b6;
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
width:500px;
height:600px;
position:relative;
top:-205px;
left:10px;

}
#textOverImage{
margin:auto;
text-align:center;
padding:5px;
max-width:400px;
}
</style>
<title>Profile</title>
</head>
<body>
	<!-- ---------------------------------Navbar------------------------------------------------ -->
	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">

			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Sample</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">Dropdown
							<span class="caret"></span>
					</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Link</a></li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">Second
									Level Menu ! <i class="fa fa-chevron-right"></i>
							</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="#">Link 1</a></li>
									<li><a href="#">Lik 2</a></li>
									<li><a href="#">Link 3</a></li>
								</ul></li>
							<li><a href="#">Link</a></li>
							<li><a href="#">Link</a></li>
						</ul></li>
					<!-- .dropdown -->
				</ul>
				<!-- .nav .navbar-nav -->
			</div>
			<!-- /.navbar-collapse -->

		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-------------------------------------------------Navbar--------------------------------------------------------- -->


	<h1 class="title-pen">User Profile</h1>
   <a style="position:relative;left:1000px;top:-10px;color:#aaa8e0" href="profileEdit.jsp" ">프로필 수정</a>	
	<div class="user-profile" id="profile">
		<img class="avatar"
			src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTF_erFD1SeUnxEpvFjzBCCDxLvf-wlh9ZuPMqi02qGnyyBtPWdE-3KoH3s"
			alt="Ash" />
      
		<div class="username">Will Smith <span>님!</span></div>
		<div class="bio">지역 : 한국,서울</div>
		<br>
		<div class="bio">회원가입 : 2017.08</div>
		<br>
		<div class="bio">이메일 : plmn855000@gmail.com</div>
		<br>
		<div class="bio">전화번호 : 010-6402-6090</div>
		<div class="description">Hi I'm will smith who like traveling.
			want to enjoy through Villim! i know what i want to talk about 제가 진짜 한국 좋아해요 ㅋㅋㅋㅋ 아쏴바리 </div>
		<ul class="data">
			<li><span id="span"> 숙소</span> <span class="entypo-home">
					1</span></li>   <!-- 숙소 가지고 있는 count 가져오기 -->
		</ul>
		<div id="showHouseContainer" class=container>
	<div class="gallery_product col-lg-6 col-md-8 col-sm-8 col-xs-8 filter hdpe" style="margin-top:12px;">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
                
                <div class="carousel-caption" id="textOverImage">
              <p>United Kingdom- London Apartment</p>
            </div>
            </div>
            
            
            <div class="gallery_product col-lg-6 col-md-8 col-sm-8 col-xs-8 filter hdpe" style="margin-top:12px;">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
                <div class="carousel-caption" id="textOverImage">
              <p>세종시 새뜸마을 아파트 에서 함께 놀자~!!!!!</p>
            </div>
            </div>
            
            <div class="gallery_product col-lg-6 col-md-4 col-sm-4 col-xs-6 filter hdpe" style="margin-top:12px;">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
                <div class="carousel-caption" id="textOverImage">
              <p>아무말 왈왈왈왈아라 그래요 우리집에서 노세요 우리집 공짜로 선착순 3명 컴온 베이비비비비비~!</p>
            </div>
            </div>
            
            <div class="gallery_product col-lg-6 col-md-4 col-sm-4 col-xs-6 filter hdpe" style="margin-top:12px;">
                <img src="http://fakeimg.pl/365x365/" class="img-responsive">
                 <div class="carousel-caption" id="textOverImage">
              <p>런던에서 하룻밤</p>
            </div>
            </div>
            
            
            
            
		</div>

		
	</div>




	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>