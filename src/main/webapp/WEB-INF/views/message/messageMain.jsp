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

.holder {
  padding: 20px 0;
  border-radius: 4px;
  text-align: center;
}

.btn {
  background: white;
  text-decoration: none;
  padding: 20px;
  margin: 10px;
  position: relative;
  vertical-align: middle;
  text-align: center;
  display: inline-block;
  border-radius: 5px;
  transition: box-shadow 0.4s;
}

.btn:hover {
  box-shadow: 0 1px 5px rgba(0,0,0,0.1);
}

.btn__badge {
  background: #FF5D5D;
  color: white;
  font-size: 7px;
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 8px;
  border-radius: 15px;
  z-index:2000;
}


.fa {
  color: #8E8E8E;
}


#loading {
  display: inline-block;
  width: 50px;
  height: 50px;
  border: 3px solid rgba(255,255,255,.3);
  border-radius: 50%;
  border-top-color: #fff;
  animation: spin 1s ease-in-out infinite;
  -webkit-animation: spin 1s ease-in-out infinite;
}

@keyframes spin {
  to { -webkit-transform: rotate(360deg); }
}
@-webkit-keyframes spin {
  to { -webkit-transform: rotate(360deg); }
}
</style>
<script>

	
 function ChangeGuestList() {
	 
          	 
	    var guestList = document.getElementById("guestCheck");
	 
	    var selGuestList = guestList.options[guestList.selectedIndex].value;
	   
	    if(selGuestList=="noGuestRead"){
	   
	    	/* $('.guestMsg').hide(); */

	    	
	    	$.ajax({
	    		contentType : 'application/json; charset=UTF-8',
	    		type:"POST",
	    		url:"msgMainGuestUnRead.msg",
	    		 dataType : 'json',
	    		success:function(data){
	    		
	    			var guestUnreadMsg=data.guestUnreadMsg;
	    			var guestMemberInfo=data.guestMemberInfo;
	    			
	    			console.log(data);
	    			var output="";
	    			
	    			
	    			for(var i=0;i<guestUnreadMsg.length;i++){
	    				for(var i=0;i<guestMemberInfo.length;i++){
	    				output+="<div  style=\"position:relative;height:10vh;top:-2vh;border:1px solid red;\">";
	    				output+="<img style=\"position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;\" src=\"files/"+guestMemberInfo[i].member_picture+"\" class=\"img-circle\">";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+guestMemberInfo[i].member_name+"</h5>";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+guestUnreadMsg[i].message_time+"</h5>";
	    				if(guestUnreadMsg[i].message_read==0){
	    					output+="<div class=\"new-item-badge\">New</div>";
		    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestUnreadMsg[i].message_room_seq+"&home_seq="+guestUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+guestUnreadMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;\">"+guestUnreadMsg[i].message_content+"</a><br>";
	    				}else{
	    					output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestUnreadMsg[i].message_room_seq+"&home_seq="+guestUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+guestUnreadMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestUnreadMsg[i].message_content+"</a><br>";
	    				}
	    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestUnreadMsg[i].message_room_seq+"&home_seq="+guestUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+guestUnreadMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestMemberInfo[i].member_location+" &nbsp;("+guestUnreadMsg[i].checkIn+" - "+guestUnreadMsg[i].checkOut+")</a>";
	    				output+="<h5 style=\"position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;\">문의</h5>";
	    				
	    				
	    				output+="</div>";
	    				 if(!((i + 1) == (guestUnreadMsg.length))){
	    					output+="<hr style=\"width:88%; color:gray;position:relative;top:-2vh;\">";
	    				}  
	    				
	    				}
	    			
	    			}
	    			  
	    			$('.guestMsg').html(output);
	    			
	    		}
	    		
	    		
	    	
	    		
	    	});//ajax
	    	
	    	
	    }else{
	    	
	    	
           $.ajax({

	    		type:"POST",
	    		url:"msgMainGuestAllRead.msg",
	    		success:function(data){
	    			/* $('.guestMsg').hide(); */
	    			var guestAllMsg=data.guestAllMsg;
	    			var guestAllMemberInfo=data.guestAllMemberInfo;
	    			
	    			console.log(data);
	    			var output="";
	    			
	    			
	    			for(var i=0;i<guestAllMsg.length;i++){
	    				for(var i=0;i<guestAllMemberInfo.length;i++){
	    				output+="<div style=\"position:relative;height:10vh;top:-2vh;border:1px solid red;\">";
	    				output+="<img style=\"position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;\" src=\"files/"+guestAllMemberInfo[i].member_picture+"\" class=\"img-circle\">";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+guestAllMemberInfo[i].member_name+"</h5>";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+guestAllMsg[i].message_time+"</h5>";
	    				if(guestAllMsg[i].message_read==0){
	    					output+="<div class=\"new-item-badge\">New</div>";
		    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestAllMsg[i].message_room_seq+"&home_seq="+guestAllMsg[i].home_seq+"&member_picture="+guestAllMsg[i].member_picture+"&member_name="+guestAllMemberInfo[i].member_name+"&member_email="+guestAllMemberInfo[i].member_email+"&message_seq="+guestAllMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;\">"+guestAllMsg[i].message_content+"</a><br>";
	    				}else{
	    					output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestAllMsg[i].message_room_seq+"&home_seq="+guestAllMsg[i].home_seq+"&member_picture="+guestAllMsg[i].member_picture+"&member_name="+guestAllMemberInfo[i].member_name+"&member_email="+guestAllMemberInfo[i].member_email+"&message_seq="+guestAllMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestAllMsg[i].message_content+"</a><br>";
	    				}
	    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestAllMsg[i].message_room_seq+"&home_seq="+guestAllMsg[i].home_seq+"&member_picture="+guestAllMsg[i].member_picture+"&member_name="+guestAllMemberInfo[i].member_name+"&member_email="+guestAllMemberInfo[i].member_email+"&message_seq="+guestAllMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestAllMemberInfo[i].member_location+" &nbsp;("+guestAllMsg[i].checkIn+" - "+guestAllMsg[i].checkOut+")</a>";
	    				output+="<h5 style=\"position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;\">문의</h5>";
	    				
	    				
	    				output+="</div>";
	    				 if(!((i + 1) == (guestAllMsg.length))){
	    					output+="<hr style=\"width:88%; color:gray;position:relative;top:-2vh;\">";
	    				}  
	    				
	    				}
	    			
	    			}
	    			
    				$('.guestMsg').html(output);
	    			
	    			
	    			
	    			
	    		}
	    		
	    		
	    	});//ajax
	    	
	    	
	    }

	} 
	
