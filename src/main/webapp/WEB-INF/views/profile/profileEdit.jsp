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


<title>마이페이지</title>
<style>
.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -6px;
	margin-left: -1px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}

.dropdown-submenu:hover>a:after {
	border-left-color: #fff;
}

.dropdown-submenu.pull-left {
	float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
	left: -100%;
	margin-left: 10px;
}
.avatar{
padding: .7em;
	position: relative;
	left: 230px;
	top: 10px; 
	height : 20.23em;
	width: 20.23em;
	border-radius: 18em;
	height: 20.23em;
}

#imageChangeBt{
position:relative;
top:-40px;
left:-120px;
}
</style>



<script>
	$(document).ready(function() {

		// For the Second level Dropdown menu, highlight the parent	
		$(".dropdown-menu").mouseenter(function() {
			$(this).parent('li').addClass('active');
		}).mouseleave(function() {
			$(this).parent('li').removeClass('active');
		});

	});
</script>
</head>
<body>
	<%@ include file="../../resource/include/header.jsp" %>
	
	<div class="" style="position: relative; left: 250px; top: 56px;">
		<a style="font-size: 19px; position: relative; top: -24px; left: 0px; color:gray;text-decoration: none;font-weight:bold;">프로필
			수정</a> <a
			style="font-size: 18px; position: relative; top: 23px; left: -100px; color:gray;">후기</a>
		<button id="profileShowBt" class="btn btn-default"
			style="position: relative; left: -150px; top: 80px; width: 150px; text-decoration: none;font-weight:bold;"
			; onclick="location.href='profileShow.jsp'";>프로필 보기</button>


	</div>
	<div class="panel panel-default"
		style="width: 50%; position: absolute; left: 500px">
		<div class="panel-heading">
			<h3 class="panel-title" >프로필 수정</h3>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" method="post"
				action="index.php">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="예 : 김메시" value="">
					</div>
				</div>
				<div class="form-group">
					<label for="gender" class="col-sm-2 control-label">성별</label>
					<div class="col-sm-3">
						<!-- <input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" value=""> -->
						<select class="form-control inputstl">
							<option>남자</option>
							<option>여자</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="birthDate" class="col-sm-2 control-label">생년월일</label>
					<div class="col-sm-2">

						<input type="text" class="form-control" id="year" maxlength="4">

					</div>
					<label for="year" class="col-sm-1 control-label">년</label>
					<div class="col-sm-2">

						<input type="text" class="form-control" id="month" maxlength="2">

					</div>
					<label for="month" class="col-sm-1 control-label">월</label>
					<div class="col-sm-2">

						<input type="text" class="form-control" id="day" maxlength="2">

					</div>
					<label for="day" class="col-sm--1 control-label">일</label>
				</div>

				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">이메일 주소</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="email" name="email"
							value="">
					</div>
				</div>

				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone" name="phone"
							value="">
					</div>
				</div>

				<div class="form-group">
					<label for="human" class="col-sm-2 control-label">거주 도시</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="location"
							name="location" value=""
							placeholder="예: 프랑스 파리, 뉴욕 맨하튼, 호주 시드니 , 영국 런던">
					</div>
				</div>

				<div class="form-group">
					<label for="message" class="col-sm-2 control-label">자기 소개</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="4" name="message"
							style="resize: vertical"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="message" class="col-sm-2 control-label"></label>
					<div class="col-sm-10" style="color: gray">Villim은 사람들 간의 관계를
						기반으로 만들어졌습니다.</div>

					<div class="col-sm-10"
						style="color: gray; position: relative; left: 116px; top: 10px;">회원님이
						어떤 사람인지 알려주세요. 어떤 것들을 좋아하는지 알려주세요.</div>

					<div class="col-sm-10"
						style="color: gray; position: relative; left: 116px; top: 10px;">
						가장 좋아하는 여행지, 책, 영화, TV 프로그램, 음악, 음식 등 뭐든지 좋습니다.</div>

					<div class="col-sm-10"
						style="color: gray; position: relative; left: 116px; top: 16px;">
						회원님은 어떤 스타일의 게스트 또는 호스트인가요? 인생의 좌우명은 무엇인가요?</div>

				</div>


				<div class="form-group">
					<div class="col-sm-12 col-sm-offset-2">
						<input id="submit" name="submit" type="submit" value="저장하기"
							class="btn btn-default"
							style="margin-top: 15px; margin-left: 470px;">
					</div>
				</div>

			</form>
		</div>
	</div>



<div class="panel panel-default"
		style="width: 50%; position: absolute; left:500px;top:800px">
		<div class="panel-heading">
			<h3 class="panel-title">사진 수정</h3>
		</div>
		<div class="panel-body">
			<form class="form-horizontal" role="form" method="post"
				action="index.php">
				<img class="avatar"
			src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTF_erFD1SeUnxEpvFjzBCCDxLvf-wlh9ZuPMqi02qGnyyBtPWdE-3KoH3s"
			alt="Ash" />
			

				<div class="form-group">
					<div class="col-sm-12 col-sm-offset-2">
						<button id="imageChangeBt" name="submit" type="submit"
							class="btn btn-default"
							style="margin-top: 15px; margin-left: 470px;"><img src="../photo.png" style="width:23px; padding-right: 3px;">새로운 사진 변경</button>
					</div>
				</div>

			</form>
		</div>
	</div>

	
<%@ include file="../../resource/include/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>