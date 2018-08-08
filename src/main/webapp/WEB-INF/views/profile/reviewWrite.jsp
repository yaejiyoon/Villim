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

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>후기</title>
<style>
body {
	background: #e9e9e9;
	color: #9a9a9a;
	margin: 0;
}

.card {
	padding-top: 20px;
	margin: 10px 0 20px 0;
	background-color: #ffffff;
	border: 1px solid #d8d8d8;
	border-top-width: 0;
	border-bottom-width: 2px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card.hovercard {
	position: relative;
	width: 300px;
	padding-top: 0;
	overflow: hidden;
	text-align: center;
	background-color: #fff;
}

.card.hovercard img {
	width: 300px;
	height: 200px;
}

.card.hovercard .avatar {
	position: relative;
	top: -40px;
	margin-bottom: -40px;
}

.card.hovercard .avatar img {
	width: 80px;
	height: 80px;
	max-width: 80px;
	max-height: 80px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
}

.card.hovercard .info {
	padding: 4px 8px 10px;
}

.card.hovercard .info .title {
	margin-bottom: 4px;
	font-size: 24px;
	line-height: 1;
	color: #262626;
	vertical-align: middle;
}

.card.hovercard .info .desc {
	overflow: hidden;
	font-size: 12px;
	line-height: 20px;
	color: #737373;
	text-overflow: ellipsis;
}

.card.hovercard .bottom {
	padding: 0 20px;
	margin-bottom: 17px;
}

.card.people .card-bottom {
	position: absolute;
	bottom: 0;
	left: 0;
	display: inline-block;
	width: 100%;
	padding: 10px 20px;
	line-height: 29px;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}


/* 평점  */

 .animated {
    -webkit-transition: height 0.2s;
    -moz-transition: height 0.2s;
    transition: height 0.2s;
}

.stars
{
    margin: 20px 0;
    font-size: 24px;
    color: #d17581;
}

</style>
</head>
<body>

	<h3 style="color: #595c63; position: relative; left: 180px; top: 10px;">평점
		및 후기</h3>


	<div class="container"
		style="position: relative; left: -290px; top: 20px;">
		<div class="card hovercard">
			<img src="https://mdbootstrap.com/img/Photos/Others/images/16.jpg"
				alt="" />
			<div class="avatar"></div>
			<div class="info" style="height: 130px;">
				<img src="http://placehold.it/80X80/333333/&text=Head" alt=""
					style="position: relative; left: -95px; top: 53px; height: 50px; width: 50px;" />
				<div class="title"
					style="font-size: 15px; position: relative; left: 18px; top: 10px;">
					새뜸마을 아파트 5성급</div>
				<div class="desc"
					style="position: relative; left: -8px; top: 5px; font-weight: bold;">호스트:James
					Bro</div>
				<div class="desc" style="position: relative; left: 33px;">2017년
					9월30일~ 2017년 10월2일</div>
			</div>

		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-8" style="position:relative;left:180px;top:-360px;">
				<h3 style="font-weight:bold;">James Bro님에 대한 후기를 쓰세요</h3>
				<h5>14일동안 후기를 작성하실수 있습니다. 회원님이 후기를 작성하셔야 호스트도 회원님의 피드백을 읽을 수
					있습니다. 후기 작성 기간이 종료되면, 회원님의 피드백이 공개됩니다.</h5>
				<h5>호스트는 카테고리별 평점은 보지 못하고 전체 평균 별점만 알 수 있습니다.</h5>
			</div>
		</div>
	</div>


<div class="container" style=" position:relative;left:180px;top:-300px;">
<div class="row">

<div class="col-sm-5">
<h3 style="font-weight:bold; position:relative;top:-30px;">숙박이 어떠셨나요?</h3>
<div style="position:relative;top:15px; font-weight:bold;"><h3 style="display: inline!important;">전체적 만족도 </h3><h5 style="display: inline!important;">(필수항목)</h5></div>

 <div class="stars starrr" data-rating="0"></div>
                            <a class="btn btn-danger btn-sm" href="#" id="close-review-box" style="display:none; margin-right: 10px;"></a>

</div>


</div>


</div>







	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>