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

<title>숙소 규칙</title>
<link rel="shortcut icon" href="<c:url value='/resources/img/htitle.png'/>" />

<style>
body{
min-width:1280px;
}
/* 라디오버튼 시작 */
* {
	font-family: 'Roboto', sans-serif;
}

.option-input {
	-webkit-appearance: none;
	-moz-appearance: none;
	-ms-appearance: none;
	-o-appearance: none;
	appearance: none;
	position: relative;
	right: 0;
	bottom: 0;
	height: 25px;
	width: 25px;
	transition: all 0.15s ease-out 0s;
	background: #cbd1d8;
	border: none;
	color: #fff;
	cursor: pointer;
	display: inline-block;
	margin-right: 0.5rem;
	outline: none;
	position: relative;
	z-index: 1000;
}

.option-input:hover {
	background: #9faab7;
}

.option-input:checked {
	background: #008489;
}

.option-input:checked::before {
	height: 25px;
	width: 25px;
	position: absolute;
	content: '✔';
	display: inline-block;
	font-size: 20px;
	text-align: center;
	line-height: 25px;
}

.option-input:checked::after {
	-webkit-animation: click-wave 0.65s;
	-moz-animation: click-wave 0.65s;
	animation: click-wave 0.65s;
	background: #40e0d0;
	content: '';
	display: block;
	position: relative;
	bottom: 5px;
	z-index: 100;
}

.option-input.radio {
	border-radius: 50%;
	margin-left: 18px;
	margin-right: 10px;
}

.option-input.radio::after {
	border-radius: 50%;
}
/* 라디오버튼 끝 */
div {
	box-sizing: border-box;
}

#wrapper {
	margin: 30px auto;
	margin-bottom: 100px;
	height: auto;
	width: 70%;
}

#wrapper-sub {
	width: 70%;
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

.back-link:hover {
	
}

.wrapper-sub-title {
	font-size: 20px;
	margin-top: 30px;
}

.wrapper-sub-title1 {
	font-size: 20px;
}

.line {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 40px;
	margin-bottom: 40px;
}

.line-c {
	border: 0.5px solid #E6E6E6;
	display: inline-block;
	width: 100%;
	margin-top: 20px;
	margin-bottom: 20px;
}

.sub {
	display: inline-block;
	float: left;
	width: 100%;
}

.sub-t {
	display: inline-block;
	float: left;
	width: 80%;
	height: 100%;
	font-size: 18px;
}

.sub-r {
	display: inline-block;
	float: left;
	width: 20%;
	text-align: right;
}

.sub1 {
	margin-top: 10px;
	margin-bottom: 10px;
}

