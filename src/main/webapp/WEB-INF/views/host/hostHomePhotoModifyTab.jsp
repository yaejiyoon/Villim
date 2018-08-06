<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

<title>호스트 홈 사진 수정 탭</title>

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	height: 1200px;
}

.wrapper-sub {
	border: 1px dotted black;
	width: 70%;
}

.pic {
	margin: 50px auto;
	width: 80%;
	height: 300px;
	border: 1px dotted black;
}

.pic-add {
	margin-top: 50px;
	width: 30%;
	height: 230px;
	border: 1px dotted black;
}

.add-img {
	width: 40%;
	height: 40%;  
}
</style>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id="wrapper-sub">
			<div>
				<a onclick="history.back()">${hdto.home_name } 수정으로 돌아가기</a>
			</div>
		</div>
		<div>
			<p>
				<b>사진</b>
			</p>
			<p>게스트에게 숙소의 실제 모습을 보여주는 사진을 추가하세요.</p>
			<div class="pic">
				<c:if test="${hplist eq null }">
					<form id="photoForm" action="uploadPhoto.do?seq=${hdto.home_seq }"
						method="post" enctype="multipart/form-data">
						<input type="file" id="file2" name="file"
							onchange="photoForm.submit()" style="display: none;">
							<img id="upimg" class="add-img"
							src="<c:url value='/resources/img/plus.jpg'/>">
					</form>

				</c:if>
			</div>
		</div>

		<c:if test="${hplist ne null }">
		
		<c:forEach var = "hplist" items="${hplist }">
			<div class="pic-add">
			<img class="add-img" src="<c:url value='files/${hplist.home_pic_name }'/>">
			</div>	
		</c:forEach>
			<div class="pic-add">
				<form id="photoForm" action="uploadPhoto.do?seq=${hdto.home_seq }"
					method="post" enctype="multipart/form-data">
					<input type="file" id="file2" name="file"
						 style="display: none;"> 
					<img id="upimg" class="add-img"
						src="<c:url value='/resources/img/1.jpg'/>">
						
<!-- 						onchange="photoForm.submit()" -->
				</form>
			</div>
			
		</c:if>
	</div>
	<script>
		$("#upimg").click(function(e) {
			e.preventDefault();
			$("#file2").click();
		});
	</script>
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>