function ChangeHostList(){
	var hostList = document.getElementById("hostCheck");
	 var selhostList = hostList.options[hostList.selectedIndex].value;
	 alert(" 호스트 : "+selhostList);
	 if(selhostList=="noHostRead"){
		 /*  $('.hostMsg').hide(); */ 
		 
			$.ajax({
	    		contentType : 'application/json; charset=UTF-8',
	    		type:"POST",
	    		url:"msgMainhostUnRead.msg",
	    		 dataType : 'json',
	    		success:function(data){
	    			
	    			var hostUnreadMsg=data.hostUnreadMsg;
	    			var guestMemberInfo=data.guestMemberInfo;
	    			
	    			console.log(data);
	    			var output="";
	    			
	    			
	    		 for(var i=0;i<hostUnreadMsg.length;i++){
	    				for(var i=0;i<guestMemberInfo.length;i++){
	    				output+="<div  style=\"position:relative;height:10vh;top:-2vh;border:1px solid red;\">";
	    				output+="<img style=\"position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;\" src=\"files/"+guestMemberInfo[i].member_picture+"\" class=\"img-circle\">";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+guestMemberInfo[i].member_name+"</h5>";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+hostUnreadMsg[i].message_time+"</h5>";
	    				if(hostUnreadMsg[i].message_read==0){
	    					output+="<div class=\"new-item-badge\">New</div>";
		    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+hostUnreadMsg[i].message_room_seq+"&home_seq="+hostUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+hostUnreadMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;\">"+hostUnreadMsg[i].message_content+"</a><br>";
	    				}else{
	    					output+="<a href=\"messageRoomEnter.msg?message_room_seq="+hostUnreadMsg[i].message_room_seq+"&home_seq="+hostUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+hostUnreadMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+hostUnreadMsg[i].message_content+"</a><br>";
	    				}
	    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+hostUnreadMsg[i].message_room_seq+"&home_seq="+hostUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+hostUnreadMsg[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestMemberInfo[i].member_location+" &nbsp;("+hostUnreadMsg[i].checkIn+" - "+hostUnreadMsg[i].checkOut+")</a>";
	    				output+="<h5 style=\"position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;\">문의</h5>";
	    				
	    				
	    				output+="</div>";
	    				 if(!((i + 1) == (hostUnreadMsg.length))){
	    					output+="<hr style=\"width:88%; color:gray;position:relative;top:-2vh;\">";
	    				}  
	    				
	    				}
	    			
	    			}
	    			
	    			$('.hostMsg').html(output); 
	    			
	    		},beforeSend:function(){
	    			$('.load').show();
	    		},complete:function(){
	    			$('.load').hide();
	    		}
	    		
	    		
	    	
	    		
	    	});//ajax
		 
		 
		 
		 
		 
		 
	 }else{
		 
		 /* $('.hostMsg').hide(); */
		 
		 
		  $.ajax({
			  contentType : 'application/json; charset=UTF-8',
	    		type:"POST",
	    		url:"msgMainHostAllRead.msg",
	    		 dataType : 'json',
	    		success:function(data){
	    
	    			var hostAllMessage=data.hostAllMessage;
	    			var guestMemberInfo=data.guestAllMemberInfo;
	    			
	    			console.log(data);
	    			var output="";
	    			
	    			
	    			for(var i=0;i<hostAllMessage.length;i++){
	    				for(var i=0;i<guestMemberInfo.length;i++){
	    				output+="<div style=\"position:relative;height:10vh;top:-2vh;border:1px solid red;\">";
	    				output+="<img style=\"position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;\" src=\"files/"+guestMemberInfo[i].member_picture+"\" class=\"img-circle\">";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+guestMemberInfo[i].member_name+"</h5>";
	    				output+="<h5 style=\"position:relative; left:6vw;top:-7vh;\">"+hostAllMessage[i].message_time+"</h5>";
	    				if(hostAllMessage[i].message_read==0){
	    					output+="<div class=\"new-item-badge\">New</div>";
		    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+hostAllMessage[i].message_room_seq+"&home_seq="+hostAllMessage[i].home_seq+"&member_picture="+hostAllMessage[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+hostAllMessage[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;\">"+hostAllMessage[i].message_content+"</a><br>";
	    				}else{
	    					output+="<a href=\"messageRoomEnter.msg?message_room_seq="+hostAllMessage[i].message_room_seq+"&home_seq="+hostAllMessage[i].home_seq+"&member_picture="+hostAllMessage[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+hostAllMessage[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+hostAllMessage[i].message_content+"</a><br>";
	    				}
	    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+hostAllMessage[i].message_room_seq+"&home_seq="+hostAllMessage[i].home_seq+"&member_picture="+hostAllMessage[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"&member_email="+guestMemberInfo[i].member_email+"&message_seq="+hostAllMessage[i].message_seq+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestMemberInfo[i].member_location+" &nbsp;("+hostAllMessage[i].checkIn+" - "+hostAllMessage[i].checkOut+")</a>";
	    				output+="<h5 style=\"position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;\">문의</h5>";
	    				
	    				
	    				output+="</div>";
	    				 if(!((i + 1) == (hostAllMessage.length))){
	    					output+="<hr style=\"width:88%; color:gray;position:relative;top:-2vh;\">";
	    				}  
	    				
	    				}
	    			
	    			}
	    			
  				$('.hostMsg').html(output);
	    			
	    			
	    			
	    			
	    		}
	    		
	    		
	    	});//ajax
		 
		 
		 
		 
		 
	 }
	
	 
}	
</script>
</head>
<body>
<%@ include file="../../resource/include/header_profile.jsp" %>

<div id="wrapper" style="height:auto; margin-bottom:20vh; width:40vw; margin-top:10vh;position:relative;left:30%;">



		
		<div id="loading"></div>
			<div class="tabbable-panel">
				<div class="tabbable-line">
					<ul class="nav nav-tabs ">
						<li class="active">
						<c:choose>
						<c:when  test="${guestMsgUnreadCount>0}">
							<a href="#tab_default_1" data-toggle="tab">
							<i class="fa fa-archive"></i>
							  <span class="btn__badge">${guestMsgUnreadCount}</span>
							여행 </a></c:when>
							<c:otherwise>
							<a href="#tab_default_1" data-toggle="tab">여행</a>
							</c:otherwise>
							</c:choose>
						</li>
						<li>
						<c:choose>
						<c:when test="${hostMsgUnreadCount>0}">
							<a href="#tab_default_2" data-toggle="tab">
							 <i class="fa fa-archive"></i>
    <span class="btn__badge">${hostMsgUnreadCount}</span>    
							호스팅 </a>
							</c:when>
							<c:otherwise>
							<a href="#tab_default_2" data-toggle="tab">호스팅 </a>
							</c:otherwise>
							
							</c:choose>
						</li>
						
					</ul>
					<div class="tab-content" id="dd">
		
		<div class="tab-pane active" id="tab_default_1" style="height:auto;border:1px solid red;">
		<select class="Guest" name="guestSelect" id="guestCheck" onchange="ChangeGuestList();" style="position:relative;left:33.8vw;top:-7vh;width:15vw;height:4.5vh;padding:0" required>
        <option id="allGuestMsg" value="allGuestMsg">모든 여행 메세지 ( ${guestMsgAllCount}개 ) </option>
        <option id="noGuestRead" value="noGuestRead">읽지 않음 ( ${guestMsgUnreadCount}개)</option>
      </select>

						<div id="guestMsg" class="guestMsg" style="border:1px solid blue;width:100%;height:15vh">
						  <c:choose><c:when test="${not empty guestMessage}">
						<c:forEach items="${guestMessage}" var="message" varStatus="i">
						
						
						<div id="guest" class="guestList" style="position:relative;height:10vh;top:-2vh;border:1px solid yellow;">
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
							<a href="messageRoomEnter.msg?message_room_seq=${message.message_room_seq}&home_seq=${message.home_seq}&member_picture=${member.member_picture}&member_name=${member.member_name}&member_email=${member.member_email}&message_seq=${message.message_seq}" style="position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;">${message.message_content}</a><br>
							</c:when>
							<c:otherwise>
							<a href="messageRoomEnter.msg?message_room_seq=${message.message_room_seq}&home_seq=${message.home_seq}&member_picture=${member.member_picture}&member_name=${member.member_name}&member_email=${member.member_email}&message_seq=${message.message_seq}" style="position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;">${message.message_content}</a><br>
							</c:otherwise>
							</c:choose>
							<a href="messageRoomEnter.msg?message_room_seq=${message.message_room_seq}&home_seq=${message.home_seq}&member_picture=${member.member_picture}&member_name=${member.member_name}&member_email=${member.member_email}&message_seq=${message.message_seq}" style="position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;">${member.member_location} &nbsp;(${message.checkIn} - ${message.checkOut})</a></c:if></c:forEach>
							
							<h5 style="position:relative; left:40vw;top:-20vh;color:#f9c945;font-weight:800;">문의</h5>
							</div>  <c:if test="${not i.last}"><hr style="width:88%; color:gray;position:relative;top:-2vh;"></c:if>
							
							</c:forEach></c:when>
							<c:otherwise>
							<div style="position:relative;height:10vh;top:-0.8vh;" >
						<h3 style="color:black;margin:0;padding:0;">아직 메세지가 없습니다</h3>
					<h5 style="color:gray;text-align:center;">여행을 준비하며 호스트에게 받는 메세지가 여기에 표시됩니다.</h5>
					<button class="btn btn-default" style="position:relative;left:21vw;text-align:center;margin-top:1vh;background:#ff5a5f;border:#ff5a5f;color:white;font-weight:800">숙소 둘러보기</button>
					</div>
					</c:otherwise>
							
							</c:choose>
							
							</div>
						</div>
						
						
						<div class="tab-pane" id="tab_default_2" style="height:auto;">

		  <select class="Host" name="hostSelect" id="hostCheck" onchange="ChangeHostList()" style="position:relative;left:33.8vw;top:-7vh;width:15vw;height:4.5vh;padding:0;" required >
        <option id="allHostMsg" value="allHostMsg">모든 여행 메세지 ( ${hostMsgAllCount}개 )</option>
        <option id="noHostRead" value="noHostRead">읽지 않음 ( ${hostMsgUnreadCount}개 )</option>

      </select>

				       <div class="hostMsg"  style="border:1px solid blue;width:100%;height:15vh"> 
				      <c:choose><c:when test="${not empty hostMessage}">	
							<c:forEach items="${hostMessage}" var="messageH" varStatus="i">
						
					
						<div id="host" class="hostList" style="position:relative;height:10vh;top:-2vh;border:1px solid yellow;" >
							<c:forEach items="${guestMemberInfo}"  var="memberH">
							 <c:if test="${messageH.host_email eq userId}">
							<img style="position:relative;left:1vw;top:-1vh;width:7vh;height:7vh;" src="files/${memberH.member_picture}" class="img-circle">
							<h5 style="position:relative; left:6vw;top:-7vh;">${memberH.member_name}</h5>
							<h5 style="position:relative; left:6vw;top:-7vh;">${messageH.message_time}</h5>
							
							<c:choose>
							<c:when test="${messageH.message_read==0}">
							  <div class="new-item-badge">New</div>
							<a href="messageHostRoomEnter.msg?message_room_seq=${messageH.message_room_seq}&home_seq=${messageH.home_seq}&member_picture=${memberH.member_picture}&member_name=${memberH.member_name}&member_email=${memberH.member_email}&message_seq=${messageH.message_seq}" style="position:relative;left:17.5vw;top:-13.4vh;color:gray;text-decoration:none;font-weight:800;">${messageH.message_content}</a><br>
							</c:when>
							<c:otherwise>
							<a href="messageHostRoomEnter.msg?message_room_seq=${messageH.message_room_seq}&home_seq=${messageH.home_seq}&member_picture=${memberH.member_picture}&member_name=${memberH.member_name}&member_email=${memberH.member_email}&message_seq=${messageH.message_seq}" style="position:relative;left:17.5vw;top:-13.4vh;color:gray;text-decoration:none;">${messageH.message_content}</a><br>
							</c:otherwise>
							</c:choose>
							<a href="messageHostRoomEnter.msg?message_room_seq=${messageH.message_room_seq}&home_seq=${messageH.home_seq}&member_picture=${memberH.member_picture}&member_name=${memberH.member_name}&member_email=${memberH.member_email}&message_seq=${messageH.message_seq}" style="position:relative;left:17.5vw;top:-13.4vh;color:gray;text-decoration:none;">${memberH.member_location} &nbsp;(${messageH.checkIn} - ${messageH.checkOut})</a></c:if></c:forEach>
							
							<h5 style="position:relative; left:40vw;top:-18vh;color:#f9c945;font-weight:800;">문의</h5>
							</div>  <c:if test="${not i.last}"><hr style="width:88%; color:gray;"></c:if>
							</c:forEach></c:when>
					         <c:otherwise>
					 <div style="position:relative;height:10vh;top:-0.8vh;" > 
					<h3 style="color:black;margin:0;padding:0;">아직 메세지가 없습니다</h3>
					<h5 style="color:gray;text-align:center;">게스트가 연락하거나 예약 요청을 보내면 여기에 메시지가 표시됩니다.</h5>
					 </div> 
					</c:otherwise>
					</c:choose>
					
							</div> 
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