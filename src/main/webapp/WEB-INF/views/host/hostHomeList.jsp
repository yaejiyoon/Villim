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

<style>
#wrapper {
	margin: 30px auto;
	margin-top: 50px;
	margin-bottom: 100px;
	height: auto;
	width: 100%;
}
body{
min-width:1280px;
}
#wrapper-sub {
	width: 70%;
}

#left-sub div a {
	color: #A4A4A4;
	font-size: 16px;
}
#left-sub div a:hover {
	text-decoration: none;
	color:#E6E6E6;
}
#center {
	float: left;
	display: inline-block;
}

#left {
	display: inline-block;
	float: left;
}



#right {
	display: inline-block;
	float: right;
	padding-right: 0;
}

#managing-t {
	font-size: 25px;
	margin-bottom: 30px;
}

#managing-c {
	border: 1px solid #A4A4A4;
	width: 100%;
	height: 250px;
	margin-bottom: 50px;
}

#managing-c-wrap {
	height: 77%;
}

#managing-f {
	width: 100%;
	height: 23%;
	border-top: 1px solid #A4A4A4;
}

#managing-f div span {
	font-size: 15px;
	margin-left: 20px;
}

#managing-f div span a:hover {
	text-decoration: none;
}

#managing-f div {
	margin-top: 18px;
}

#managing-c-wrap-t {
	width: 60%;
	height: 90%;
	display: inline-block;
	float: left;
	font-size: 22px;
	margin-top: 20px;
}

#managing-c-wrap-p {
	width: 40%;
	height: 100%;
	display: inline-block;
	float: left;
}

#pic-wrap {
	margin-top: 20px;
	widht: 50%;
	height: 80%;
}

.pic {
	width: 100%;
	height: 100%;
}

#pic-add-wrap {
	margin-top: 20px;
	widht: 50%;
	height: 80%;
}
  
.pic-add {
	margin: 22px auto;
	margin-left: 45px;
	height: 70%;
	width: 70%;
}
</style>
<title>숙소</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id=wrapper>
		<div id=wrapper-sub class=container>
			<div id=left class="col-md-3">
				<div id=left-sub>
					<div style="margin-bottom: 10px; ">
						<b><a href="hostHomeList.do" style="color:black">숙소 목록</a></b>
					</div>
					<div><a href="hostReserveManaging.do">예약 관리</a></div>  
				</div>
			</div>
			<div id=right class="col-md-9">
				<c:if test="${list eq null }">
					<div id="managing-c">
						<div>호스트하는 숙소가 없습니다.</div>
					</div>
				</c:if>
				<c:if test="${list ne null }">
					<div id="managing-t">
						<b>운영 중</b>
					</div>
					<c:forEach var="list" items="${list }">
						<div id="managing-c">
							<div id=managing-c-wrap>
								<div id=managing-c-wrap-t>${list.home_name }</div>
								<div id=managing-c-wrap-p>

									<c:if test="${list.home_main_pic ne null}">
										<div id=pic-wrap>
											<img class="pic"
												src="<c:url value='files/${list.home_main_pic }'/>">
										</div>
									</c:if>
									<c:if test="${list.home_main_pic eq null}">
										<div id=pic-add-wrap>
											<img class="pic-add"
												src="<c:url value='/resources/img/photo.png'/>">
										</div>
									</c:if>
								</div>
							</div>

							<div id="managing-f">
								<div>
									<span><a href="hostHomeTab.do?seq=${list.home_seq }">수정하기</a></span> <span><a
										href="">미리보기</a></span> <span><a href="fullCalendar.do?seq=${list.home_seq }">달력</a></span>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
	
	<%@ include file="../../resource/include/footer.jsp"%>
</body>
</html>