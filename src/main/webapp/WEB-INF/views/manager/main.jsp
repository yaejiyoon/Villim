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
  margin-left: 17%;
  margin-top:25%;
  
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

/* 맵 차트 스타일 */
#demo-wrapper {
    max-width: 1000px;
    margin: 0 auto;
    height: 560px;
}
#mapBox {
    width: 80%;
    float: left;
}
/* #container1 {
    height: 40%;
    width:40%;
    margin-left: 17%;
  	margin-top:40%;
    position: absolute;
    
}
#sideBox {
    float: right;
    width: 16%;   
    margin: 100px 1% 0 1%;
    padding-left: 1%;
    border-left: 1px solid silver;
    display: none;
}
#infoBox {
    margin-top: 10px;
}
.or-view-as {
    margin: 0.5em 0;
}
#up {
    height: 20px;
    max-width: 400px;
    margin: 0 auto;
}
#up a {
    cursor: pointer;
    padding-left: 40px;
}
.selector {
    height: 40px;
    max-width: 400px;
    margin: 0 auto;
    position: relative;
}
.selector .prev-next {
    position: absolute;
    padding: 0 10px;
    font-size: 30px;
    line-height: 20px;
    background: white;
    font-weight: bold;
    color: #999;
    top: -2px;
    display: none;
    border: none;
}
.selector .custom-combobox {
    display: block;
    position: absolute;
    left: 40px;
    right: 110px;
}
.selector .custom-combobox .custom-combobox-input {
    position: absolute;
    font-size: 14px;
    color: silver;
    border-radius: 0;
    height: 24px;
    display: block;
    background: url(https://www.highcharts.com/samples/graphics/search.png) 5px 5px no-repeat white;
    padding: 1px 5px 1px 30px;
    width: 100%;
}
.selector .custom-combobox .ui-autocomplete-input:focus {
    color: black;
}
.selector .custom-combobox .ui-autocomplete-input.valid {
    color: black;
}
.selector .custom-combobox-toggle {
    position: absolute;
    display: block;
    right: -78px;
    border-radius: 0;
}

.selector #btn-next-map {
    right: -12px;
}
.ui-autocomplete {
    max-height: 500px;
    overflow: auto;
}
.ui-autocomplete .option-header {
    font-style: italic;
    font-weight: bold;
    margin: 5px 0;
    font-size: 1.2em;
    color: gray;
}

.loading {
    margin-top: 10em;
    text-align: center;
    color: gray;
}
.ui-button-icon-only .ui-button-text {
    height: 26px;
    padding: 0 !important;
    background: white;
}
#infoBox .button {
    border: none;
    border-radius: 3px;
    background: #a4edba;
    padding: 5px;
    color: black;
    text-decoration: none;
    font-size: 12px;
    white-space: nowrap;
    cursor: pointer;
    margin: 0 3px;
    line-height: 30px;
}

@media (max-width: 768px) {
    #demo-wrapper {
        width: auto;
        height: auto;
    }
    #mapBox {
        width: auto;
        float: none;
    }
    #container {
        height: 310px;
    }
    #sideBox {
        float: none;
        width: auto;
        margin-top: 0;
        border-left: none;
        border-top: 1px solid silver;
    }
} */

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
	#navi a{
	 color:white;
	 margin-left:2%;
	}
	#naviLogo{
		text-align:center;
		padding-top: 2%;
	}
	#content{
	display:inline-block;
	position:absolute;
	width:100%;
	height:100%;
	
	}
	#contentHeader{
	margin-left:0.5%;
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
		display:inline-block;
	}
	#btn{
		width:100px;
		margin-right:60%;
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
	

	
/* 	(function poll() {
	    $.ajax({
	        url: 'mainTest.admin',
	        type: 'GET',
	        dataType: 'json',
	        success: function(response) {
	           
	        },
	        timeout: 3000,
	        complete: setTimeout(function() { poll(); }, 6000)
	    })
	})(); */
				

	 
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
<!-- <script>
$(function(){

	/**
	 * This is a complicated demo of Highmaps, not intended to get you up to speed
	 * quickly, but to show off some basic maps and features in one single place.
	 * For the basic demo, check out https://www.highcharts.com/maps/demo/geojson
	 * instead.
	 */

	// Base path to maps
	var baseMapPath = "https://code.highcharts.com/mapdata/",
	  showDataLabels = false, // Switch for data labels enabled/disabled
	  mapCount = 0,
	  searchText,
	  mapOptions = '';

	// Populate dropdown menus and turn into jQuery UI widgets
	$.each(Highcharts.mapDataIndex, function (mapGroup, maps) {
	  if (mapGroup !== "version") {
	    mapOptions += '<option class="option-header">' + mapGroup + '</option>';
	    $.each(maps, function (desc, path) {
	      mapOptions += '<option value="' + path + '">' + desc + '</option>';
	      mapCount += 1;
	    });
	  }
	});
	searchText = 'Search ' + mapCount + ' maps';
	mapOptions = '<option value="custom/world.js">' + searchText + '</option>' + mapOptions;
	$("#mapDropdown").append(mapOptions).combobox();

	// Change map when item selected in dropdown
	$("#mapDropdown").change(function () {
	  var $selectedItem = $("option:selected", this),
	    mapDesc = $selectedItem.text(),
	    mapKey = this.value.slice(0, -3),
	    svgPath = baseMapPath + mapKey + '.svg',
	    geojsonPath = baseMapPath + mapKey + '.geo.json',
	    javascriptPath = baseMapPath + this.value,
	    isHeader = $selectedItem.hasClass('option-header');

	  // Dim or highlight search box
	  if (mapDesc === searchText || isHeader) {
	    $('.custom-combobox-input').removeClass('valid');
	    location.hash = '';
	  } else {
	    $('.custom-combobox-input').addClass('valid');
	    location.hash = mapKey;
	  }

	  if (isHeader) {
	    return false;
	  }

	  // Show loading
	  if (Highcharts.charts[0]) {
	    Highcharts.charts[0].showLoading('<i class="fa fa-spinner fa-spin fa-2x"></i>');
	  }


	  // When the map is loaded or ready from cache...
	  function mapReady() {

	    var mapGeoJSON = Highcharts.maps[mapKey],
	      data = [],
	      parent,
	      match;

	    // Update info box download links
	    $("#download").html(
	      '<a class="button" target="_blank" href="https://jsfiddle.net/gh/get/jquery/1.11.0/' +
	        'highcharts/highcharts/tree/master/samples/mapdata/' + mapKey + '">' +
	        'View clean demo</a>' +
	        '<div class="or-view-as">... or view as ' +
	        '<a target="_blank" href="' + svgPath + '">SVG</a>, ' +
	        '<a target="_blank" href="' + geojsonPath + '">GeoJSON</a>, ' +
	        '<a target="_blank" href="' + javascriptPath + '">JavaScript</a>.</div>'
	    );

	    // Generate non-random data for the map
	    $.each(mapGeoJSON.features, function (index, feature) {
	      data.push({
	        key: feature.properties['hc-key'],
	        value: index
	      });
	    });

	    // Show arrows the first time a real map is shown
	    if (mapDesc !== searchText) {
	      $('.selector .prev-next').show();
	      $('#sideBox').show();
	    }

	    // Is there a layer above this?
	    match = mapKey.match(/^(countries\[a-z]{2}\[a-z]{2})-[a-z0-9]+-all$/);

	    if (/^countries\[a-z]{2}\[a-z]{2}-all$/.test(mapKey)) { // country
	      parent = {
	        desc: 'World',
	        key: 'custom/world'
	      };
	    } else if (match) { // admin1
	      parent = {
	        desc: $('option[value="' + match[1] + '-all.js"]').text(),
	        key: match[1] + '-all'
	      };
	    } 
	    $('#up').html('');
	    if (parent) {
	      $('#up').append(
	        $('<a><i class="fa fa-angle-up"></i> ' + parent.desc + '</a>')
	          .attr({
	            title: parent.key
	          })
	          .click(function () {
	            $('#mapDropdown').val(parent.key + '.js').change();
	          })
	      );
	    }


	    // Instantiate chart
	    $("#container1").highcharts('Map', {

	      title: {
	        text: null
	      },

	      mapNavigation: {
	        enabled: true
	      },

	      colorAxis: {
	        min: 0,
	        stops: [
	          [0, '#EFEFFF']
	         /*  [0.5, Highcharts.getOptions().colors[0]], */
	         /*  [1, Highcharts.Color(Highcharts.getOptions().colors[0]).brighten(-0.5).get()] */
	        ]
	      },

	      legend: {
	        layout: 'vertical',
	        align: 'left',
	        verticalAlign: 'bottom'
	      },

	      series: [{
	        data: data,
	        mapData: mapGeoJSON,
	        joinBy: ['hc-key', 'key'],
	        name: 'Random data',
	        states: {
	          hover: {
	           /*  color: Highcharts.getOptions().colors[2] */
	          }
	        },
	        dataLabels: {
	          enabled: showDataLabels,
	          formatter: function () {
	            return mapKey === 'custom/world' || mapKey === 'countries/us/us-all' ?
	                (this.point.properties && this.point.properties['hc-a2']) :
	                this.point.name;
	          }
	        },
	        point: {
	          events: {
	            // On click, look for a detailed map
	            click: function () {
	              var key = this.key;
	              $('#mapDropdown option').each(function () {
	                if (this.value === 'countries/' + key.substr(0, 2) + '/' + key + '-all.js') {
	                  $('#mapDropdown').val(this.value).change();
	                }
	              });
	            }
	          }
	        }
	      }, {
	        type: 'mapline',
	        name: "Separators",
	        data: Highcharts.geojson(mapGeoJSON, 'mapline'),
	        nullColor: 'gray',
	        showInLegend: false,
	        enableMouseTracking: false
	      }]
	    });

	    showDataLabels = $("#chkDataLabels").prop('checked');

	  }

	  // Check whether the map is already loaded, else load it and
	  // then show it async
	  if (Highcharts.maps[mapKey]) {
	    mapReady();
	  } else {
	    $.getScript(javascriptPath, mapReady);
	  }
	});

	// Toggle data labels - Note: Reloads map with new random data
	$("#chkDataLabels").change(function () {
	  showDataLabels = $("#chkDataLabels").prop('checked');
	  $("#mapDropdown").change();
	});

	// Switch to previous map on button click
	$("#btn-prev-map").click(function () {
	  $("#mapDropdown option:selected").prev("option").prop("selected", true).change();
	});

	// Switch to next map on button click
	$("#btn-next-map").click(function () {
	  $("#mapDropdown option:selected").next("option").prop("selected", true).change();
	});

	// Trigger change event to load map on startup
	if (location.hash) {
	  $('#mapDropdown').val(location.hash.substr(1) + '.js');
	} else { // for IE9
	  $($('#mapDropdown option')[0]).attr('selected', 'selected');
	}
	$('#mapDropdown').change();

});

