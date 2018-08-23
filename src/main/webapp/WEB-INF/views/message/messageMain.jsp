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
<style>

.new-item-badge {
position: absolute;
background: #92B7BD;
z-index: 999;
border-radius: 3px;
color: #fff;
font-size: 75%;
padding: 2px 4px 0;
top: 0.5vh;
left: 15.8vw;
line-height: 1.4;
-ms-transform: rotate(-7deg);
-webkit-transform: rotate(-7deg);
transform: rotate(-0deg);
-webkit-transition: 0 .1s ease-in;
-moz-transition: 0 .1s ease-in;
-o-transition: 0 .1s ease-in;
transition: transform .1s ease-in;
} /* Most of this code is necessary to style and position the badge. */

</style>
<script>


 $(document).ready(function() { 
	
	 
/* 	 $('#select-default').bind("click", toggle);

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

	collapse();  */
	

	
	/* host */
	
/* 	
	 $('#select-default2').bind("click", toggle);

		function toggle() {
			if ($('#select-dropdown2').hasClass('opens')) {
				collapse();
			} else {
				expand();
			}
		}
		function expand() {
			$('#select-dropdown2').removeClass('closeds').addClass('opens');

			options = $('.choice');

			options.each(function(index) {
				var layer = options.length - index;
				$(this).css("top", 40 * index + "px");
				$(this).css("width", 230);
				$(this).css("margin-left", -115);
			});
		}
		function collapse() {
			$('#select-dropdown2').removeClass('open').addClass('closed');

			options = $('.choice');

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
			if ($('#select-dropdown2').hasClass('open')) {
				var selection = $(this).text();
				$('#select-default2').text(selection);
				var data = $(this).data("id");

				window.dropdown = data;
				console.log(window.dropdown);

				collapse();
			} else {
				expand();
			}
		}

		collapse();  */
	
		
 }); 
	
	
 function ChangeGuestList() {
	    var guestList = document.getElementById("guestCheck");
	 
       
       
        
	    var selGuestList = guestList.options[guestList.selectedIndex].value;
	    alert("게스트 : "+selGuestList);
	    if(selGuestList=="noGuestRead"){
	    	alert("noGuestRead선택");
	    	$('.guestMsg').hide();
	         
	   var guestUnreadMsg=[];
	   var guestMemberInfo=[];
	   
	   
	    	
	    	$.ajax({
	    		contentType : 'application/json; charset=UTF-8',
	    		type:"GET",
	    		url:"msgMainGuestUnRead.msg",
	    		 dataType : 'json',
	    		success:function(data){
	    			/* alert(data.jarrayContent.message_content); */
	    			
	    			
                    alert(data.jarrayContent);
	    			guestUnreadMsg=(data.jarrayContent);
	    			guestMemberInfo=(data.jarrayguestMember);
	    			
	    			if(guestUnreadMsg.length>0||guestMemberInfo.length>0){
	    				for(var i=0;i<guestUnreadMsg.length;i++){
	    					console.log(guestUnreadMsg[i]);
	    				}
	    				
	    				for(var i=0;i<guestMemberInfo.length;i++){
	    					console.log(guestMemberInfo[i]);
	    				}
	    				
	    			}
	    			/* $('.guestMsg').html(); */

	    		}
	    		
	    		
	    		
	    		
	    	});//ajax
	    	alert("ajax진입");
	    }else{
	    	alert("allHostMsg선택");
	    	
           $.ajax({
	    		
	    		type:"GET",
	    		url:"msgMainGuestAllRead.msg",
	    		success:function(data){
	    			alert();
	    		}
	    		
	    		
	    		
	    		
	    	});//ajax
	    	
	    	
	    	
	    	
	    	$('.guestMsg').hide();
	    }

	} 
	
function ChangeHostList(){
	var hostList = document.getElementById("hostCheck");
	 var selhostList = hostList.options[hostList.selectedIndex].value;
	 alert(" 호스트 : "+selhostList);
}	
</script>
</head>
<body>
<%@ include file="../../resource/include/header_profile.jsp" %>

<div id="wrapper" style="height:auto; margin-bottom:20vh; width:40vw; margin-top:10vh;position:relative;left:30%;">



		
		
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
					<div class="tab-content" id="dd">
		
		<div class="tab-pane active" id="tab_default_1" style="height:auto;">
		<select class="Guest" name="guestSelect" id="guestCheck" onchange="ChangeGuestList();" style="position:relative;left:33.8vw;top:-7vh;width:15vw;height:4.5vh;padding:0" required>
        <option id="allGuestMsg" value="allGuestMsg">모든 여행 메세지 ( ${guestMsgAllCount}개 ) </option>
        <option id="noGuestRead" value="noGuestRead">읽지 않음 ( ${guestMsgUnreadCount} 개)</option>
      </select>
