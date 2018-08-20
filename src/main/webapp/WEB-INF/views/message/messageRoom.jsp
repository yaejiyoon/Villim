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



/*  */

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;

  -webkit-box-sizing: border-box;
 	-moz-box-sizing: border-box;
}

body{

  font-family: "Roboto", "Tahoma", "Arial", sans-serif;,
}

.text-right{ text-align: right; }

.comments-app{
  margin: 50px auto;
  max-width: 680px;
  padding: 0 50px;
  width: 100%;
}

.comments-app h1{
  color: #191919;
  margin-bottom: 1.5em;
  text-align: center;
  text-shadow: 0 0 2px rgba(152, 152, 152, 1);
}

.comment-form{  }
.comment-form .comment-avatar{  }

.comment-form .form{ margin-left: 100px; }

.comment-form .form .form-row{ margin-bottom: 10px; }
.comment-form .form .form-row:last-child{ margin-bottom: 0; }

.comment-form .form .input{
  background-color: #fcfcfc;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
  padding: 5px 10px;
  outline: none;
  width: 100%;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form textarea.input{
  height: 100px;
  padding: 15px;
}

.comment-form .form label{
  color: #555f77;
  font-family: inherit;
  font-size: 14px;
}

.comment-form .form input[type=submit]{
  background-color: #555f77;
  border: none;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  color: #fff;
  cursor: pointer;
  display: block;
  margin-left: auto;
  outline: none;
  padding: 6px 15px;

  -webkit-transition: 350ms box-shadow;
  -moz-transition: 350ms box-shadow;
  -ms-transition: 350ms box-shadow;
  -o-transition: 350ms box-shadow;
  transition: 350ms box-shadow;
}

.comment-form .form .input:focus,
.comment-form .form input[type=submit]:focus,
.comment-form .form input[type=submit]:hover{
  box-shadow: 0 2px 6px rgba(121, 137, 148, .55);
}

.comment-form .form.ng-submitted .input.ng-invalid,
.comment-form .form .input.ng-dirty.ng-invalid{
  box-shadow: 0 2px 6px rgba(212, 47, 47, .55) !important;
}

.comment-form .form .input.disabled {
    background-color: #E8E8E8;
}


.comments{  }

.comment-form,
.comment{
  margin-bottom: 20px;
  position: relative;
  z-index: 0;
}

.comment-form .comment-avatar,
.comment .comment-avatar{
  border: 2px solid #fff;
  border-radius: 50%;
  box-shadow: 0 1px 2px rgba(0, 0, 0, .2);
  height: 80px;
  left: 0;
  overflow: hidden;
  position: absolute;
  top: 0;
  width: 80px;
}

.comment-form .comment-avatar img,
.comment .comment-avatar img{
  display: block;
  height: auto;
  width: 100%;
}

.comment .comment-box{
  background-color: #fcfcfc;
  border-radius: 4px;
  box-shadow: 0 1px 1px rgba(0, 0, 0, .15);
  margin-left: 100px;
  min-height: 60px;
  position: relative;
  padding: 15px;
}

.comment .comment-box:before,
.comment .comment-box:after{
  border-width: 10px 10px 10px 0;
  border-style: solid;
  border-color: transparent #FCFCFC;
  content: "";
  left: -10px;
  position: absolute;
  top: 20px;
}

.comment .comment-box:before{
  border-color: transparent rgba(0, 0, 0, .05);
   top: 22px;
}

.comment .comment-text{
  color: #555f77;
  font-size: 15px;
  margin-bottom: 25px;
}

.comment .comment-footer{
  color: #acb4c2;
  font-size: 13px;
}

.comment .comment-footer:after{
  content: "";
  display: table;
  clear: both;
}

.comment .comment-footer a{
  color: #acb4c2;
  text-decoration: none;

  -webkit-transition: 350ms color;
  -moz-transition: 350ms color;
  -ms-transition: 350ms color;
  -o-transition: 350ms color;
  transition: 350ms color;
}

.comment .comment-footer a:hover{
  color: #555f77;
  text-decoration: underline;
}

.comment .comment-info{
  float: left;
  width: 85%;
}

.comment .comment-author{ }
.comment .comment-date{ }

.comment .comment-date:before{
  content: "|";
  margin: 0 10px;
}

.comment-actions{
  float: left;
  text-align: right;
  width: 15%;
}


/*  */
body{
  margin: 80px 0;
}
body  .container {
  margin: 0 auto;
}
/* CHAT STYLES  */

.container.ChatterContainer {
  padding: 20px;
}
.ChatterContainer .col-md-2, .ChatterContainer .col-md-10{
    padding:0;
}


.ChatterContainer{
  background: #e5e5e5;
  margin: 0;
  padding: 0 10px 10px;
  @media(max-width: 767px) {
      max-height: 200px;
  }
  @media  (min-width: 768px){
    max-height: 450px;
  }

  overflow-x:hidden;
  max-width: 640px;
}

.MessageContainer.left .OppMsg{
/*     padding-left:0; */
/*     margin-left:0; */
}
.MessageContainer.right .OppMsg{
    padding-bottom:20px !important;
    margin-right:0;
}
.OppMsg {
  background: #fff;
  padding: 10px;
  border-radius: 2px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  max-width:100%;
}
.OppMsg p {
    font-size: 13px;
    margin: 0 0 0.2rem 0;
  margin-bottom: 1em;
  }
.OppMsg > .OppDate {
    font-size: 11px;
    color: #ccc;
}
.MessageContainer {
    padding: 10px;
    overflow: hidden;
    display: flex;
}
.MessageContainer img {
    display: block;
    width: 100%;
}
.MessageContainer .avatar {
    position: relative;
  max-width: 60px;
}
.MessageContainer.left  .avatar:after {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    width: 0;
    height: 0;
    border: 5px solid #FFF;
    border-left-color: rgba(0, 0, 0, 0);
    border-bottom-color: rgba(0, 0, 0, 0);
}

.MessageContainer.right {
  justify-content: flex-end;
  align-items: flex-end;
}
.MessageContainer.right > .avatar:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 0;
    border: 5px solid white;
    border-right-color: transparent;
    border-top-color: transparent;
    box-shadow: 1px 1px 2px rgba(black, 0.2); // not quite perfect but close
}

