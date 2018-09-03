<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">	

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 결제 -->
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>

<!-- 막대차트  -->
<script src="https://code.highcharts.com/js/highcharts.js"></script>
<script src="https://code.highcharts.com/js/modules/exporting.js"></script>

<!-- 맵 차트 -->

<script src="https://code.highcharts.com/maps/modules/map.js"></script>
<script src="https://code.highcharts.com/mapdata/index.js?1"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.js"></script>
<script src="https://www.highcharts.com/samples/maps/demo/all-maps/jquery.combobox.js"></script>

<link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet">
<link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<style>

@import 'https://code.highcharts.com/css/highcharts.css';

#container {
  height: 50%;
  /* max-width: 800px; */
  width:80%;
  /* margin: 0 auto; */
  position: absolute;
  z-index: 10;
  margin-left: 16%;
  margin-top:20%;
  
}

/* Link the series colors to axis colors */
.highcharts-color-0 {
  fill: #7cb5ec;
  stroke: #7cb5ec;
}
.highcharts-axis.highcharts-color-0 .highcharts-axis-line {
  stroke: #7cb5ec;
}
.highcharts-axis.highcharts-color-0 text {
  fill: #7cb5ec;
}
.highcharts-color-1 {
  fill: #90ed7d;
  stroke: #90ed7d;
}
.highcharts-axis.highcharts-color-1 .highcharts-axis-line {
  stroke: #90ed7d;
}
.highcharts-axis.highcharts-color-1 text {
  fill: #90ed7d;
}


.highcharts-yaxis .highcharts-axis-line {
  stroke-width: 2px;
}



/* 내부 css  */
#bg {
	position: fixed;
	top: -50%;
	left: -50%;
	width: 200%;
	height: 200%;



}

#bg img {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	margin: auto;
	min-width: 50%;
	min-height: 50%;
/* 	opacity: 0.8; */
}

	#wrapper{
		width:100%;
		position: absolute;
		z-index: 10;
		height:100vh;
		overflow: hidden;
	}
	#collapseExample{
	
		
		
	}
	div{
		
		color:blue;
	}
	#navi{
		display:inline-block;
		width:15%;
		background-color : #1b1d21;
		height:100%;
		opacity: 0.8;
		
	}
	#adminProfile{
		width:20%;
		
	}
	#adminProfile1{
		width:10%;
		margin-bottom:5%;
		margin-right:0.5%;
		
	}
	#navi a{
	 color:white;
	 margin-left:2%;
	}
	#naviLogo{
		text-align:center;
		padding-top: 2%;
		margin-bottom:5%;
	}
	#content{
	display:inline-block;
	position:absolute;
	width:100%;
	height:100%;
	
	}
	#contentHeader{
	margin-left:0.1%;
	background-color : #1b1d21;
	opacity: 0.8;
	height:5%;
	padding-top: 0.5%;
	
	}

	#titleDiv{
		
		margin-left:1%;
		height:95%;
	}
	#checkDiv{
		height:160px;
		margin-right:2%;
		display:inline-block;
	}
	#btn{
		width:100px;
		margin-right:65%;
		margin-top:5%;
		
	}
	#title{
		color:white;
	}
	#checkDiv1{
	height:160px;
	
	display:inline-block;
	}
	
	#memberChkModal{
		width:100%;
		
	}
	#payChkModal{
		width:100%;
	}
	#payChkModal .modal-dialog{
		width:80%;
	}

