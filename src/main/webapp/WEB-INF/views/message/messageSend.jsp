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

<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/datepicker.js?var=1" />"></script>
<script type="text/javascript" src="<c:url value="../../resources/css/home/dist/js/i18n/datepicker.en.js" />"></script>
<link rel="stylesheet" href="<c:url value="../../resources/css/home/dist/css/datepicker.css?var=1" />" />
<link rel="stylesheet" href="<c:url value="../../resources/css/home/docs/css/style.css?var=1" />"/>

<title>메세지 보내기</title>
<style>
.card {
	transition: 0.3s;
	width: 55%;
	height: 40vh;
	margin: 0 auto;
	border: 1px solid #c9cacc;
}

.card:hover {
	/* box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); */
	
}


.themeBtn3 {
    background: #ff2e4d;
    color: #ffffff !important;
    display: inline-block;
    font-size: 15px;
    font-weight: 500;
    height: 50px;
    line-height: 0.8;
    padding: 18px 30px;
    text-transform: capitalize;
    border-radius: 1px;
    letter-spacing: 0.5px;
	border:0px !important;
	cursor:pointer;
	border-radius:100px;

}
.themeBtn3:hover {
    background: rgb(255, 46, 77);
    color: #ffffff;
}

.form-control{ box-shadow:none; border-color:#eee; height:49px;}
.form-control:focus{ box-shadow:none; border-color:#00b09c;}
.form-control-feedback{ line-height:50px;}

.datepicker-here{
z-index:200;
position:absolute;
margin:0;
left:500vw;
top:200vh;
}
</style>
<script>
$(document).ready(function() {
	
	 $('.datepicker-here').datepicker({
         
         dateFormat : "yyyy-mm-dd",
         minDate:new Date(),
         toggleSelected: false,
         autoClose : "true",
         language: {
            days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
             daysShort: ['일', '월', '화', '수', '목', '금', '토'],
             daysMin: ['일', '월', '화', '수', '목', '금', '토'],
             months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
             monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
             today: '오늘',
             clear: '날짜 지우기',
             dateFormat: "yyyy/mm/dd",
             timeFormat: 'hh:ii aa'
          },
           onRenderCell: function (date, cellType) {
         	  
         	  var currentDate = date.getDate();
               var currentMonth = date.getMonth();
               currentMonth = "0"+currentMonth;
               
/*                if (cellType == 'day') {
                  for(var i=0; i<eventDates.length;i++){
                     
                     var eventYear = eventDates[i].split('-')[0];
                        var eventMonth = eventDates[i].split('-')[1]-1;
                     eventMonth = "0"+eventMonth;
                        var eventDay = eventDates[i].split('-')[2];
                        
                        
                        if(eventMonth == currentMonth){
                           if(eventDay == currentDate){
                              return {
                                   classes: 'my-class',
                                   disabled: true
                                   
                                }
                           }
                        }
                        
                  }
           } */
          }
              
      });
	
	
    $('[id^=detail-]').hide();
    $('.toggle').click(function() {
        $input = $( this );
        $target = $('#'+$input.attr('data-toggle'));
        $target.slideToggle();
    });
    
    $("#submitBt").click(function(){
        
        if(!$('#message').val()){
        	$('#message').after(" <div class=\"alert alert-danger\" style=\"position:relative;top:4.8vh;background-color:white;\"><span class=\"glyphicon glyphicon-alert\"></span><strong  style=\"border:white;background:white;\">공백은 허용하지 않습니다!</strong></div>");
        	
        	
        	window.setTimeout(function() {
        	    $(".alert").fadeTo(1000, 0).slideUp(1000, function(){
        	        $(this).remove(); 
        	    });
        	}, 3000);
        	
        	return false;
        }
        
        $("#formId").submit();
    	
    })
    

    
    
});

</script>
</head>
<body>
	<%@ include file="../../resource/include/messageSendHeader.jsp"%>
	<!-- <div id="wrapper"
		style="height: auto; margin-bottom: 20vh; width: 50vw; margin-top: 10vh; position: relative; left: 32%;border:1px solid red;"> -->
		<div class="card"
			style="position: relative; left: 17vw; top: -6vh;width:18vw;margin-top: 7vh; ">
			
			
			<div class="row" style="position:relative;width:100%;left:0vw;height:14vh;">
			<div style="position:relative;top:1vh;left:2.4vw;">
			<h5 style="color:#6d7063;font-weight:bold;">${home_type}의 개인실</h5>
			<h4 style="color:#5b5b5a;font-weight:700;position:relative;top:1vh;left:0.3vw;">￦${home_price}<b style="font-weight:100;">/박</b></h4>
			<c:choose>
				<c:when test="${reviewCount<1}">
					<h6 style="font-weight:bold;color:#5b5b5a;">No reviews</h6>
				</c:when>
				<c:otherwise>
					<h6 style="font-weight:700;color:#5b5b5a; position:relative;left:1.3vw;top:1.7vh;">리뷰 ${reviewCount}개</h6>
				</c:otherwise>
			</c:choose>
		</div>
			
			
			
			<img  src="files/${home_main_pic}" class="media-object" style="height:11vh;position:relative;left:0vw;top:2vh;"/>
				
				
				</div>
			<!--  -->
			<div class="row" style="font-weight:700;width:100%;height:17vh;position:relative;left:0.8vw;">
				<!-- <div style="position:relative; display: inline !important; top:2vh;left:1vw; width:37vw;height:3vh;border:1px solid red;"><h6 style="position:relative;font-weight:700;left:2vw;">체크인</h6><h6 style="display: inline !important;position:relative;font-weight:700;top:-3vh;left:6.5vw;">체크 아웃</h6><h6 style="display: inline !important;position:relative; left:9.5vw;top:-3vh;font-weight:700;">게스트</h6></div> -->
				
				<!-- <h5 style="font-weight:800;position:relative;top:0vh;left:4vw;width:10vw;height:3vh;border:1px solid red;">날짜</h5> -->
				
<div style="position:relative;left:1vw;"><h5 style="font-weight:800;position:relative;left:0vw;top:1vh;">날짜</h5>
				<input type='text' class='datepicker-here form-control' data-multiple-dates-separator=" ~ " data-range="true"  data-position='left center' style="position:relative;top:1.3vh;left:0vw;width:15vw;z-index:100;text-align:center;" /></div><div class="dropdown fixed" style="position:relative;top:10vh;left:-11.5vw;">
            			
            				<input type="text" class="search-query3 form-control"
            				style="position: relative; width:5vw;left:-1vw; border:none;"
            				id="peopleDrop" value="게스트 1명"
            				onclick="myFunction()"/>
            				
            				<div class="dropdown-content peoDrop" id="myDropdown" style="position:relative;width:8vw;left:6vw;top:-4.7vh;">
            					 <div id="peopleDropdownContentInner">
                     				
                     				<div>
                     					<button id="peopleup" class="btn btn-primary-outline" type="button" >+</button>
										<p style="display: inline;" id="pcount">1</p>
										<button id="peopledown" class="btn btn-primary-outline" type="button">-</button>
										
                     				</div>
                     				<!-- <div>
                     					<button id="dropdownClose" class="btn btn-primary-outline" type="button">닫기</button>
                     				</div> -->
                 				</div>

            				</div>
            				
            				<script>
            				function myFunction() {
            				    document.getElementById("myDropdown").classList.toggle("show");
            				}
            				
            				// Close the dropdown menu if the user clicks outside of it
            				window.onclick = function(event) {
            					  if (!event.target.matches('#peopleDrop')) {

            					    var dropdowns = document.getElementsByClassName("dropdown-content peoDrop");
            					    var i;
            					    
            					    var population = $("#peopleDrop").val();
            					    console.log(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    $("#population").val(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            					  }
            					}
            				
            				$('#myDropdown').bind('click', function (e) { e.stopPropagation() })
            				
            					$("#peopledown").attr("disabled",true);
            				
            					
            				   $("#peopledown").click(function() {
            					   var intmax = parseInt($("#pcount").text());
            					   
            					  
            					   
            				       if(intmax > 2){
            				          intmax = intmax - 1; 
            				          $("#peopleDrop").val("게스트 "+intmax+"명");
            				          $("#pcount").text(intmax);
            				          $("#peopleup").attr("disabled",false);
            				       }else if(intmax = 2){
            				    	   $("#peopleDrop").val("게스트 "+1+"명");
            				    	   $("#peopledown").attr("disabled",true);
            				    	   $("#pcount").text(1);
            				       }
            				       
            				    });
            				    
            				    $("#peopleup").click(function() {
            				       var intmax = parseInt($("#pcount").text());
            				   
            				       if(intmax < 14 ){
            				          $("#peopledown").attr("disabled",false);
            				          intmax = intmax + 1; 
            				          $("#pcount").text(intmax);
            				          $("#peopleDrop").val("게스트 "+intmax+"명");
            				       }else if(intmax = 14){
            				          $("#peopleup").attr("disabled",true);
            				          $("#pcount").text(intmax);
            				          $("#peopleDrop").val("게스트 "+intmax+"명");
            				       }
            				    });
            				    
            				    $("#dropdownClose").click(function(){
            				    	var dropdowns = document.getElementsByClassName("dropdown-content");
            					    var i;
            					    
            					    var population = $("#peopleDrop").val();
            					    console.log(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    $("#population").val(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            				    });
            				</script>
            				
            				
            			</div>
				<!-- <hr style="color:gray;width:18.5vw;position:relative;top:10vh;"> -->
			</div>
			
			<!--  -->
				
			
			
			<!--  -->
			<div class="row" style="height:7vh;position:relative;left:0.8vw;top:-0.3vh;width:100%;">
			
			<h5 style="position:relative;left:1.5vw;top:0vh;width:15vw;line-height:4vh;">날짜를 입력해 예약 가능 여부를 확인하세요</h5>
			
			</div>
			
			<div>
			</div>
		</div>
		
		
		
		
		<div class="container" style="position:relative;left:-13vw;width:35vw;height:100vh;top:-56vh;margin-top: 10vh;">
		<h3 style="position:relative;color:#444444;top:-1.5vh;font-weight:700">${host_name}님에게 연락하기</h3>
		
		<img src="files/${host_picture}" class="img-circle" style="width:4vw;height:7vh;position:relative;left:29.5vw;top:-4vh;">
		
		
		<h4 style="position:relative;top:-8vh;color:#616163;font-size:14;width:26vw;">${host_name}님은 보통 몇 시간 이내에 응답하는 호스트입니다</h4>
		<!-- <hr style="position:relative;top:-5vh;"> -->

        <c:if test="">
        <!-- 둘이 채팅 한 이력이 있으면 메세지로 이동하기 -->
        </c:if>
		<h4 style="position:relative;font-weight:700;color:#444444;">숙소에 대해 자주 묻는 질문</h4>
	<!-- 	<h5 style="position:relative;color:#444444;font-weight:700;top:3vh;">찾아가기</h5> -->

	<div class="panel panel-default" style="border:0px;"> 
        <ul class="list-group">
            <li class="list-group-item" >
                <div class="row toggle" id="dropdown-detail-1" data-toggle="detail-1">
                    <div class="col-xs-10" style="margin-left:1vw;margin-top:1vh;">
                                     찾아가기
                    </div>
                    <div class="col-xs-5"><i class="fa fa-chevron-down" style="position:relative;left:13vw;top:0.5vh;"></i></div>
                </div>
                <div id="detail-1">
                    <div class="container">
                        <div class="fluid-row">
                            <div class="col-xs-5" style="margin-top:1.5vh;">
                            ●${Q1}
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row toggle" id="dropdown-detail-2" data-toggle="detail-2">
                    <div class="col-xs-10" style="margin-left:1vw;margin-top:1vh;">
                                    숙소 세부 정보 및 이용 규칙
                    </div>
                    <div class="col-xs-1"><i class="fa fa-chevron-down" style="position:relative;left:13vw;top:0.5vh;"></i></div>
                </div>
                <div id="detail-2">
                    <div class="container">
                        <div class="fluid-row">
                            <div class="col-xs-5"  style="margin-top:1.5vh;">
                                ●${Q2}
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <li class="list-group-item" >
                <div class="row toggle" id="dropdown-detail-3" data-toggle="detail-3">
                    <div class="col-xs-10" style="margin-left:1vw;margin-top:1vh;">
                        요금 설정 및 예약 가능 여부
                    </div>
                    <div class="col-xs-1"><i class="fa fa-chevron-down" style="position:relative;left:13vw;top:0.5vh;"></i></div>
                </div>
                <div id="detail-3">
                    <div class="container">
                        <div class="fluid-row">
                            <div class="col-xs-5"  style="margin-top:1.5vh;">
                               ●${Q3}
                            </div>

                        </div>
                    </div>
                </div>
            </li>
        </ul>
	</div>

		<h4 style="position:relative;top:4vh;font-weight:700;color:#444444;">여전히 ${host_name}님에게 문의할 사항이 있나요?</h4>
		
		<form id="formId" method="post" action="messageInsertDB.msg">
		<textarea class="form-control" style="resize:vertical;position:relative;top:6vh;" name="message_content" id="message" placeholder="여기에 메세지를 입력하세요" maxlength="500" rows="7" required autofocus></textarea>
		<input type="hidden" name="host_name" id="host_name" value="${host_name}">
		<input type="hidden" name="seq" value="1">
        <input type="hidden" id="checkIn" name="checkIn" value="8월 18일">
        <input type="hidden" id="checkOut" name="checkOut" value="8월 20일">
        <input type="hidden" id="totalNumber" name="number" value="2">
		<div class="container-fluid margin" style="position:relative;top:8vh;left:-1vw;">
	<a  id="submitBt" type="button" target="_blank" class="themeBtn3" style="font-weight:bold;text-decoration:none;">메세지 전송하기</a>
    </div>
		
		</form>
		
		
		
		
		
		
		
		</div> 
		



<!-- 	</div> -->

	<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
	<script src="js/bootstrap.js"></script>
</body>
</html>