.MessageContainer.right .OppMsg > .OppDate{
    float: right;
}

.container{max-width:1170px; margin:auto;}
img{ max-width:100%;}
.inbox_people {
  background: #f8f8f8 none repeat scroll 0 0;
  float: left;
  overflow: hidden;
  width: 40%; border-right:1px solid #c4c4c4;
}
.inbox_msg {
  border: 1px solid #c4c4c4;
  clear: both;
  overflow: hidden;
}
.top_spac{ margin: 20px 0 0;}


.recent_heading {float: left; width:40%;}
.srch_bar {
  display: inline-block;
  text-align: right;
  width: 60%; padding:
}
.headind_srch{ padding:10px 29px 10px 20px; overflow:hidden; border-bottom:1px solid #c4c4c4;}

.recent_heading h4 {
  color: #05728f;
  font-size: 21px;
  margin: auto;
}
.srch_bar input{ border:1px solid #cdcdcd; border-width:0 0 1px 0; width:80%; padding:2px 0 4px 6px; background:none;}
.srch_bar .input-group-addon button {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  padding: 0;
  color: #707070;
  font-size: 18px;
}
.srch_bar .input-group-addon { margin: 0 0 0 -27px;}

.chat_ib h5{ font-size:15px; color:#464646; margin:0 0 8px 0;}
.chat_ib h5 span{ font-size:13px; float:right;}
.chat_ib p{ font-size:14px; color:#989898; margin:auto}
.chat_img {
  float: left;
  width: 11%;
}
.chat_ib {
  float: left;
  padding: 0 0 0 15px;
  width: 88%;
}

.chat_people{ overflow:hidden; clear:both;}
.chat_list {
  border-bottom: 1px solid #c4c4c4;
  margin: 0;
  padding: 18px 16px 10px;
}
.inbox_chat { height: 550px; overflow-y: scroll;}

.active_chat{ background:#ebebeb;}

.incoming_msg_img {
  display: inline-block;
  width: 6%;
}
.received_msg {
  display: inline-block;
  padding: 0 0 0 10px;
  vertical-align: top;
  width: 92%;
 }
 .received_withd_msg p {
  background: #ebebeb none repeat scroll 0 0;
  border-radius: 3px;
  color: #646464;
  font-size: 14px;
  margin: 0;
  padding: 5px 10px 5px 12px;
  width: 100%;
}
.time_date {
  color: #747474;
  display: block;
  font-size: 12px;
  margin: 8px 0 0;
}
.received_withd_msg { width: 57%;}
.mesgs {
  float: left;
  padding: 30px 15px 0 25px;
  width: 60%;
}

 .sent_msg p {
  background: #05728f none repeat scroll 0 0;
  border-radius: 3px;
  font-size: 14px;
  margin: 0; color:#fff;
  padding: 5px 10px 5px 12px;
  width:100%;
}
.outgoing_msg{ overflow:hidden; margin:26px 0 26px;}
.sent_msg {
  float: right;
  width: 46%;
}
.input_msg_write input {
  background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
  border: medium none;
  color: #4c4c4c;
  font-size: 15px;
  min-height: 48px;
  width: 100%;
}

.type_msg {border-top: 1px solid #c4c4c4;position: relative;}
.msg_send_btn {
  background: #05728f none repeat scroll 0 0;
  border: medium none;
  border-radius: 50%;
  color: #fff;
  cursor: pointer;
  font-size: 17px;
  height: 33px;
  position: absolute;
  right: 0;
  top: 11px;
  width: 33px;
}
.messaging { padding: 0 0 50px 0;}
.msg_history {
  height: 516px;
  overflow-y: auto;
}
</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">
<script>

          $(document).ready(function(){
        	var week = ['일', '월', '화', '수', '목', '금', '토'];

  			var dayOfCI = week[new Date($('#checkIn').val()).getDay()];
  			var dayOfCO = week[new Date($('#checkOut').val()).getDay()];
  			
  			$('#dayCI').html(dayOfCI+"요일");
  			$('#dayCO').html(dayOfCO+"요일");
          });
			

</script>
</head>
<body>

<%@ include file="../../resource/include/header_profile.jsp" %>
	<div class="card">
			
			
			<div class="row" style="position:relative;width:100%;left:0.8vw;height:33vh;">
			<div style="position:relative;top:-1vh;">
 <img src="files/${host_picture}" style="width:47%;height:50%;position:relative;left:4.8vw;top:2vw;" class="avatar img-circle img-thumbnail" alt="avatar">
			<h4 style="color:#5e5e5e;position:relative;top:5vh;left:6.9vw;font-weight:700;">${host_name}</h4>
			<h5 style="color:#9e9e9e;position:relative;top:6vh;left:4.6vw;">${home_location}</h5>
            <a style="color:#337a46;position:relative;left:7.5vw;top:6.5vh;">신고하기</a>
			</div>

				</div>
			
			<div class="row" style="font-weight:700;width:100%;height:29vh;position:relative;left:0.8vw;">
			<div style="position:relative;top:2vh;">
					<h4 style="position:relative;top:1.6vh;left:2vw;color:#5e5e5e;font-weight:700;">여행 세부정보</h4>
					<hr style="color:gray;width:70%;position:relative;top:2vh;">
				<div style="position:relative;  top:4vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;color:#9e9e9e;">체크인</h6><h6 style="display: inline !important;top:-2.8vh; margin:1vw;position:relative; left:1vw;font-weight:700;color:#9e9e9e;">체크 아웃</h6></div>
				<div style="position:relative;  top:7vh;left:5vw;font-weight:700;"><h6  style="display: inline !important;position:relative; top:-4.5vh;left:-1.4vw;margin:1vw;font-weight:700;">${msgRoom.checkIn}</h6><h6 style="display: inline !important; margin:1vw;position:relative; left:1vw;top:-4.5vh;font-weight:700;">${msgRoom.checkOut}</h6></div>
				<div style="position:relative;  top:7vh;left:5.5vw;font-weight:700;"><h6 id="dayCI" style="display: inline !important;position:relative; top:-4.5vh;left:-1.7vw;margin:1vw;font-weight:700;">$요일</h6><h6 id="dayCO" style="display: inline !important; margin:1vw;position:relative; left:1.2vw;top:-4.5vh;font-weight:700;">$요일</h6></div>
				<input id="checkIn" type="hidden" value="${splitCheckIn}">
				<input id="checkOut"  type="hidden" value="${splitCheckOut}">
				<span class="glyphicon glyphicon-triangle-right" style="position:relative;left:8.8vw;top:-1vh;"></span>
				<hr style="color:gray;width:70%;position:relative;top:1vh;">
				<div style="position:relative;  top:3vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;color:#9e9e9e;">인원</h6></div>
				<div style="position:relative;  top:3vh;left:5.3vw;font-weight:700;"><h6 style="display: inline !important;position:relative;left:-1.5vw;top:-2.8vh;margin:1vw;font-weight:700;">${msgRoom.totalNumber}명</h6></div>
		
			</div>
			</div>
			
			
			<div class="row" style="height:29vh;position:relative;left:0.8vw;top:0vh;width:100%;">
			
			<div style="position:relative;top:4vh;">
			<h4 style="position:relative;top:1.6vh;left:2vw;color:#5e5e5e;font-weight:700;">결제</h4>
			<div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">￦${home_price} x ${diffDay}박 </h5><h5 style="display: inline !important;position:relative;left:6vw;">￦${totalPrice}</h5></div>
            <div style="position:relative;  color:#5e5e5e;top:3vh;left:1vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:2vw;top:0vh;width:15vw;line-height:4vh;">서비스 수수료</h5><h5 style="display: inline !important;position:relative;left:6.8vw;">￦0</h5></div>
			<hr style="color:#666666;width:70%;position:relative;top:1.9vh;font-weight:900;height:15px;">
			<div style="position:relative;  top:-1vh;left:0vw;font-weight:700;height:3vh;"><h5 style="display: inline !important;position:relative;left:4.1vw;top:0vh;width:15vw;font-weight:700;">합계</h5><h5 style="display: inline !important;position:relative;left:10.5vw;font-weight:700;">￦${totalPrice}</h5></div>
			
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
		

		
		<!--  -->
		<div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">

  
  <!-- From -->
  <div class="comment-form">
    <!-- Comment Avatar -->
    <div class="comment-avatar">
      <img src="http://lorempixel.com/200/200/people">
    </div>

    <form class="form" name="form" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate>
      <div class="form-row">
        <textarea
                  class="input"
                  ng-model="cmntCtrl.comment.text"
                  placeholder="Add comment..."
                  required></textarea>
      </div>

   



      <div class="form-row">
        <input type="submit" value="Add Comment">
      </div>
    </form>
  </div>

  <!-- Comments List -->
  <div class="comments">

    <!-- Comment - Dummy -->
    <div class="comment">
      <!-- Comment Avatar -->
      <div class="comment-avatar">
        <img src="http://gravatar.com/avatar/412c0b0ec99008245d902e6ed0b264ee?s=80">
      </div>

      <!-- Comment Box -->
      <div class="comment-box">
        <div class="comment-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum.</div>
        <div class="comment-footer">
          <div class="comment-info">
            <span class="comment-author">
              <a href="mailto:sexar@pagelab.io">Sexar</a>
            </span>
            <span class="comment-date">Feb 2, 2013 11:32:04 PM</span>
          </div>

        </div>
      </div>
    </div>

    <!-- Comment - Dummy -->
    <div class="comment">
      <!-- Comment Avatar -->
      <div class="comment-avatar">
        <img src="http://lorempixel.com/200/200/people">
      </div>

      <!-- Comment Box -->
      <div class="comment-box">
        <div class="comment-text">Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam reprehenderit quasi sapiente modi tempora at perspiciatis mollitia, dolores voluptate. Cumque, corrupti?</div>
        <div class="comment-footer">
          <div class="comment-info">
            <span class="comment-author">
              <a href="mailto:ximme13@somedomain.io">Ximme</a>
            </span>
            <span class="comment-date">Jan 31, 1986 11:32:04 PM</span>
          </div>

        
        </div>
      </div>
    </div>
  </div>
</div>
	
<div class="container ChatterContainer">
    <!--  CLIENT MESSAGE     -->
    <div class="row MessageContainer right">
        <div class="col-md-10 col-xs-10">
            <!--     Chat bubble         -->
            <div class="OppMsg">
              <p>
                Hello,
                I have new information regarding the case. The experts you've provied so far have been great but are lacking in cool points.
              </p>
                <div class="OppDate">2/2/2016 10:58 PM</div> 
            </div>
        </div>
        <div class="col-md-2 col-xs-2 avatar">
            <img src="https://res.cloudinary.com/theexpertinstitute-com/image/upload/c_thumb,h_80,w_80/v50/users/U-0118.jpg" class=" img-responsive ">
        </div>
    </div>
  
    <!--  TEI MESSAGE -->
    <div class="row MessageContainer left">
        <div class="col-md-2 col-xs-2 avatar">
            <img src="https://res.cloudinary.com/theexpertinstitute-com/image/upload/c_thumb,h_80,w_80/v50/contacts/C-000794.jpg" class=" img-responsive ">
        </div>
        <div class="col-md-10 col-xs-10">
            <div class="OppMsg">
                <p>That's no Problem at all. We have tons of cool experts. Skydiving experts, Video game experts,  you name it.</p>
              <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Non est fuga aliquid inventore earum vitae, facilis dolorem! Nihil consequatur voluptate vel voluptatibus quis, temporibus ratione nulla, aliquam qui saepe consectetur. 
                
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque doloribus veniam soluta pariatur, sint, ducimus magnam, reprehenderit nam ipsam provident dignissimos voluptate! Reprehenderit ab perferendis delectus accusantium, quibusdam mollitia suscipit.
              </p>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, eos dolorem cum, consequatur, praesentium aspernatur amet, expedita temporibus asperiores impedit quasi? Possimus deleniti ut porro esse enim assumenda fuga, ipsam?
              </p>
                <div class="OppDate">2/2/2016 11:33 PM</div>
            </div>
        </div>
    </div>
</div>
--------------------------------------------

<div class="container">

<div class="messaging">
      <div class="inbox_msg">

        <div class="mesgs">
          <div class="msg_history">
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test which is a new approach to have all
                    solutions</p>
                  <span class="time_date"> 11:01 AM    |    June 9</span></div>
              </div>
            </div>
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Test which is a new approach to have all
                  solutions</p>
                <span class="time_date"> 11:01 AM    |    June 9</span> </div>
            </div>
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test, which is a new approach to have</p>
                  <span class="time_date"> 11:01 AM    |    Yesterday</span></div>
              </div>
            </div>
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Apollo University, Delhi, India Test</p>
                <span class="time_date"> 11:01 AM    |    Today</span> </div>
            </div>
            <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"> </div>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>We work directly with our designers and suppliers,
                    and sell direct to you, which means quality, exclusive
                    products, at a price anyone can afford.</p>
                  <span class="time_date"> 11:01 AM    |    Today</span></div>
              </div>
            </div>
          </div>
          <div class="type_msg">
            <div class="input_msg_write">
              <input type="text" class="write_msg" placeholder="Type a message" />
              <button class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
            </div>
          </div>
        </div>
      </div>
      
      
  
      
    </div></div>

   <%@ include file="../../resource/include/footer.jsp" %>   

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>