</style>	
<script>
/* $("#slide").animate({width:'toggle'},350); */
$(document).ready(function(){
	var j = 0;
	var currentarray = [];
	var sendarray = [];
	
	 /* $("#collapseExample").animate({width:'toggle'},350); */
	$("#btn").click(function(){
		 $("#navi").animate({width:'toggle'},350);
		
		  /* $("#btn").animate({width:'100px'},350);  */
	})
	$("#memberCheck").click(function(){
		var	html = "";
		$("#memberChkModal").modal('show');
		$.ajax({
			url:"mainMemberInfoLoad.admin",
			type : "get",
			
			success : function(response) {
				html += "<tr>"
				html += "<td>회원번호";
				html += "<td>이메일";
				html += "<td>이름";
				html += "<td>생년월일";
				/* html += "<td>프로필"; */
				html += "<td>차단여부";
				html += "<td>가입 날짜";
				html += "<td>주소";
				html += "</tr>"
				for(var i=0; i<response.length; i++){					
				/* 	$("#table").after("<tr>"); */
/* 					$("#table1").html("<td>" + response[i].member_location);
					$("#table1").html("<td>" + response[i].member_date);
					if(response[i].member_block == 'N'){
					$("#table1").html("<td><select id="+response[i].member_seq+"><option value='N' selected='selected'>N</option><option value='Y'>Y</option></select>");
					
					}else{
					$("#table1").html("<td><select id="+response[i].member_seq+"><option value='N'>N</option><option value='Y' selected='selected'>Y</option></select>");	
					
					}
					$("#table1").html("<td>" + response[i].member_picture);
					$("#table1").html("<td>" + response[i].member_birth);
					$("#table1").html("<td>" + response[i].member_name);
					$("#table1").html("<td>" + response[i].member_email);
					$("#table1").html("<td>"+ response[i].member_seq); */
				/* 	$("#table").after("/<tr>"); */
					
						  html += "<tr>";
						  html += "<td>"+ response[i].member_seq;
						  html += "<td>" + response[i].member_email;
						  html += "<td>" + response[i].member_name;
						  html += "<td>" + response[i].member_birth;
						  /* html += "<td>" + response[i].member_picture; */
						  if(response[i].member_block == 'N'){
							    html += "<td><select id="+response[i].member_seq+"><option value='N' selected='selected'>N</option><option value='Y'>Y</option></select>";
						  }else{
							    html +=	"<td><select id="+response[i].member_seq+"><option value='N'>N</option><option value='Y' selected='selected'>Y</option></select>";
						  }
						  html += "<td>" + response[i].member_date;
					      html += "<td>" + response[i].member_location;

					   	  html += "</tr>";
					    
					    $("#memberTable").html(html);
	
				}
				
				$("select").change(function(){
					/*  alert($("#selectbox"+i+"" "option:selected").val()); */
					/* var currentid = []; */
					var currentid = $(this).attr('id');
					var currentval = $("#"+currentid+" option:selected").val();
					var current = currentid + ":" + currentval;
					
					currentarray.push({
						seq : currentid,
						val : currentval
					})
			
					alert("#"+currentid);
					alert(current);
					alert($(this).val());
					alert(currentarray);				
				
				
				})
			}

		});
	})			
	
	$("#save").click(function(){
		alert(currentarray);
		var jsonData = JSON.stringify(currentarray);
		jQuery.ajaxSettings.traditional = true;
		$.ajax({
			url:"mainMemberBlock.admin",
			dataType: 'json',
			type : "post",
			data : {						
				
				currentarray : jsonData
				
			}, 
			success : function(response) {
				
				alert(response);
				currentarray.splice(0, currentarray.length);
			}
				
	})
	})
	
	$("#payCheck").click(function(){
		var	html = "";
		$("#payChkModal").modal('show');
		alert("asdasd");
		$.ajax({
			
			url:"mainPayCheck.admin",
			type : "post",
			
			success : function(response) {
				alert(response);
					html += "<tr>"
					html += "<td>예약번호";
					html += "<td>예약자이메일";
					html += "<td>예약자명";
					html += "<td>호스트이메일";
					html += "<td>호스트명";
					html += "<td>체크인";
					html += "<td>체크아웃";
					html += "<td>결제금액";
					html += "<td>결제날짜";
					html += "<td>이체상태";
					html += "</tr>"
					for(var i=0; i<response.length; i++){
						
						  html += "<tr>";
						  html += "<td>"+ response[i].reservation_seq;
						  html += "<td>" + response[i].r_member_email;
						  html += "<td>" + response[i].r_member_name;
						  html += "<td>" + response[i].h_member_email;
						  html += "<td>" + response[i].h_member_name;
						  html += "<td>" + response[i].check_in;
						  html += "<td>" + response[i].check_out;
						  html += "<td>" + response[i].payment_amount;
						  html += "<td>" + response[i].payment_date;
						  
						  if(response[i].payment_state == '0'){
							    html += "<td id='sendtd'><button id="+response[i].reservation_seq+">이체하기</button>";
						  }else{
							    html +=	"<td>이체완료";
						  }
					   	  html += "</tr>";
				
					   	 $("#payTable").html(html);
						
					}
					
					$("button").click(function(){
						alert($(this).attr('id'));
						alert("asads");
						var IMP = window.IMP; // 생략가능
						IMP.init('imp31935218');
						alert("asads1");
						IMP.request_pay({
						    pg : 'inicis', // version 1.1.0부터 지원.
						    pay_method : 'card',
						    merchant_uid : 'merchant_' + new Date().getTime(),
						    name : 'villim',
						    amount : 1000,
						    /* amount : ${reservationDTO.totalAmount}, */
						    buyer_email : '${memberDTO.member_email}',
						    buyer_name : '${memberDTO.member_name}',
						    buyer_tel : '${memberDTO.member_phone}',
						    buyer_addr : '${memberDTO.member_location}',
						}, function(rsp) {
						    if ( rsp.success ) {
						        var msg = '결제가 완료되었습니다.';
						        msg += '고유ID : ' + rsp.imp_uid;
						        msg += '상점 거래ID : ' + rsp.merchant_uid;
						        msg += '결제 금액 : ' + rsp.paid_amount;
						        msg += '카드 승인번호 : ' + rsp.apply_num;
						        
						        /* $(location).attr('href','payment.re?seq='+${reservationDTO.reservation_seq}); */
						        $("#sendtd").html("이체완료");
						        
						        var sendid = $(this).attr('id');
						        
								var sendval = $("#sendtd").html();
								var send = sendid + ":" + sendval;
								alert(send);
								
								sendarray.push({
									rseq : sendid,
									sendvalval : sendval
								})
								
						var jsonData1 = JSON.stringify(sendarray);
						jQuery.ajaxSettings.traditional = true;
						$.ajax({
							url:"mainSendUpdate.admin",
							dataType: 'json',
							type : "post",
							data : {						
				
								sendarray : jsonData1
					
							}, 
							success : function(response) {
				
							alert(response);
							currentarray.splice(0, currentarray.length);
							}
				
						})
								
								
						    } else {
						        var msg = '결제에 실패하였습니다.';
						        msg += '에러내용 : ' + rsp.error_msg;
						    }
						    alert(msg);
						});
						
						
					})
			}
		
		})
		

	})
	

 	
 	$(function poll() {
	    $.ajax({
	        url: 'mainPolling.admin',
	        type: 'post',
	       
	        success: function(response) {
	           
	        	$("#reportCount").html(response.length);
	        	$("#reportMessage").html("<a style='margin-right:10%;'>새로운 신고가 " + response.length + "건 있습니다.</a>");
	        	
	        },
	        timeout: 3000,
	        complete: setTimeout(function() { poll(); }, 10000)
	    })
	});  
	 
	

	 
})

