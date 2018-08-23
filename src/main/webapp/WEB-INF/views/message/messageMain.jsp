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

	
 function ChangeGuestList() {
	    var guestList = document.getElementById("guestCheck");
	 
	    var selGuestList = guestList.options[guestList.selectedIndex].value;
	   
	    if(selGuestList=="noGuestRead"){
	    alert("dhdddh");
	    	$('.guestMsg').hide();
	    	/* $('.guestList').empty(); */
	    	/* $('#tab_default_1').remove(); */
$("#tab_default_1").find(".guestMsg").remove();
	    	
	    	$.ajax({
	    		contentType : 'application/json; charset=UTF-8',
	    		type:"GET",
	    		url:"msgMainGuestUnRead.msg",
	    		 dataType : 'json',
	    		success:function(data){
	    			$('.guestMsg').hide(); $('.guestMsg').empty();
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
		    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestUnreadMsg[i].message_room_seq+"&home_seq="+guestUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;\">"+guestUnreadMsg[i].message_content+"</a><br>";
	    				}else{
	    					output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestUnreadMsg[i].message_room_seq+"&home_seq="+guestUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestUnreadMsg[i].message_content+"</a><br>";
	    				}
	    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestUnreadMsg[i].message_room_seq+"&home_seq="+guestUnreadMsg[i].home_seq+"&member_picture="+guestMemberInfo[i].member_picture+"&member_name="+guestMemberInfo[i].member_name+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestMemberInfo[i].member_location+" &nbsp;("+guestUnreadMsg[i].checkIn+" - "+guestUnreadMsg[i].checkOut+")</a>";
	    				output+="<h5 style=\"position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;\">문의</h5>";
	    				
	    				
	    				output+="</div>";
	    				 if(!((i + 1) == (guestUnreadMsg.length))){
	    					output+="<hr style=\"width:88%; color:gray;position:relative;top:-2vh;\">";
	    				}  
	    				
	    				}
	    			
	    			}
	    			 $(".guestMsg").empty(); 
	    			$('#tab_default_1').append(output);
    				
	    		}
	    		
	    		
	    	
	    		
	    	});//ajax
	    	
	    	
	    }else{
	    	
	    	$('.guestMsg').empty();
           $.ajax({

	    		type:"POST",
	    		url:"msgMainGuestAllRead.msg",
	    		success:function(data){
	    			$('.guestMsg').hide();
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
		    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestAllMsg[i].message_room_seq+"&home_seq="+guestAllMsg[i].home_seq+"&member_picture="+guestAllMsg[i].member_picture+"&member_name="+guestAllMemberInfo[i].member_name+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;font-weight:800;\">"+guestAllMsg[i].message_content+"</a><br>";
	    				}else{
	    					output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestAllMsg[i].message_room_seq+"&home_seq="+guestAllMsg[i].home_seq+"&member_picture="+guestAllMsg[i].member_picture+"&member_name="+guestAllMemberInfo[i].member_name+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestAllMsg[i].message_content+"</a><br>";
	    				}
	    				output+="<a href=\"messageRoomEnter.msg?message_room_seq="+guestAllMsg[i].message_room_seq+"&home_seq="+guestAllMsg[i].home_seq+"&member_picture="+guestAllMsg[i].member_picture+"&member_name="+guestAllMemberInfo[i].member_name+"\" style=\"position:relative;left:17.5vw;top:-10.5vh;color:gray;text-decoration:none;\">"+guestAllMsg[i].member_location+" &nbsp;("+guestAllMsg[i].checkIn+" - "+guestAllMsg[i].checkOut+")</a>";
	    				output+="<h5 style=\"position:relative; left:40vw;top:-15vh;color:#f9c945;font-weight:800;\">문의</h5>";
	    				
	    				
	    				output+="</div>";
	    				 if(!((i + 1) == (guestAllMsg.length))){
	    					output+="<hr style=\"width:88%; color:gray;position:relative;top:-2vh;\">";
	    				}  
	    				
	    				}
	    			
	    			}
	    			
    				$('#tab_default_1').append(output);
	    			
	    			
	    			
	    			
	    		}
	    		
	    		
	    	});//ajax
	    	
	    	
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

						<div class="guestMsg" style="border:1px solid blue;width:100%;height:auto;">
						<c:forEach items="${guestMessage}" var="message" varStatus="i">
						
						
						<div id="guest" class="guestList" style="position:relative;height:10vh;top:-2vh;border:1px solid red;">
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
							
							<h5 style="position:relative; left:40vw;top:-20vh;color:#f9c945;font-weight:800;">문의</h5>
							</div>  <c:if test="${not i.last}"><hr style="width:88%; color:gray;position:relative;top:-2vh;"></c:if>
							
							</c:forEach>
							</div>
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