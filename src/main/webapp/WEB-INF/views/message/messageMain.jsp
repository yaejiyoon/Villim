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
<title>메세지</title>

<link rel= "stylesheet" type="text/css" href="/resources/css/message/messageMain.css">

<script>
$(document).ready(function() {

	$('#select-default').bind("click", toggle);

	function toggle() {
		if ($('#select-dropdown').hasClass('open')) {
			collapse();
		} else {
			expand();
		}
	}
	function expand() {
		$('#select-dropdown').removeClass('closed').addClass('open');

		options = $('.select');

		options.each(function(index) {
			var layer = options.length - index;
			$(this).css("top", 40 * index + "px");
			$(this).css("width", 230);
			$(this).css("margin-left", -115);
		});
	}
	function collapse() {
		$('#select-dropdown').removeClass('open').addClass('closed');

		options = $('.select');

		options.each(function(index) {
			var layer = options.length - index;
			$(this).css("z-index", layer);
			$(this).css("top", 2 * index + "px");
			$(this).css("width", 230 - 2 * index);
			$(this).css("margin-left", -115 + index);
		});
	}

	$('.option').bind("click", select);

	function select() {
		if ($('#select-dropdown').hasClass('open')) {
			var selection = $(this).text();
			$('#select-default').text(selection);
			var data = $(this).data("id");

			window.dropdown = data;
			console.log(window.dropdown);

			collapse();
		} else {
			expand();
		}
	}

	collapse();
});
	

</script>
</head>
<body>
<%@ include file="../../resource/include/header_profile.jsp" %>

<div id="wrapper" style="height:auto; margin-bottom:20vh; width:40vw; margin-top:10vh;position:relative;left:30%;">


<div id="select-dropdown" class="closed" >
    <div id="select-default" class="select default">모든 여행 메세지 (몇개) </div>
    <div class="select option" data-id="hexpound">모든 여행 메세지 (몇개)</div>
    <div class="select option" data-id="hexclean">읽지 않음 (몇개)</div>

		</div>
		
		
			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
						<li class="active">
							<a href="#tab_default_1" data-toggle="tab">
							여행 </a>
						</li>
						<li>
							<a href="#tab_default_2" data-toggle="tab">
							호스팅 </a>
						</li>
						
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab_default_1">
						
						<div style="position:relative;height:10vh;border:1px solid yellow">
							<img style="position:relative;left:1vw;top:1.3vh;width:7vh;height:7vh;" src="https://secure.gravatar.com/avatar/de9b11d0f9c0569ba917393ed5e5b3ab?s=140&r=g&d=mm" class="img-circle">
							
							<h5 style="position:relative; left:6vw;top:-5vh;">Sarah Son</h5>
							<h5 style="position:relative; left:6vw;top:-5vh;">08월 22일</h5>
							
							<h5 style="position:relative;left:14.5vw;top:-10.4vh;color:gray;">문의좀 드릴게요 여기서 35박 할 수 있을까요?</h5>
							
							</div>
						</div>
						<div class="tab-pane" id="tab_default_2">
							여기다 호슽팅 관련된 내가 쓴 거 나타내기
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