</script>


</head>
<body>
<script>
	$.ajax({
		url:"mainMemberCountLoad.admin",
		type : "get",
		success : function(response) {
			
			$("#memberCount").html("<strong>"+response+"</strong>");
			$("#memberCount1").html("<strong>"+response+"</strong>");
		}
			
	});
</script>
<script>	

		
		
	$.ajax({
		
		url:"mainReservationCount.admin",
		type : "post",
		success : function(resp) {
			/* $(function() { */
				var valCategory = [];
				var valData5 = [];
				var valData6 = [];

			for(var c=0; c<resp.length; c++){
				valCategory[c] = resp[c].payment_month+'월' 
				valData5[c] = resp[c].reservation_count*1
				valData6[c] = resp[c].payment_sum*1
			
				}

				Highcharts.chart('container', {
					
					  chart: {
					    type: 'column'
					  },

					  title: {
					    text: '월별 예약량 및 수입'
					  },
					  xAxis:[{
						
						  categories: valCategory
					  }], 

					  yAxis: [{
					    className: 'highcharts-color-0',
					    title: {
					      text: 'Primary axis'
					    }
					  }, {
					    className: 'highcharts-color-1',
					    opposite: true,
					    title: {
					      text: 'Secondary axis'
					    }
					  }],

					  plotOptions: {
					    column: {
					      borderRadius: 5
					    }
					  },

					  series: [{
					    data: valData5,
					  	name:'asd'
					    
					  }, {
					    data: valData6,
					    name:'asd22',
					    
					    yAxis: 1
					  }]

					});
		
	
  
 		/* }); */
	}
	});
</script>


<div id="bg">
		<img src="./resources/images/17.jpg" alt="">
</div>
<div id="wrapper">