<%-- 			 <div id="select-dropdown" class="closed" >
    <div id="select-default" class="select default">모든 여행 메세지 ( ${guestMsgAllCount}개 ) </div>
    <div class="select option" data-id="allGuestMsg">모든 여행 메세지 ( ${guestMsgAllCount}개 )</div>
    <div class="select option" data-id="noGuestRead">읽지 않음 (몇개)</div>

		</div>  --%>
		
	
						
						<c:forEach items="${guestMessage}" var="message" varStatus="i">
						
						<div class="guestMsg">
						<div style="position:relative;height:10vh;">
							<c:forEach items="${hostMemberInfo}"  var="member">
							<c:if test="${member.member_email eq message.host_email}">
							<c:choose>
							<c:when test="${member.member_picture eq null}">
							<img style="position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" class="img-circle">
							</c:when>
							<c:otherwise>
							<img style="position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;" src="files/${member.member_picture}" class="img-circle">
							</c:otherwise>
							</c:choose>
							<h5 style="position:relative; left:6vw;top:-7vh;">${member.member_name}</h5>
							<h5 style="position:relative; left:6vw;top:-7vh;">${message.message_time}</h5>
							<c:choose>
							<c:when test="${message.message_read==0}">
							 <div class="new-item-badge">New</div>
							<a href="messageRoomEnter.msg?message_room_seq=${message.message_room_seq}&home_seq=${message.home_seq}&member_picture=${member.member_picture}&member_name=${member.member_name}" style="position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;">${message.message_content}</a><br>
							</c:when>
							<c:otherwise>
							<a href="messageRoomEnter.msg?message_room_seq=${message.message_room_seq}&home_seq=${message.home_seq}&member_picture=${member.member_picture}&member_name=${member.member_name}" style="position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;">${message.message_content}</a><br>
							</c:otherwise>
							</c:choose>
							<a href="messageRoomEnter.msg?message_room_seq=${message.message_room_seq}&home_seq=${message.home_seq}&member_picture=${member.member_picture}&member_name=${member.member_name}" style="position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;">${member.member_location} &nbsp;(${message.checkIn} - ${message.checkOut})</a></c:if></c:forEach>
							
							<h5 style="position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;">문의</h5>
							</div>  <c:if test="${not i.last}"><hr style="width:88%; color:gray;position:relative;top:-2vh;"></c:if>
							</div>
							</c:forEach>
							
						</div>
						
						
						<div class="tab-pane" id="tab_default_2" style="height:auto;">

		  <select class="" name="category" id="hostCheck" onchange="ChangeHostList()" style="position:relative;left:33.8vw;top:-7vh;width:15vw;height:4.5vh;padding:0;" required >
        <option id="allHostMsg">모든 여행 메세지 ( ${hostMsgAllCount}개 )</option>
        <option id="noHostRead">읽지 않음 (몇개)</option>

      </select>

				
							<c:forEach items="${hostMessage}" var="messageH" varStatus="i">
						
						
						<div style="position:relative;height:10vh;" >
							<c:forEach items="${guestMemberInfo}"  var="memberH">
							<c:if test="${messageH.host_email eq userId}">
							<img style="position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;" src="files/${memberH.member_picture}" class="img-circle">
							
							<h5 style="position:relative; left:6vw;top:-7vh;">${memberH.member_name}</h5>
							<h5 style="position:relative; left:6vw;top:-7vh;">${messageH.message_time}</h5>
							
							<c:choose>
							<c:when test="${messageH.message_read==0}">
							  <div class="new-item-badge">New</div>
							<a href="messageHostRoomEnter.msg?message_room_seq=${messageH.message_room_seq}&home_seq=${messageH.home_seq}&member_picture=${memberH.member_picture}&member_name=${memberH.member_name}&member_email=${memberH.member_email}" style="position:relative;left:17.5vw;top:-13.4vh;color:gray;text-decoration:none;font-weight:800;">${messageH.message_content}</a><br>
							</c:when>
							<c:otherwise>
							<a href="messageHostRoomEnter.msg?message_room_seq=${messageH.message_room_seq}&home_seq=${messageH.home_seq}&member_picture=${memberH.member_picture}&member_name=${memberH.member_name}&member_email=${memberH.member_email}" style="position:relative;left:17.5vw;top:-13.4vh;color:gray;text-decoration:none;">${messageH.message_content}</a><br>
							</c:otherwise>
							</c:choose>
							<a href="messageHostRoomEnter.msg?message_room_seq=${messageH.message_room_seq}&home_seq=${messageH.home_seq}&member_picture=${memberH.member_picture}&member_name=${memberH.member_name}&member_email=${memberH.member_email}" style="position:relative;left:17.5vw;top:-13.4vh;color:gray;text-decoration:none;">${memberH.member_location} &nbsp;(${messageH.checkIn} - ${messageH.checkOut})</a></c:if></c:forEach>
							
							<h5 style="position:relative; left:40vw;top:-18vh;color:#f9c945;font-weight:800;">문의</h5>
							</div>  <c:if test="${not i.last}"><hr style="width:88%; color:gray;"></c:if></c:forEach>
					
							
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