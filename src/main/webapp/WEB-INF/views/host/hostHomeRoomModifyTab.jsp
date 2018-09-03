<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />

<title>편의시설 수정 탭</title>

<style>
div {
	box-sizing: border-box;
}

#wrapper {
	margin: 30px auto;
	margin-bottom: 200px;
	height: auto;
	width: 70%;
}

#wrapper-sub {
	width: 60%;
}

.wrapper-sub-back {
	margin-top: 30px;
	margin-bottom: 50px;
	font-size: 20px;
	width: 100%;
	display: inline-block;
	float: left;
}

.back-wrap {
	width: 3%;
	display: inline-block;
	float: left;
}

.back-img {
	width: 100%;
	height: 100%;
}

.back-link {
	display: inline-block;
	float: left;
}

.wrapper-sub-title {
	font-size: 20px;
	margin-top: 30px;
}

.line,.sline {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 30px;
	margin-bottom: 30px;
}

.btn-group {
	margin-top: 20px;
}

.btn-group button:first-child {
	margin-right: 30px;
}

.save {
	background-color: #008489;
	color: white;
}

.cancel {
	background-color: white;
	color: #008489;
	border: 2px solid #008489;
}

.clickbtn {
	background-color: white;
	color: #008489;
	border-color: #008489; 
	display: inline;
	border-radius: 50%;
	font-size: 300;
	outline: 0;
}

.room-coll {
	width: 100%;
	/* 	border: 1px solid black; */
}

.room-coll-sub1 {
	width: 60%;
	display: inline-block;
	margin-bottom: 15px;
	/* 	border: 1px dotted black */
}

.room-coll-title {
	font-size: 16px;
}

.room-coll-sub2 {
	width: 39%;
	display: inline-block;
	top: -10px;
	position: relative;
}

.title {
	font-size: 16px;
	margin-bottom: 20px;
}

.sel-wrap {
	width: 85%;
}

#sel-wrap1 {
	margin-bottom: 20px;
}

.sub-title {
	width: 30%;
	display: inline-block;
	font-size: 16px;
}

.calcul {
	width: 60%;
	display: inline-block;
	text-align: right;
}