<div id="navi">
<ul class="nav nav-pills nav-stacked" id="collapseExample">
<li role="presentation" id="naviLogo"><img src="../resources/img/logo2.png"></li>
<li role="presentation" style="margin-bottom:5%;"><img src="../resources/img/admin/admin.jpg" id="adminProfile" class="img-circle"><h4 style="display: inline-block; margin-left:5%;"><strong>${sessionScope.admin_name}</strong></h4></li>
 <li role="presentation" class="active"><a href="#"><h4><strong>Dashboard</strong></h4></a></li>
<li role="presentation"><a href="#"><h4><strong>Profile</strong></h4></a></li>
  <li role="presentation"><a href="#"><h4><strong>Messages</strong></h4></a></li>
</ul>
</div>

<div id="content">
	<div id="contentHeader">
		<a id="btn"><i class="fas fa-align-justify fa-2x"></i></a>
		<div class="dropdown" style="display: inline-block; margin-right:2%;">
		<a style="margin-right:1%;" data-target="dropdown-menu" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false">
 		 <i class="fas fa-envelope fa-2x"></i> <span class="badge" style="wi" id="reportCount"></span>
			
		</a>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
    		<li id="reportMessage"></li>
    		
  		</ul>
		</div>

<!-- </div> -->
	
	<div class="dropdown" style="display: inline-block; margin-right:2%;">
	<a href="#" style=""; data-target="dropdown-menu" data-toggle="dropdown" aria-haspopup="true" role="button" aria-expanded="false"><img src="../resources/img/admin/admin.jpg" id="adminProfile1" class="img-circle"><h4 style="display: inline-block;"><strong>${sessionScope.admin_name}</strong></h4></a>
	<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
    		<li><a id="adminLogout" href="mainLogout.admin">로그아웃</a></li>	
  	</ul>
	</div>		
	</div>
	<div id="titleDiv"><h2 id="title">Dashboard</h2>
	
	<div style="background-color:#47639b; width:300px;" id="checkDiv">
		<h1 id="memberCount" style="color:white; margin-left:3%; margin-top:0px; margin-bottom:0px; padding-top:5%;"></h1>
		<p style="display:inline; color:white; margin-right:41%; margin-left:3%;">전체 회원수</p>
		<i class="fas fa-users fa-5x" style="color:white; z-index: 20; display:inline;"></i>
		<a href="#" style="display:block; background-color:#152f59; text-align:center; height:19%;margin-top:1.5%; text-decoration: none;" id="memberCheck">More Info</a>
	</div>
	
	<div style="background-color:#309b22; width:300px;" id="checkDiv1">
		<h1 id="memberCount1" style="color:white; margin-left:3%; margin-top:0px; margin-bottom:0px; padding-top:5%;"></h1>
		<p style="display:inline; color:white; margin-right:41%; margin-left:3%;">당일 결제건</p>
		<i class="fas fa-users fa-5x" style="color:white; z-index: 20; display:inline"></i>
		<a href="#" style="display:block; background-color:#216818; text-align:center; height:19%;margin-top:1.5%; text-decoration: none;" id="payCheck">More Info</a>
	</div>
</div>
</div>

</div>

<div>
<div id="container"></div>
</div>

<!-- <div>
<div id="demo-wrapper">
  <div id="mapBox">
    <div id="up"></div>
    <div class="selector">
      <button id="btn-prev-map" class="prev-next"><i class="fa fa-angle-left"></i></button>
      <select id="mapDropdown" class="ui-widget combobox"></select>
      <button id="btn-next-map" class="prev-next"><i class="fa fa-angle-right"></i></button>
    </div>
    <div id="container1"></div> 
  </div>
  <div id="sideBox">
    
    <input type="checkbox" id="chkDataLabels" checked='checked' />
    <label for="chkDataLabels" style="display: inline">Data labels</label>
    <div id="infoBox">
      <h4>This map</h4>
      <div id="download"></div>
    </div>
  </div>
</div>
</div> -->


<div class="modal fade" id="memberChkModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="width:70%;">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body" style="overflow: auto;">
 		<table class="table table-striped" id="memberTable">
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="save">Save changes</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="payChkModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
 		<table class="table table-striped" id="payTable">
		</table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="save1">Save changes</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="reportModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
 		<table class="table table-striped" id="payTable">
		</table>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>

</body>
</html>