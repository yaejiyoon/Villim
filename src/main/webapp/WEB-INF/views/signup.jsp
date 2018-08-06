<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim 회원가입</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
#wrapper {
	width: 100%;
	margin: 0px auto;
	text-align: center;
}

#middle {
	width: 100%;
}
</style>

<script>

 	$(document).ready(function(){
			
		$("#yearBtn").click(function(){
			alert("dd"); 
 			$.ajax({
		        url : "year.do",
		        type: "get",
		        data : { "id" : $("#id").val() }, 
		        success : function(response){
		        	var html = '';
					for(var i=0; i<response.size(); i++){
						html += '<li>';
						html += response[i];
						html += '</li>';
					}
						$("yearList").after(html);
		           
		        }
				
		    }); 
		
		});
	})
 
</script>
</head>
<body>

	<div id="wrapper">
		<div id="title">
			<font><h3>정보를 입력을 완료하세요</h3></font><br> <font>회원 가입 절차를
				완료하려면 회원님의 정보를 확인하고 빠진 정보를 입력해</font> <font>주세요.</font>
		</div>
		<div id="middle">
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${secondName}">
			</div>
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${firstName}">
			</div>
			<div class="input-group">
				<input type="text" class="form-control"
					placeholder="Recipient's username" aria-describedby="basic-addon2"
					value="${accountEmail}">
			</div>
			<br>
		</div>
		<div id="bottom">
			<font>생년월일</font>
			<div class="dropdown" id="month">
				<button id="dLabel" type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					월 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
					<li>1월</li>
				</ul>
			</div>

			<div class="dropdown" id="day">
				<button id="dLabel" type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					월 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
					<li>1일</li>
				</ul>
			</div>

			<div class="dropdown" id="year">
				<button type="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false" id="yearBtn">
					월 <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel" id="yearList">
		
				</ul>
			</div>
		</div>

	

	</div>

</body>
</html>