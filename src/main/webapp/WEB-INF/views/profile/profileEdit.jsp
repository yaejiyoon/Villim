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

<!-- animated -->
<link rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />
<title>마이페이지</title>
<style>

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

.msg {
    background: #fefefe;
    color: #666666;
    font-weight: bold;
    font-size: small;
    padding: 12px;
    padding-left: 16px;
    border-top: solid 3px #CCCCCC;
    border-radius: 5px;
    margin-bottom: 10px;
    -webkit-box-shadow: 0 10px 10px -5px rgba(0,0,0,.08);
       -moz-box-shadow: 0 10px 10px -5px rgba(0,0,0,.08);
            box-shadow: 0 10px 10px -5px rgba(0,0,0,.08);
}
.msg-clear {
    border-color: #fefefe;
    -webkit-box-shadow: 0 7px 10px -5px rgba(0,0,0,.15);
       -moz-box-shadow: 0 7px 10px -5px rgba(0,0,0,.15);
            box-shadow: 0 7px 10px -5px rgba(0,0,0,.15);
}

.msg-magick {
    border-color: #e0b8f2;
}

.msg-magick-text {
    color: #bb39d7;
}
@keyframes bounce{
100% {
left:100%;
    overflow: hidden;
    opacity: 0;
    display: none;
    visibility: hidden;
  }
  
  
  .animated bounce delay-3s msg msg-magick {
  animation: bounce 3s;
  -webkit-transition: opacity 10s ease-in-out;
  -moz-transition: opacity 10s ease-in-out;
  transition: opacity 10s ease-in-out;
}
  
  
  
}
</style>



<script>


	 $(document).ready(function() {

		 
		 /* 성별 DB값 가져오기 */
		 var gender="${result.member_gender}";
		 
		 $('option[value='+gender+']').attr('selected','selected');
		 
		 /* 생년월일 split */
		 var birthdate="${result.member_birth}";   
		 var year=birthdate.split('년')[0];
		 var month=birthdate.split('월')[0].split('년')[1];
		 var date=birthdate.split('일')[0].split('월')[1];
		
		 $('#year').val(year); 
		 $('#month').val(month);  
		 $('#day').val(date);
		 
		 
	        if($('#success').val() =="success"){
	        	$('#profileForm').prepend("<div class=\"alert alert-success\" style=\"width:100%;position:relative;text-align:center;border:none;\" role=\"alert\"><strong>Success! 업데이트에 성공하셨습니다! </strong></div>");
	        	window.setTimeout(function() {
	        	    $(".alert").fadeTo(1000, 0).slideUp(1000, function(){
	        	        $(this).remove(); 
	        	    });
	        	}, 3000);
	        	
	        } 
		
	}); 
	 
	 
	
	 
	 
</script>
</head>
<body>
	<%@ include file="../../resource/include/header_profile.jsp" %>
	
	<input type="hidden" id="success" value="${inputSuccess}">
	
	<div  id="profileForm">
	<div style="position: relative; left: 250px; top: 56px;">
		<a style="font-size: 19px; position: relative; top: -24px; left: -2vw; color:gray;text-decoration: none;font-weight:bold;">프로필
			수정</a> <a href="profileReview.mo"
			style="font-size: 18px; position: relative;z-index:500; top: 23px; left: -6vw; color:gray;text-decoration: none;">후기</a>
		<button id="profileShowBt" class="btn btn-default"
			style="position: relative; left: -11vw;z-index:500; top: 80px; width: 150px; text-decoration: none;font-weight:bold;" onclick="location.href='printProfile.mo'">프로필 보기</button>
<script>

$(document).ready(function(){
	
	$('#profileShowBt').click(function(){
		$(location).attr('href','printProfile.mo');
	})

})