</script> -->

<div id="bg">
		<img src="./resources/images/17.jpg" alt="">
</div>
<div id="wrapper">


<div id="navi">
<ul class="nav nav-pills nav-stacked" id="collapseExample">
<li role="presentation" id="naviLogo"><img src="../resources/img/logo2.png" style="height:30%;"></li>
<li role="presentation"><a href="#"><h4><strong>admin 계정 정보</strong></h4></a></li>
 <li role="presentation"><a href="#"><h4><strong>Home</strong></h4></a></li>
  <li role="presentation"><a href="#"><h4><strong>Profile</strong></h4></a></li>
  <li role="presentation"><a href="#"><h4><strong>Messages</strong></h4></a></li>
</ul>
</div>

<div id="content">
	<div id="contentHeader">
		<a id="btn"><i class="fas fa-align-justify fa-2x"></i></a>
		<a href="#">
 		 <i class="fas fa-envelope fa-2x"></i> <span class="badge" style="wi">4</span>
		</a>		
	</div>
	<div id="titleDiv"><h2 id="title">Dashboard</h2>
	
	<div style="background-color:#47639b; width:15%;" id="checkDiv">
		<h1 id="memberCount" style="color:white; margin-left:3%; margin-top:0px; margin-bottom:0px; padding-top:5%;"></h1>
		<p style="display:inline; color:white; margin-right:41%; margin-left:3%;">전체 회원수</p>
		<i class="fas fa-users fa-5x" style="color:white; z-index: 20;"></i>
		<a href="#" style="display:block; background-color:#152f59; text-align:center; height:19%;margin-top:1.5%; text-decoration: none;" id="memberCheck">More Info</a>
	</div>
	
	<div style="background-color:#47639b; width:15%;" id="checkDiv1">
		<h1 id="memberCount1" style="color:white; margin-left:3%; margin-top:0px; margin-bottom:0px; padding-top:5%;"></h1>
		<p style="display:inline; color:white; margin-right:41%; margin-left:3%;">당일 결제건</p>
		<i class="fas fa-users fa-5x" style="color:white; z-index: 20;"></i>
		<a href="#" style="display:block; background-color:#152f59; text-align:center; height:19%;margin-top:1.5%; text-decoration: none;" id="payCheck">More Info</a>
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
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
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
</body>
</html>