label {
	font-size: 18px;
	font-weight: normal;
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
</style>

</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<form id="rulesDetails" action="hostReserveModifyRuleProc.do"
		method="post">
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
				<div class="wrapper-sub-title">
					<b>숙소 이용규칙</b>
				</div>
				<div>게스트는 예약하기 전에 회원님이 설정한 숙소 이요규칙에 동의해야 합니다.</div>
				<div class=line></div>
				<div
					style="width: 100%; text-align: right; margin-bottom: 10px; font-size: 18px;">
					<span>예</span>&nbsp;&nbsp;<span>아니오</span>
				</div>
				<div class="sub">
					<div class="sub-t">어린이(만 2~12세)에게 적합함</div>

					<div class=sub-r>
						<input style="margin-left: 0; margin-right: 5px;" type="radio"
							name=rules1 class="option-input radio" value="예" id="rules1-y">
						<input type="radio" name=rules1 class="option-input radio"
							value="아니오" id="rules1-n">
					</div>
				</div>

				<div class=line-c></div>

				<div class=sub>
					<div class=sub-t>유아(만 2세 미만)에게 적합함</div>
					<div class=sub-r>
						<input type="radio" name=rules2 class="option-input radio"
							value="예" id="rules2-y"><input type="radio" name=rules2
							class="option-input radio" value="아니오" id="rules2-n">
					</div>
				</div>

				<div class=line-c></div>

				<div class=sub>
					<div class=sub-t>반려동물 입실 가능</div>
					<div class=sub-r>
						<input type="radio" name=rules3 class="option-input radio"
							value="예" id="rules3-y"><input type="radio" name=rules3
							class="option-input radio" value="아니오" id="rules3-n">
					</div>
				</div>

				<div class=line-c></div>

				<div class=sub>
					<div class=sub-t>흡연 가능</div>
					<div class=sub-r>
						<input type="radio" name=rules4 class="option-input radio"
							value="예" id="rules4-y"><input type="radio" name=rules4
							class="option-input radio" value="아니오" id="rules4-n">
					</div>
				</div>

				<div class=line-c></div>

				<div class=sub>
					<div class=sub-t>파티나 이벤트 가능</div>
					<div class=sub-r>
						<input type="radio" name=rules5 class="option-input radio"
							value="예" id="rules5-y"><input type="radio" name=rules5
							class="option-input radio" value="아니오" id="rules5-n">
					</div>
				</div>

				<div class=line></div>

				<!-- home_details -->
				<div class=wrapper-sub-title1>게스트가 숙소에 대해 알아두어야 할 세부 사항</div>
				<div style="margin-top: 10px; margin-bottom: 10px;">게스트가 예약하기
					전에 숙소에 관해 미리 알아두어야 할 사항을 설정하세요.</div>
				<div class=sub1>
					<input type="checkbox" id="check2" class="option-input checkbox"
						name=check2 value="소음이 발생할 수 있음"> <label for="check2">소음이
						발생할 수 있음</label>
					<div class="collapse" id="collapseExample2">
						<div>
							<b>소음의 정도 및 발생할 수 있는 시간대에 관해 설명하세요 </b>
						</div>
						<input type="text" id=check2-text name=check2-text value=""
							placeholder="추가 설명을 입력하세요" class="form-control input-lg">
					</div>
				</div>

				<div class=sub1>
					<input type="checkbox" id="check3" class="option-input checkbox"
						name=check3 value="숙소에 반려동물 있음"> <label for="check3">숙소에
						반려동물 있음</label>
					<div class="collapse" id="collapseExample3">
						<div>
							<b>반려동물에 관해 설명하세요 </b>
						</div>
						<input type="text" id="check3-text" name=check3-text value=""
							placeholder="추가 설명을 입력하세요" class="form-control input-lg">
					</div>
				</div>

				<div class=sub1>
					<input type="checkbox" id="check4" class="option-input checkbox"
						name=check4 value="건물 내 주차 불가"> <label for="check4">건물
						내 주차 불가</label>
					<div class="collapse" id="collapseExample4">
						<div>
							<b>숙소 주변 주차 상황에 관해 설명하세요</b>
						</div>
						<input type="text" id=check4-text name=check4-text value=""
							placeholder="추가 설명을 입력하세요" class="form-control input-lg">
					</div>
				</div>

				<div class=sub1>
					<input type="checkbox" id="check5" class="option-input checkbox"
						name=check5 value="일부 공용 공간 있음"> <label for="check5">일부
						공용 공간 있음</label>
					<div class="collapse" id="collapseExample5">
						<div>
							<b>게스트가 공유할 공간에 관해 설명하세요</b>
						</div>
						<input type="text" id=check5-text name=check5-text value=""
							placeholder="추가 설명을 입력하세요" class="form-control input-lg">
					</div>
				</div>

				<div class=sub1>
					<input type="checkbox" id="check6" class="option-input checkbox"
						name=check6 value="편의시설 제한"> <label for="check6">편의시설
						제한</label>
					<div class="collapse" id="collapseExample6">
						<div>
							<b>불안정한 무선인터넷, 온수 제한 등 편의시설이나 서비스 제한에 대해 설명하세요</b></b>
						</div>
						<input type="text" id=check6-text name=check6-text value=""
							placeholder="추가 설명을 입력하세요" class="form-control input-lg">
					</div>
				</div>
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

		<input type="hidden" value="${hdto.home_seq }" name="home_seq">

	</form>
	<script>
		$(document).ready(function() {
			// home_rules 체크 설정
			var r_arr = [];
			var rule = "${hdto.home_rules}";
			var rules = new Array();
			rules = rule.split(",");

			console.log("rules::" + rules);

			$("#rules1-n").prop("checked", true);
			$("#rules2-n").prop("checked", true);
			$("#rules3-n").prop("checked", true);
			$("#rules4-n").prop("checked", true);
			$("#rules5-n").prop("checked", true);

			for (var i = 0; i < rules.length; i++) {
				if (rules[i] == "어린이(만 2~12세)에게 적합함") {
					$("#rules1-y").prop("checked", true);
				} else if (rules[i] == "유아(만 2세 미만)에게 적합함") {
					$("#rules2-y").prop("checked", true);
				} else if (rules[i] == "반려동물 입실 가능") {
					$("#rules3-y").prop("checked", true);
				} else if (rules[i] == "흡연 가능") {
					$("#rules4-y").prop("checked", true);
				} else if (rules[i] == "파티나 이벤트 가능") {
					$("#rules5-y").prop("checked", true);
				}
			}

			// home_details 체크하기
			var detail = "${hdto.home_details}";
			var str;
			var d_arr = [];
			var details = new Array();
			details = detail.split(",");

			for (var i = 0; i < details.length; i++) {
				if (details[i].includes("소음이")) {
					$("#check2").prop("checked", true)
				} else if (details[i].includes("숙소에")) {
					$("#check3").prop("checked", true)
				} else if (details[i].includes("주차 불가")) {
					$("#check4").prop("checked", true)
				} else if (details[i].includes("공용 공간")) {
					$("#check5").prop("checked", true)
				} else if (details[i].includes("편의시설")) {
					$("#check6").prop("checked", true)
				}
			}

			// home_details 텍스트창 show/hide
			$('#check2').change(function() {
				if ($('#check2').is(":checked")) {
					$('#collapseExample2').show();
				} else {
					$('#collapseExample2').hide();
				}
			})
			$('#check3').change(function() {
				if ($('#check3').is(":checked")) {
					$('#collapseExample3').show();
				} else {
					$('#collapseExample3').hide();
				}
			})
			$('#check4').change(function() {
				if ($('#check4').is(":checked")) {
					$('#collapseExample4').show();
				} else {
					$('#collapseExample4').hide();
				}
			})
			$('#check5').change(function() {
				if ($('#check5').is(":checked")) {
					$('#collapseExample5').show();
				} else {
					$('#collapseExample5').hide();
				}
			})
			$('#check6').change(function() {
				if ($('#check6').is(":checked")) {
					$('#collapseExample6').show();
				} else {
					$('#collapseExample6').hide();
				}
			})

			if ($("#check2").is(":checked")) {
				$('#collapseExample2').addClass("collapse in");
				$("#check2-text").val('${tmp1}');
			}
			if ($("#check3").is(":checked")) {
				$('#collapseExample3').addClass("collapse in");
				$("#check3-text").val('${tmp2}');
			}
			if ($("#check4").is(":checked")) {
				$('#collapseExample4').addClass("collapse in");
				$("#check4-text").val('${tmp3}');
			}
			if ($("#check5").is(":checked")) {
				$('#collapseExample5').addClass("collapse in");
				$("#check5-text").val('${tmp4}');
			}
			if ($("#check6").is(":checked")) {
				$('#collapseExample6').addClass("collapse in");
				$("#check6-text").val('${tmp5}');
			}


		})
	</script>
</body>
</html>