</script>

	</div>
	<div class=container style="height:130vh;position:relative;">
	<div class="panel panel-default"
		style="width: 81%; position: absolute; left: 11vw;">
		<div class="panel-heading">
			<h3 class="panel-title" >프로필 수정</h3>
		</div>
	
		<div class="panel-body">
			<form class="form-horizontal" role="form" method="post"
				action="editProfile.mo">
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="name" name="member_name"
							placeholder="" value="${result.member_name}">
					</div>
				</div>
				<div class="form-group">
					<label for="gender" class="col-sm-2 control-label">성별</label>
					<div class="col-sm-3">
					
						<select id="genderSelect" class="form-control inputstl" name="member_gender">
						<option>선택</option>
							<option id="optionMan" value="남자">남자</option>
							<option id="optionWoman" value="여자">여자</option>
							
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="birthDate" class="col-sm-2 control-label">생년월일</label>
					<div class="col-sm-2">
                        
						<input type="text" class="form-control" id="year" maxlength="4" name="year">

					</div>
					<label for="year" class="col-sm-1 control-label">년</label>
					<div class="col-sm-2">

						<input type="text" class="form-control" id="month" maxlength="2" name="month">

					</div>
					<label for="month" class="col-sm-1 control-label">월</label>
					<div class="col-sm-2">

						<input type="text" class="form-control" id="day" maxlength="2" name="day">

					</div>
					<label for="day" class="col-sm-1 control-label">일</label>
				</div>

				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">이메일 주소</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="email" name="member_email"
							value="${result.member_email}" >
					</div>
				</div>

				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="phone" name="member_phone"
							value="${result.member_phone}">
					</div>
				</div>

				<div class="form-group">
					<label for="human" class="col-sm-2 control-label">거주 도시</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="location"
							name="member_location" value="${result.member_location}"
							placeholder="예: 프랑스 파리, 뉴욕 맨하튼, 호주 시드니 , 영국 런던">
					</div>
				</div>

				<div class="form-group">
					<label for="message" class="col-sm-2 control-label">자기 소개</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="4" name="member_introduction"
							style="resize: vertical">${result.member_introduction}</textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="message" class="col-sm-2 control-label"></label>
					<div class="col-sm-10" style="color: gray; position: relative; left: 0vw; ">Villim은 사람들 간의 관계를
						기반으로 만들어졌습니다.</div>

					<div class="col-sm-10"
						style="color: gray; position: relative; left: 8.3vw; top: 10px;">회원님이
						어떤 사람인지 알려주세요. 어떤 것들을 좋아하는지 알려주세요.</div>

					<div class="col-sm-10"
						style="color: gray; position: relative; left: 8.3vw; top: 10px;">
						가장 좋아하는 여행지, 책, 영화, TV 프로그램, 음악, 음식 등 뭐든지 좋습니다.</div>

					<div class="col-sm-10"
						style="color: gray; position: relative; left:8.3vw; top: 16px;">
						회원님은 어떤 스타일의 게스트 또는 호스트인가요? 인생의 좌우명은 무엇인가요?</div>

				</div>


				<div class="form-group">
					<div class="col-sm-12 col-sm-offset-2">
						<input id="submit" name="submit" type="submit" value="저장하기"
							class="btn btn-default"
							style="margin-top: 5vh; margin-left: 35vw;">
					</div>
				</div>

			</form>
		</div>
	
	</div>
</div>

<!-- 사진 수정  -->
<script>

$(document).on('click','#imageChangeBt',function(){
	 console.log("imageChangeBt");
	 $("#file").click();
	 
});

$(document).on('change',"#file",function(){
	 console.log("file");
	  var form=$('#photoForm')[0];
	  var formData=new FormData(form);
	  
	  $.ajax({
		type:"post",
		enctype:"multipart/form-data",
		url:"editPhoto.mo",
		data:formData,
		processData:false,
		contentType:false,
		cache:false,
		timeout:6000000,
		success:function(resp){
			console.log("성공 : "+resp);
			console.log(resp.getPhoto);
			
			var pic=$('#photo');
			
			pic.attr('src',"<c:url value='files/"+resp.filename+"'/>");
			
			
			
		},error:function(resp){
			console.log("실패");
		}
		   
	  })
	  
	  
})

</script>


<div class="panel panel-default"
		style="width: 49.6%; position: absolute; left: 30.2vw;top:90vh;">
		<div class="panel-heading">
			<h3 class="panel-title">사진 수정</h3>
		</div>
		
		<div class="panel-body">
		<form id="photoForm" class="form-horizontal" method="post"
				action="editPhoto.mo" enctype="multipart/form-data">
			<input type="file" id="file" name="file" style="display:none;">
				<img class="avatar" id="photo"
			src="<c:url value='files/${photo}'/>" alt="사진을 추가해주세요" />
			</form>

				<div class="form-group">
					<div class="col-sm-12 col-sm-offset-2">
						<button id="imageChangeBt" 
							class="btn btn-default" type="button"
							style="margin-top: 15px; margin-left: 470px;"><img src="<c:url value='/resources/img/photo.png'/>" style="width:23px; padding-right: 5px;">새로운 사진 변경</button>
					</div>
				</div>

			
		</div>
		
	</div>
</div>
	

   <%@ include file="../../resource/include/footer.jsp" %>    
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.js"></script>

</body>
</html>