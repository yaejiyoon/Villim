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

<title>후기</title>
<style>
*,
*:after,
*:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.clearfix:before,
.clearfix:after {
	content: " ";
	display: table;
}

.clearfix:after {
	clear: both;
}

body {
	font-family: sans-serif;
	/* background: #f6f9fa; */
}

h1 {
	color: #ccc;
	text-align: center;
}

a {
  color: #ccc;
  text-decoration: none;
  outline: none;
}

/*Fun begins*/
.tab_container {
	width:300px;
	margin: 0 auto;
	position: relative;
	left:100px;
	top:-70px;

}

input, section {
  clear: both;
  padding-top: 10px;
  display: none;
}

label {
  font-weight: 700;
  font-size: 18px;
  display: block;
  float: left;
  width: 20%;
  padding: 1.5em;
  color: #757575;
  cursor: pointer;
  text-decoration: none;
  text-align: center;
  background: #f0f0f0;
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4,
#tab5:checked ~ #content5 {
  display: block;
  padding: 20px;
  background: #fff;
  color: #999;
  border-bottom: 2px solid #f0f0f0;
}

.tab_container .tab-content p,
.tab_container .tab-content h3 {
  -webkit-animation: fadeInScale 0.7s ease-in-out;
  -moz-animation: fadeInScale 0.7s ease-in-out;
  animation: fadeInScale 0.7s ease-in-out;
}
.tab_container .tab-content h3  {
  text-align: center;
}

.tab_container [id^="tab"]:checked + label {
  background: #fff;
  box-shadow: inset 0 3px #0CE;
}

.tab_container [id^="tab"]:checked + label .fa {
  color: #0CE;
}

label .fa {
  font-size: 1.3em;
  margin: 0 0.4em 0 0;
}

/*Media query*/
@media only screen and (max-width: 930px) {
  label span {
    font-size: 14px;
  }
  label .fa {
    font-size: 14px;
  }
}

@media only screen and (max-width: 768px) {
  label span {
    display: none;
  }

  label .fa {
    font-size: 16px;
  }

  .tab_container {
    width: 98%;
  }
}

/*Content Animation*/
@keyframes fadeInScale {
  0% {
  	transform: scale(0.9);
  	opacity: 0;
  }
  
  100% {
  	transform: scale(1);
  	opacity: 1;
  }
}*,
*:after,
*:before {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.clearfix:before,
.clearfix:after {
	content: " ";
	display: table;
}

.clearfix:after {
	clear: both;
}

body {
	font-family: sans-serif;
	/* background: #f6f9fa; */
}

h1 {
	color: #ccc;
	text-align: center;
}

a {
  color: #ccc;
  text-decoration: none;
  outline: none;
}

/*Fun begins*/
.tab_container {
	width: 60%;
	margin: 0 auto;
	padding-top: 70px;
	position: relative;
}

input, section {
  clear: both;
  padding-top: 10px;
  display: none;
}

label {
  font-weight: 700;
  font-size: 15px;
  display: block;
  float: left;
  width: 50%;
  padding: 1.5em;
  color: #757575;
  cursor: pointer;
  text-decoration: none;
  text-align: center;
  background: #f0f0f0;
}

#tab1:checked ~ #content1,
#tab2:checked ~ #content2,
#tab3:checked ~ #content3,
#tab4:checked ~ #content4,
#tab5:checked ~ #content5 {
  display: block;
  padding: 20px;
  background: #fff;
  color: #999;
  border-bottom: 2px solid #f0f0f0;
}

.tab_container .tab-content p,
.tab_container .tab-content h3 {
  -webkit-animation: fadeInScale 0.7s ease-in-out;
  -moz-animation: fadeInScale 0.7s ease-in-out;
  animation: fadeInScale 0.7s ease-in-out;
}
.tab_container .tab-content h3  {
  text-align: center;
}

.tab_container [id^="tab"]:checked + label {
  background: #fff;
  box-shadow: inset 0 3px #868a8e;
}

