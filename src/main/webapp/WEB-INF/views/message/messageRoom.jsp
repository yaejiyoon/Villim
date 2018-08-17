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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>님과의 대화</title>

<style>
.card {
	transition: 0.3s;
	width: 18vw;
	height: 115vh;
	border: 1px solid #c9cacc;
	position: relative;
	left:22.5vw;
	margin-top:1vh;
	margin-bottom:10vh;
}

@import url(https://fonts.googleapis.com/css?family=Lato:400,700);
@import url('//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css');
/*http://codepen.io/drehimself/pen/KdXwxR?utm_source=bypeople
http://nicolasgallagher.com/pure-css-speech-bubbles/demo/*/

*, *:before, *:after {
  box-sizing: border-box;
}
.chat .chat-history {
  padding: 30px 30px 20px;
  border-bottom: 2px solid white;
}
.chat .chat-history .message-data {
  margin-bottom: 15px;
}
.chat .chat-history .message-data-time {
  color: #a8aab1;
  padding-left: 6px;
}
.chat .chat-history .message {
  color: white;
  padding: 18px 20px;
  line-height: 26px;
  font-size: 16px;
  border-radius: 5px;
  margin-bottom: 30px;
  width: 90%;
  position: relative;
}
.chat .chat-history .message:after {
content: "";
    position: absolute;
    top: -15px;
    left: 20px;
    border-width: 0 15px 15px;
    border-style: solid;
    border-color: #CCDBDC transparent;
    display: block;
    width: 0;
}
.chat .chat-history .you-message {
  background: #CCDBDC;
  color:#003366;
}
.chat .chat-history .me-message {
  background: #E9724C;
}
.chat .chat-history .me-message:after {
  border-color: #E9724C transparent;
    right: 20px;
    top: -15px;
    left: auto;
    bottom:auto;
}
.chat .chat-message {
  padding: 30px;
}
.chat .chat-message .fa-file-o, .chat .chat-message .fa-file-image-o {
  font-size: 16px;
  color: gray;
  cursor: pointer;
}

.chat-ul li{
    list-style-type: none;
}

.align-left {
  text-align: left;
}

.align-right {
  text-align: right;
}

.float-right {
  float: right;
}

.clearfix:after {
  visibility: hidden;
  display: block;
  font-size: 0;
  content: " ";
  clear: both;
  height: 0;
}
.you {
  color: #CCDBDC;
}

.me {
  color: #E9724C;
}


</style>
</head>
<body>

<%@ include file="../../resource/include/header_profile.jsp" %>
	<div class="card">
			
			
			<div class="row" style="position:relative;width:100%;left:0.8vw;height:33vh;">
			<div style="position:relative;top:-1vh;">
 <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" style="width:47%;height:50%;position:relative;left:4.8vw;top:2vw;" class="avatar img-circle img-thumbnail" alt="avatar">
			<h4 style="color:#5e5e5e;position:relative;top:5vh;left:6.9vw;font-weight:700;">Sarah Son</h4>
			<h5 style="color:#9e9e9e;position:relative;top:6vh;left:4.6vw;">한국 수원시 장안구 장안동</h5>
            <a style="color:#337a46;position:relative;left:7.5vw;top:6.5vh;">신고하기</a>
			</div>

				</div>
			
			<div class="row" style="font-weight:700;width:100%;height:29vh;position:relative;left:0.8vw;">
			<div style="position:relative;top:2vh;">
					<h4 style="position:relative;top:1.6vh;left:2vw;color:#5e5e5e;font-weight:700;">여행 세부정보</h4>
					<hr style="color:gray;width:70%;position:relative;top:2vh;">
				<div style="position:relative;  top:4vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;color:#9e9e9e;">체크인</h6><h6 style="display: inline !important;top:-2.8vh; margin:1vw;position:relative; left:1vw;font-weight:700;color:#9e9e9e;">체크 아웃</h6></div>
				<div style="position:relative;  top:7vh;left:5vw;font-weight:700;"><h6 style="display: inline !important;position:relative; top:-4.5vh;left:-1.4vw;margin:1vw;font-weight:700;">8월15일</h6><h6 style="display: inline !important; margin:1vw;position:relative; left:1vw;top:-4.5vh;font-weight:700;">8월18일</h6></div>
				<div style="position:relative;  top:7vh;left:5.5vw;font-weight:700;"><h6 style="display: inline !important;position:relative; top:-4.5vh;left:-1.7vw;margin:1vw;font-weight:700;">수요일</h6><h6 style="display: inline !important; margin:1vw;position:relative; left:1.2vw;top:-4.5vh;font-weight:700;">토요일</h6></div>
				<span class="glyphicon glyphicon-triangle-right" style="position:relative;left:8.8vw;top:-1vh;"></span>
				<hr style="color:gray;width:70%;position:relative;top:1vh;">
				<div style="position:relative;  top:3vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;color:#9e9e9e;">인원</h6></div>
				<div style="position:relative;  top:3vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;">성인1명</h6></div>
		
			</div>
			</div>
			
			
			<div class="row" style="height:29vh;position:relative;left:0.8vw;top:0vh;width:100%;">
			
			<div style="position:relative;top:4vh;">
			<h4 style="position:relative;top:1.6vh;left:2vw;color:#5e5e5e;font-weight:700;">결제</h4>
			<div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">￦34986 x 2박 </h5><h5 style="display: inline !important;position:relative;left:6vw;">￦69972</h5></div>
            <div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">서비스 수수료</h5><h5 style="display: inline !important;position:relative;left:6.8vw;">￦0</h5></div>
			<hr style="color:#666666;width:70%;position:relative;top:1.9vh;font-weight:900;height:15px;">
			<div style="position:relative;  top:-1vh;left:0vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:4.1vw;top:0vh;width:15vw;font-weight:700;">합계</h5><h5 style="display: inline !important;position:relative;left:10.5vw;font-weight:700;">￦69972</h5></div>
			
			<hr style="color:#666666;width:70%;position:relative;top:-2vh;">
			</div>
			
			</div>
			<div class="row" style="height:24vh;position:relative;left:0.8vw;top:0vh;width:100%;">
			<div style="width:75%;position:relative;top:1.7vh;left:3vw;">
			<h4 style="position:relative;top:1vh;left:-0.8vw;color:#5e5e5e;font-weight:700;line-height:1.3;">언제나 빌림을 통해 대화하세요</h4>
			<h5 style="position:relative;top:3vh;left:-0.8vw;color:#5e5e5e;line-height:1.7;">안전한 결제를 위해 빌림 웹사이트나 앱 외부에서 송금하거나 대화를 나누지 마세요</h5>
			</div>
			</div>
			
		</div>
		
		
		
		<div class="container clearfix" style="position:relative;left:10vw;top:-20vh;" >

    <div class="chat">   
      <div class="chat-history">
        <ul class="chat-ul">
   
          <li>
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            A new client?!?! I would love to help them, but where are we going to find the time?

            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right"> We should take a look at your onboarding and service delivery workflows, for most businesess there are many ways to save time and not compromise quality.  </div>
          </li>
            <li class="clearfix">
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            What?! No way, how did I miss that. I never forgot that part before.

            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right">Remembering everything can quickly become impossible as your business grows, we need to take a look at your reminder management system and also see if there are steps in your business we can automate.</div>
          </li>
          <li><h2>or you’ve started to notice mistakes and miscommunications ...</h2></li>
            <li>
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            6? Bob told me 8! How did this mix up happen?!
            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right">
The more people in your business, the more opportunity for mistakes, having a solid system in place for tracking important client data will help avoid these miscommunications.            </div>
          </li>
          <li><h2>or it can be hard to find the information you need ...</h2></li>
            <li>
            <div class="message-data">
              <span class="message-data-name"><i class="fa fa-circle you"></i> You</span>
            </div>
            <div class="message you-message">
            I know that I spoke with Mary about this, but where did I put that note...hopefully she also sent me an email...

            </div>
          </li>
          <li class="clearfix">
            <div class="message-data align-right">
              <span class="message-data-name">Ada, your OperationsAlly</span> <i class="fa fa-circle me"></i>
            </div>
            <div class="message me-message float-right">Finding the right information when you need it will save you time and energy. Your data management systems need to grow with your business. All businesses need a dynamic data strategy and a system to ensure that the strategy is implemented correctly.</div>
          </li>
        </ul>
        
      </div> <!-- end chat-history -->
      
    </div> <!-- end chat -->

  </div>
		
		
		
   <%@ include file="../../resource/include/footer.jsp" %>   

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>