input {
	text-align: center;
	background: white;
	width: 10%;
	border: none;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id="wrapper-sub">
			<div class="wrapper-sub-back">
				<div class="back-wrap">
					<img class="back-img"
						src="<c:url value='/resources/img/back.png'/>">
				</div>
				<div class="back-link">
					<a onclick="history.back()">${hdto.home_name } 수정으로 돌아가기</a>
				</div>
			</div>
			<p class="wrapper-sub-title">
				<b>숙소</b>
			</p>
			<p>게스트가 머물게 될 공간에 대해 자세히 설명해 주세요.</p>
			<div class=line></div>

			<form action="hostHomeRoomModifyProc.do" method="post">

				<div class=title>
					<b>숙소유형</b>
				</div>
				<div id=sel-wrap1 class=sel-wrap>
					<select id="home-type1" name="home_buildingType"
						class="input-lg form-control">
						<option value="아파트">아파트</option>
						<option value="공동 주택">공동 주택</option>
						<option value="레지던스">레지던스</option>
						<option value="로프트">로프트</option>
					</select>
				</div>

				<div class=title>
					<b>숙소유형</b>
				</div>
				<div class=sel-wrap>
					<select id="home-type2" name="home_type"
						class="input-lg form-control">
						<option value="집 전체">집 전체</option>
						<option value="개인실">개인실</option>
						<option value="다인실">다인실</option>
					</select>
				</div>

				<div class="line"></div>

				<div>
					<div class="title sub-title">
						<b>숙박 인원</b>
					</div>
					<div class="calcul">
						<button class="btn clickbtn" type="button" id="peopledown">-</button>
						<input type="text" id="pcount"
							name="home_people" value="${hdto.home_people }">
						<button class="btn clickbtn" type="button" id="peopleup">+</button>
					</div>
				</div>

				<div class="line"></div>

				<div class=title>
					<b>침대 유형</b>
				</div>

				<div>
					<div class=sub-title>침실 수</div>
					<div class=calcul>
						<button class="btn clickbtn" type="button" id="roomdown">-</button>
						<input type="text"id="roomcount" name="roomcount" value="0">
						<button class="btn clickbtn" type="button" id="roomup">+</button>
					</div>
				</div>
				<div id="roomline" class="line"></div>


				<div class=title>
					<b>공용공간</b>
				</div>
				<div style="margin-bottom: 15px;">
					<div class="sub-title">소파</div>
					<div class="calcul">
						<button type="button" id="sofadown" class="btn clickbtn">-</button>
						<input type="text" id="sofacount" name="sofacount" value="0">
						<button type="button" id="sofaup" class="btn clickbtn">+</button>
					</div>
				</div>

				<div>
					<div class="sub-title">매트리스(요와 이불)</div>
					<div class=calcul>
						<button type="button" id="mattdown" class="btn clickbtn">-</button>
						<input type="text" id="mattcount"
							name="mattcount" value="0">
						<button type="button" id="mattup" class="btn clickbtn">+</button>
					</div>
				</div>

				<div class="line"></div>

				<div class=title>
					<b>욕실 개수</b>
				</div>
				<div>
					<div class="sub-title">욕실 수</div>
					<div class="calcul">
						<button type="button" id="bathdown" class="btn clickbtn">-</button>
						
						<input type="text" id="bathcount" name="bathcount"
							 value=0>
							
						<button type="button" id="bathup" class="btn clickbtn">+</button>
					</div>
				</div>

				<nav class="navbar navbar-default navbar-fixed-bottom"
					style="width: 70%; height: 12%; margin: 0 auto;">
					<div class="container">
						<div class="btn-group">
							<button class="btn btn-lg save">저장</button>
							<button type="button" class="btn btn-lg cancel"
								onclick="history.back()">취소</button>
						</div>
					</div>
				</nav>
				<input type="hidden" name="seq" value="${hdto.home_seq }">
				<input type="hidden" id="cnt" name="cnt" value="0">
	</form>
	
				<script>
					$(document).ready(function(){
						
						if($('#roomcount').val(0)){
							$('#roomdown').prop("disabled", true);
						}
						
						if(${bdto ne null}){
							var bed_s = '${bdto.bed_single}';
							var bed_d = '${bdto.bed_double}';
							var bed_q = '${bdto.bed_queen}';
							
							var arr_s = new Array();
							arr_s = bed_s.split(",");
							
							var arr_d = new Array(); 
							arr_d = bed_d.split(",");
							
							var arr_q = new Array(); 
							arr_q = bed_q.split(",");
							
							console.log("arr_s 크기::"+ arr_s.length);
							console.log("arr_d 크기::"+ arr_d.length);
							console.log("arr_q 크기::"+ arr_q.length);
							

							for(var i=0; i<arr_s.length; i++){
								$('#roomup').click();
							}
							
							for(var i=0; i<arr_s.length; i++){
								console.log("assss::"+arr_s[i]);
								$("#single-count"+(i+1)+"").val(arr_s[i]);
							}
						
							for(var i=0; i<arr_d.length; i++){
								console.log("adddd::"+arr_d[i]);
								$("#double-count"+(i+1)+"").val(arr_d[i]);  
							}
							
							for(var i=0; i<arr_q.length; i++){ 
								console.log("aqqqq::"+arr_q[i]);
								$("#queen-count"+(i+1)+"").val(arr_q[i]);
							}
							
// 							$('#roomcount').val(arr_s.length);
							
						
							
							
						}else{
							$('#roomcount').val(0);							
						}
						
// 						var type1 = [];
// 						var type2 = [];
// 						$('#home_type1').each(function(){
// 							type1.push($(this).val());
// 						})
// 						$('#home_type2').each(function(){
// 							type2.push($(this).val());
// 						})
						
						if(${hdto.home_buildingType == '아파트' }){
							$('#home-type1').find("option[value='아파트']").prop("selected",true);	
						}else if(${hdto.home_buildingType == '공동 주택' }){
							$('#home-type1').find("option[value='공동 주택']").prop("selected",true);
						}else if(${hdto.home_buildingType == '레지던스' }){
							$('#home-type1').find("option[value='레지던스']").prop("selected",true);
						}else if(${hdto.home_buildingType == '로프트' }){
							$('#home-type1').find("option[value='로프트']").prop("selected",true);
						}
						
						if(${hdto.home_type=='집 전체'}){
							$('#home-type2').find("option[value='집 전체']").prop("selected",true);
						}else if(${hdto.home_type=='개인실'}){
							$('#home-type2').find("option[value='개인실']").prop("selected",true);
						}else if(${hdto.home_type=='다인실'}){
							$('#home-type2').find("option[value='다인실']").prop("selected",true);
						}
						
						$('#pcount').val('${hdto.home_people}');
						
						if(${hdto.home_public ne null}){
							var str = '${hdto.home_public}';
							var publicArr =	str.split(",");
							
						}
						console.log("publicArr[0]::"+publicArr[0]);
						console.log("publicArr[1]::"+publicArr[1]);
						console.log("publicArr[1]::"+publicArr[2]);
						$('#sofacount').val(publicArr[0]);
						$('#mattcount').val(publicArr[1]);
						$('#bathcount').val(publicArr[2]);
					});
				
					
					
					var output="";
					var cnt=0;
					var num1 = 0;
					
				$('#roomup').click(function(){
					var intmax = parseInt($("#roomcount").val());
					
					if (intmax < 14) {
						$("#roomdown").attr("disabled", false);
						intmax = intmax + 1;
						$("#roomcount").val(intmax);
					} else if (intmax = 14) {
						$("#roomup").attr("disabled", true);
						$("#roomcount").val(intmax);
					}
					
					cnt++;
					output+="<div id='coll"+cnt+"'>";
					output+="<a data-toggle='collapse' href='#collapseExample"+cnt+"' aria-expanded='false' aria-controls='collapseExample' style='font-size: 18px; width: 100%; color: black;'>"+cnt+" 번 침실</a>";
					output+="<div class='collapse' id='collapseExample"+cnt+"' style='background-color:white;'>";
					output+="<div class='well' style='display: inline-block; background-color:white; float: left; width: 60%; height: 280px; padding: 0; border: none;>"; 
					output+="<div style='width: 100%; height: 100%; background-color:white;'>";
					output+="<div class='sline'></div>";
					output+="<div class='room-coll'>";
					output+="<div class='room-coll-sub1'>";
					output+="<div class='room-coll-title'>더블</div><div>폭125~149cm</div>"
					output+="</div>";
					output+="<div class='room-coll-sub2'>";
					output+="<button class='btn clickbtn cbt' type='button' id='double-down"+cnt+"'>-</button><input type='text' value='0' id='double-count"+cnt+"' name='double-count"+cnt+"'> <button class='btn clickbtn cbt' type='button' id='double-up"+cnt+"'>+</button>"
					output+="</div>";
					output+="</div>";
					
					output+="<div class='room-coll'>";
					output+="<div class='room-coll-sub1'>";
					output+="<div class='room-coll-title'>퀸</div><div>폭150~179cm</div>"
					output+="</div>";
					output+="<div class='room-coll-sub2'>";
					output+="<button class='btn clickbtn cbt' type='button' id='queen-down"+cnt+"'>-</button><input type='text' value='0' id='queen-count"+cnt+"' name='queen-count"+cnt+"'> <button class='btn clickbtn cbt' type='button' id='queen-up"+cnt+"'>+</button>"
					output+="</div>";
					output+="</div>";
					
					output+="<div class='room-coll'>";
					output+="<div class='room-coll-sub1'>";
					output+="<div class='room-coll-title'>싱글</div><div>폭80~109cm</div>"
					output+="</div>";
					output+="<div class='room-coll-sub2'>";
					output+="<button class='btn clickbtn cbt' type='button' id='single-down"+cnt+"'>-</button><input type='text' value='0' name='single-count"+cnt+"' id='single-count"+cnt+"'  class='bed-count'> <button class='btn clickbtn cbt' type='button' id='single-up"+cnt+"'>+</button>"
					output+="</div>";
					output+="</div>";
					
					output+="</div>";
					output+="</div>";
					output+="</div>";
					output+="<div id='sline"+cnt+"' class='sline'></div>"
					output+="</div>";
					
					if(cnt==1){
						$('#roomline').after(output);
					}else{
						$("#sline"+(cnt-1)+"").after(output);
					}
					
					output="";
					
					$("#cnt").val(cnt);
					console.log("cnt::"+cnt)
										
					$("#double-up"+cnt+"").click(function() {
						var val = $(this).attr('id');
						var upcnt = val.split("up")[1];
						num1=0;
						num1 = $("#double-count"+upcnt+"").val();
						num1 = Number(num1)+1;
						$("#double-count"+upcnt+"").val(num1);
					})
					
					$("#double-down"+cnt+"").click(function() {
						var val = $(this).attr('id');
						console.log("val::"+val);
						var downcnt = val.split("wn")[1];
						var min = $("#double-count"+downcnt+"").val();
						if(min>1){
							min = Number(min)-1;
							$("#double-down"+downcnt+"").prop('disabled', false);
							$("#double-count"+downcnt+"").val(min);
						}else if(min == 1){
							$("#double-down"+downcnt+"").prop('disabled', true);
							$("#double-count"+downcnt+"").val(0);
						}
					})
					
						$("#single-up"+cnt+"").click(function() {
						var val = $(this).attr('id');
						var upcnt = val.split("up")[1];
						num1=0;
						num1 = $("#single-count"+upcnt+"").val();
						num1 = Number(num1)+1;
						$("#single-count"+upcnt+"").val(num1);
					})
					
					$("#single-down"+cnt+"").click(function() {
						var val = $(this).attr('id');
						var downcnt = val.split("wn")[1];
						var min = $("#single-count"+downcnt+"").val();
						if(min>1){
							min = Number(min)-1;
							$("#single-down"+downcnt+"").prop('disabled', false);
							$("#single-count"+downcnt+"").val(min);
						}else if(min == 1){
							$("#single-down"+downcnt+"").prop('disabled', true);
							$("#single-count"+downcnt+"").val(0);
						}
					})
					
					$("#queen-up"+cnt+"").click(function() {
						var val = $(this).attr('id');
						var upcnt = val.split("up")[1];
						num1=0;
						num1 = $("#queen-count"+upcnt+"").val();
						num1 = Number(num1)+1;
						$("#queen-count"+upcnt+"").val(num1);
					})
					
					
					$("#queen-down"+cnt+"").click(function() {
						var val = $(this).attr('id');
						var downcnt = val.split("wn")[1];
						var min = $("#queen-count"+downcnt+"").val();
						if(min>1){
							min = Number(min)-1;
							$("#queen-down"+downcnt+"").prop('disabled', false);
							$("#queen-count"+downcnt+"").val(min);
						}else if(min == 1){
							$("#queen-down"+downcnt+"").prop('disabled', true);
							$("#queen-count"+downcnt+"").val(0);
						}
					})
				})
				
				$('#roomdown').click(function(){
					$("#coll"+cnt+"").remove();
					$("#sline"+cnt+"").remove();
					cnt--;
					console.log("cnt::"+cnt);
					$('#cnt').val(cnt);
				})
				
			
			$("#peopledown").click(function() {
				var intmax = parseInt($("#pcount").val());

				if (intmax > 2) {
					intmax = intmax - 1;
					$("#pcount").val(intmax);
					$("#peopleup").attr("disabled", false);
				} else if (intmax = 2) {
					$("#peopledown").attr("disabled", true);
					$("#pcount").val(1);
				}

			});

			$("#peopleup").click(function() {
				var intmax = parseInt($("#pcount").val());

				if (intmax < 14) {
					$("#peopledown").attr("disabled", false);
					intmax = intmax + 1;
					$("#pcount").val(intmax);
				} else if (intmax = 14) {
					$("#peopleup").attr("disabled", true);
					$("#pcount").val(intmax);
				}
			});

		

			$("#roomdown").click(function() {
				var intmax = parseInt($("#roomcount").val());

				if (intmax > 1) {
					intmax = intmax - 1;
					$("#roomcount").val(intmax);
					$("#roomup").attr("disabled", false);
				} else if (intmax = 1) {
					$("#roomdown").attr("disabled", true);
					$("#roomcount").val(0);
				}

			});


		

$("#bathup").click(function() {
	var intmax = parseInt($("#bathcount").val());
	if (intmax < 14) {
		$("#bathdown").attr("disabled", false);
		intmax = intmax + 1;
		$("#bathcount").val(intmax);
	} else if (intmax = 14) {
		$("#bathup").attr("disabled", true);
		$("#bathcount").val(intmax);
	}
});

$("#bathdown").click(function() {
	var intmax = parseInt($("#bathcount").val());

	if (intmax > 1) {
		intmax = intmax - 1;
		$("#bathcount").val(intmax);
		$("#bathup").attr("disabled", false);
	} else if (intmax = 1) {
		$("#bathdown").attr("disabled", true);
		$("#bathcount").val(0);
	}

});


$("#sofaup").click(function() {
	var intmax = parseInt($("#sofacount").val());

	if (intmax < 14) {
		$("#sofadown").attr("disabled", false);
		intmax = intmax + 1;
		$("#sofacount").val(intmax);
	} else if (intmax = 14) {
		$("#sofaup").attr("disabled", true);
		$("#sofacount").val(intmax);
	}
});

$("#sofadown").click(function() {
	var intmax = parseInt($("#sofacount").val());

	if (intmax > 1) {
		intmax = intmax - 1;
		$("#sofacount").val(intmax);
		$("#sofaup").attr("disabled", false);
	} else if (intmax = 1) {
		$("#sofadown").attr("disabled", true);
		$("#sofacount").val(0);
	}

});

$("#mattup").click(function() {
	var intmax = parseInt($("#mattcount").val());

	if (intmax < 14) {
		$("#mattdown").attr("disabled", false);
		intmax = intmax + 1;
		$("#mattcount").val(intmax);
	} else if (intmax = 14) {
		$("#mattup").attr("disabled", true);
		$("#mattcount").val(intmax);
		$("#mattDrop").val("게스트 " + intmax + "명");
	}
});

$("#mattdown").click(function() {
	var intmax = parseInt($("#mattcount").val());

	if (intmax > 1) {
		intmax = intmax - 1;
		$("#mattcount").val(intmax);
		$("#mattup").attr("disabled", false);
	} else if (intmax = 1) {
		$("#mattdown").attr("disabled", true);
		$("#mattcount").val(0);
	}

});


</script>

		
		</div>
	</div>



</body>
</html>