.tab_container [id^="tab"]:checked + label .fa {
  color: #0CE;
}

label .fa {
  font-size: 1.3em;
  margin: 0 0.4em 0 0;
}

/*Media query*/
@media only screen and (max-width: 930px) {
  label span {
    font-size: 14px;
  }
  label .fa {
    font-size: 14px;
  }
}

@media only screen and (max-width: 768px) {
  label span {
    display: none;
  }

  label .fa {
    font-size: 16px;
  }

  .tab_container {
    width: 98%;
  }
}

/*Content Animation*/
@keyframes fadeInScale {
  0% {
  	transform: scale(0.9);
  	opacity: 0;
  }
  
  100% {
  	transform: scale(1);
  	opacity: 1;
  }
}

</style>
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
	<div class="" style="position: relative; left: 250px; top: 56px;">
		<a style="font-size: 18px; position: relative; top: -24px; left: 0px; color:gray; text-decoration: none;">프로필
			수정</a> <a
			style="font-size: 19px; position: relative; top: 23px; left: -100px;color:gray;
			
			font-weight:bold;">후기</a>
		<a id="profileShowBt" class="btn btn-default"
			style="position: relative; left: -150px; top: 80px; width: 150px; text-decoration: none;font-weight:bold;" onclick="location.href='profileShow.jsp'">프로필 보기</a>


	</div>
	
	<!--  -->
	
	
	
	
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
			<!-- if 후기가 있다면 : 클라이언트 사진과 이름 후기 ,날짜 그리고 거기 -->
			

				<!-- <div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						<button id="imageChangeBt" name="submit" type="submit"
							class="btn btn-default"
							style="margin-top: 15px; margin-left: 470px;"><img src="../photo.png" style="width:23px; padding-right: 3px;">새로운 사진 변경</button>
					</div>
				</div> -->
           <!-- else 후기가 없다면 :  아직 작성된 후기가 없습니다. -->
		
		</div>
	</div>
		      	
		      	
			</section>

			<!-- --------------------------------게스트----------------------------------------------------- -->

			<section id="content2" class="tab-content">
				
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title" style="text-align:left;">작성해야 할 후기</h3>
		</div>
		<div class="panel-body">
			<!-- if 구매를 하고 체크인 날짜이후부터 리뷰쓰기 가능 -->
				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
					<div id="hostInfo">
					<h5 style="color:#595c63;position:relative;left:140px;font-weight:bold;">리뷰는 체크아웃 후에 쓸 수 있습니다.</h5>
					<img src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle" id="hostPhoto">
					<h4 style="position:relative;left:27px;color:#595c63;font-weight:bold;">James Bro</h4>
					</div>
					<h5 style="position:relative;top:-155px;">샌디에이고에서 5성급 펜션 을 위한 공개 리뷰 작성기간 11일 기간을 드립니다.</h5>
						<a href="reviewWrite.jsp" style="position:relative;top:-140px;color:#ff5959;text-decoration:none;">리뷰쓰기</a>
						
					</div>
				</div>

			<!-- else 현재 작성할 후기가 없습니다. 여행을 한번 다녀올 때가 된 것 같네요! -->
		</div>
	</div>

	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title" style="text-align:left;">내가 작성한 후기</h3>
		</div>
		<div class="panel-body">
			<!-- if 작성한 후기가 있다면 호스트 사진과 누구를 위한 리뷰와 그리고 리뷰, 작성한 날짜(예:2018년 8월)-->
			
			<img src="" alt="호스트 사진"/>
		    <!-- 호스트이름, 후기 , 날짜-->
			

				<div class="form-group">
					<div class="col-sm-10 col-sm-offset-2">
						
					</div>
				</div>
             <!-- else 작성한후기 없다면 : 아직 후기를 남기지 않으셨습니다. -->
		</div>
	</div>

			</section>
	
		</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	
	<%@ include file="../../resource/include/footer.jsp" %>
	
</body>
</html>