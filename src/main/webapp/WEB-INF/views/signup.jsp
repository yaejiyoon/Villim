<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim 회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
#wrapper {
	width: 100%;
	margin: 0px auto;
	text-align: center;
}

#middle {
	width: 100%;
	text-align: center;
}
#monthBtn{
	width:20%;

}
#yearBtn{
	width:20%;

}
#dayBtn{
	width:20%;

}
#completeBtn{
	width:80%;
	
}
</style>

<script>

 	$(document).ready(function(){
			
		$("#yearBtn").click(function(){
			
			
 			$.ajax({
		        url : "year.do",
		        type: "get",
		        
		        success : function(response){
		        	
		        	
		        	var length = response.length;
		        	
		        	var html = '';
		        	
		        
					for(var i=0; i<response.length; i++){
						html += '<li>';
						html += '<a>';
						html += response[i]+"년";
						html += '</a>';
						html += '</li>';
						
					}
					
						alert(html);
						$("#yearList").html(html);
		           
		        },
		        error : function() {
					console.log("에러 발생!");
		        }
		    }); 
		
		});
		
		$("#dayBtn").click(function(){
			var month = $("#monthInput").val();
			var year = $("#yearInput").val();
			
 			$.ajax({
		        url : "day.do",
		        type: "get",
		        data:{
		        	
		        	month : month,
		        	year : year
		        }, 
		        success : function(response){
		        	
		        	
		        	var length = response.length;
		        	
		        	var html = '';
		        	
		        
					for(var i=0; i<response.length; i++){
						html += '<li>';
						html += '<a>';
						html += response[i]+"일";
						html += '</a>';
						html += '</li>';
						
					}
					
						alert(html);
						$("#dayList").html(html);
		           
		        },
		        error : function() {
					console.log("에러 발생!");
		        }
		    }); 
		
		});
		
		$("#monthList").on("click", "li", function(){
			alert($(this).text());
			$("#monthInput").val($(this).text());
		});
		$("#yearList").on("click", "li", function(){
			alert($(this).text());
			$("#yearInput").val($(this).text());
		});
		$("#dayList").on("click", "li", function(){
			alert($(this).text());
			$("#dayInput").val($(this).text());
		});
		
		$("completeBtn").click(function(){
			
			
			window.close();
			
				
		});
	});
 
</script>
</head>
<body>

	<div id="wrapper">
		<div id="title">
			<font><h3>정보를 입력을 완료하세요</h3></font><br> <font>회원 가입 절차를
				완료하려면 회원님의 정보를 확인하고 빠진 정보를 입력해</font> <font>주세요.</font>
		</div>
		<form action="info.do" method="post">
		<div id="middle">
			<div class="input-group">
				<input type="text" name="secondName" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${secondName}">
			</div>
			<div class="input-group">
				<input type="text" name="firstName" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${firstName}">
			</div>
			<div class="input-group">
				<input type="text" name="accountEmail" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${accountEmail}">
			</div>
			<br>
		</div>
		<div id="bottom">
			<font>생년월일</font><br>
			<div class="dropdown" id="month" style="display: inline;">
				<input type="text" name="monthProp" placeholder="일" id="monthInput">
				<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="monthBtn">
				<span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel" id="monthList">
					<li>1월</li><li>2월</li><li>3월</li>
					<li>4월</li><li>5월</li><li>6월</li>
					<li>7월</li><li>8월</li><li>9월</li>
					<li>10월</li><li>11월</li><li>12월</li>					
				</ul>
			</div>

			<div class="dropdown" id="day" style="display: inline;">
				<input type="text" name="dayProp" placeholder="일" id="dayInput">
				<a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="dayBtn">
				<span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel" id="dayList">
				</ul>
			</div>
			

			<div class="dropdown" id="year" style="display: inline;">
				<input type="text" name="yearProp" placeholder="년" id="yearInput"><a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="yearBtn">
<!-- 				<button type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" id="yearBtn">
					년 <span class="caret"></span>
				</button> -->
				<span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel" id="yearList">
				</ul>
			</div>
		</div><br>

		<div id="complete">
		<button id="completeBtn" class="btn btn-danger"><font>가입 완료</font></button>
		</div>
		</form>
	</div>

</body>
</html>