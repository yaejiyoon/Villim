<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Insert title here</title>
<style data-aphrodite="data-aphrodite">
._1u7z0lk {
	color: #FF5A5F !important;
	padding-left: 16px !important;
	padding-right: 16px !important;
	font-size: 24px !important;
	border-right: 1px solid #dce0e0 !important;
	float: left !important;
}

._1u7z0lk:hover {
	background-color: #F2F2F2 !important;
}

._1fyyfke9 {
	text-decoration: none !important;
	color: #484848 !important;
	border: none !important;
	width: 100% !important;
	height: 100% !important;
	padding: 0px !important;
	background: transparent !important;
	text-align: inherit !important;
	cursor: pointer !important;
	display: block !important;
}

._1mbllh6j {
	border-bottom: 0px !important;
	padding-top: 32px !important;
	padding-bottom: 24px !important;
}

._492uxj4 {
	font-weight: 800 !important;
	margin: 0px !important;
	word-wrap: break-word !important;
	font-size: 24px !important;
	line-height: 30px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	color: #484848 !important;
	padding-top: 2px !important;
	padding-bottom: 2px !important;
}

._1thhkotp {
	font-weight: 600 !important;
	margin: 0px !important;
	word-wrap: break-word !important;
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	padding-top: undefined !important;
	padding-bottom: undefined !important;
	color: #767676 !important;
}

@media print {
	._1thhkotp {
		color: #484848 !important;
	}
}

._az0uecb {
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	color: #484848 !important;
	padding-top: undefined !important;
	padding-bottom: undefined !important;
	position: relative !important;
	background: #ffffff !important;
	border: 1px solid #DBDBDB !important;
	border-radius: 2px !important;
	margin-bottom: 8px !important;
	display: block !important;
	width: 100% !important;
}

._y9ev9r {
	overflow: hidden !important;
}

._10p0m0gl {
	-webkit-appearance: none !important;
	-moz-appearance: none !important;
	appearance: none !important;
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	color: #484848 !important;
	padding-top: 11px !important;
	padding-bottom: 11px !important;
	font-weight: normal !important;
	background-color: transparent !important;
	border: none !important;
	border-radius: 0px !important;
	padding-left: 11px !important;
	padding-right: 40px !important;
	height: 44px !important;
	display: block !important;
	width: 100% !important;
}

._10p0m0gl::-ms-expand {
	display: none !important;
}

._10p0m0gl:focus {
	outline: none !important;
}

._1pzmvmb {
	position: absolute !important;
	top: 16px !important;
	right: 16px !important;
	line-height: 0 !important;
	pointer-events: none !important;
}

._9hxttoo {
	display: block !important;
	width: 100% !important;
}

._rin72m {
	background: transparent !important;
	border: 0px !important;
	cursor: pointer !important;
	display: block !important;
	padding: 0px !important;
}

._1n57hdr7 {
	font-weight: 600 !important;
	margin: 0px !important;
	word-wrap: break-word !important;
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	color: #484848 !important;
	padding-top: undefined !important;
	padding-bottom: undefined !important;
}

._195jdbyw {
	-webkit-appearance: none !important;
	-moz-appearance: none !important;
	appearance: none !important;
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	padding-top: 11px !important;
	padding-bottom: 11px !important;
	font-weight: normal !important;
	border: none !important;
	border-radius: 0px !important;
	padding-left: 11px !important;
	padding-right: 40px !important;
	height: 44px !important;
	display: block !important;
	width: 100% !important;
	color: #DBDBDB !important;
	background-color: #F2F2F2 !important;
}

._195jdbyw::-ms-expand {
	display: none !important;
}

._195jdbyw:focus {
	outline: none !important;
}

._1n0q8zmp {
	font-weight: 600 !important;
	margin: 0px !important;
	word-wrap: break-word !important;
	font-size: 14px !important;
	line-height: 18px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	padding-top: undefined !important;
	padding-bottom: undefined !important;
	color: #767676 !important;
}

@media print {
	._1n0q8zmp {
		color: #484848 !important;
	}
}

._107ja4p {
	float: right !important;
}

@media ( min-width : 744px) {
	._1dcqn1vg {
		margin-top: 0px !important;
		margin-bottom: 0px !important;
		margin-left: 0px !important;
		margin-right: 0px !important;
	}
}

._5rte3y6 {
	cursor: pointer !important;
	display: inline-block !important;
	margin: 0px !important;
	position: relative !important;
	text-align: center !important;
	text-decoration: none !important;
	-webkit-transition-property: background, border-color, color !important;
	-moz-transition-property: background, border-color, color !important;
	transition-property: background, border-color, color !important;
	-webkit-transition-duration: 0.2s !important;
	transition-duration: 0.2s !important;
	-webkit-transition-timing-function: ease-out !important;
	transition-timing-function: ease-out !important;
	width: auto !important;
	border-radius: 4px !important;
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	padding-top: 12px !important;
	padding-bottom: 12px !important;
	font-weight: 800 !important;
	border-width: 2px !important;
	border-style: solid !important;
	padding-left: 24px !important;
	padding-right: 24px !important;
	min-width: 77.66563145999496px !important;
	box-shadow: none !important;
	background: #008489 !important;
	border-color: transparent !important;
	color: #ffffff !important;
}

._5rte3y6:hover {
	background: #008489 !important;
	border-color: transparent !important;
	color: #ffffff !important;
}

._5rte3y6:active {
	background: #006a70 !important;
	border-color: transparent !important;
	color: #ffffff !important;
}

._5rte3y6:disabled {
	background: rgba(0, 132, 137, 0.3) !important;
	border-color: transparent !important;
	color: #ffffff !important;
	cursor: default !important;
}

._5rte3y6::-moz-focus-inner {
	border: 0px !important;
	padding: 0px !important;
	margin: 0px !important;
}

._5rte3y6:focus::-moz-focus-inner {
	border: 1px dotted #ffffff !important;
}

._cgr7tc7 {
	font-size: 16px !important;
	line-height: 22px !important;
	letter-spacing: normal !important;
	font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
		Helvetica Neue, sans-serif !important;
	text-transform: undefined !important;
	color: inherit !important;
	padding-top: undefined !important;
	padding-bottom: undefined !important;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<div id="lys-redesign-div">
		<div data-hypernova-key="list_your_spacebundlejs"
			data-hypernova-id="78a4e44d-c6d0-4fc1-bf49-a6e3d7abc784">
			<div data-reactroot="">
				<div>
					<div class="list-your-space__progress">
						<div class="list-your-space__header">
							<div class="airbnb-header new">
								<div class="regular-header clearfix">
									<div class="comp pull-left">
										<button type="button" class="_1fyyfke9" aria-busy="false">
											<div class="_1u7z0lk">
												<i class="hide-sm icon icon-airbnb"></i>
											</div>
										</button>
									</div>
									<div
										class="comp comp__step-bar-wrapper no-hover pull-left hide-sm">
										<span class="hdr-btn"><span
											class="hide-sm h5 text-normal" tabindex="-1"><span>1단계:</span>
										</span><span class="h5 text-normal">기본 사항을 입력하세요</span></span>
									</div>
								</div>
							</div>
							<div>
								<div class="progress-bar__container">
									<div class="progress-section progress-bar__placeholder"></div>
									<div></div>
								</div>
							</div>
						</div>
						<div class="left-backdrop"></div>
						<div
							class="right-backdrop hide-sm bg-white right-backdrop--with-bg"></div>
						<div class="list-your-space__content">
							<div class="centered-content clearfix">
								<div
									class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix col-md-6 landing__left-col">
									<div
										class="main-panel main-panel-padding main-panel-progress  main-panel-inner-half space-sm-8">
										<div class="_1mbllh6j">
											<div class="_492uxj4">등록하실 숙소 종류는 무엇인가요?</div>
										</div>
										<div>
											<div style="margin-top: 32px; margin-bottom: 32px">
												<div style="margin-bottom: 8px">
													<div class="_1thhkotp">
														<span>우선 범위를 좁혀볼까요?</span>
													</div>
												</div>
												<div class="select-block select-jumbo">
													<div class="_9hxttoo">
														<div style="margin-bottom: 8px">
															<label class="_rin72m" for="property-type-group">
															<div class="_1n57hdr7"></div>
															</label>
														</div>
														<div class="_az0uecb">
														<form action="thirdMove.host" method="post" id="housetypes">
															<div class="_y9ev9r">
																<select id="property-type-group"
																	name="home_type" class="_10p0m0gl"><option
																		selected="selected" value="0" disabled="disabled">하나를 선택해주세요.</option>
																	<option value="apartments">아파트</option>
																	<option value="houses">주택</option>
																	<option value="secondary_units">별채</option>
																	<option value="unique_homes">독특한 숙소</option>
																	<option value="bnb">B&amp;B</option>
																	<option value="boutique_hotels_and_more">부티크
																		호텔</option></select>
															</div>
														</form>	
															<span class="_1pzmvmb"><svg viewBox="0 0 18 18"
																	role="presentation" aria-hidden="true"
																	focusable="false"
																	style="height: 16px; width: 16px; display: block; fill: #484848">
																<path
																		d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																		fill-rule="evenodd"></path></svg></span>
														</div>
													</div>
												</div>
											</div>
											<div style="margin-top: 32px; margin-bottom: 32px">
												<div class="_1thhkotp">
													<span>건물 유형을 선택하세요</span>
												</div>
												<div style="margin-top: 8px; margin-bottom: 16px">
													<div class="select-block select-jumbo">
														<div class="_9hxttoo">
															<div style="margin-bottom: 8px">
																<label class="_rin72m" for="property-type-category"><div
																		class="_1n57hdr7"></div></label>
															</div>
															<div class="_az0uecb">
																<div class="_y9ev9r">
																	<select id="property-type-category"
																		name="property-type-category" class="_195jdbyw"
																		disabled="disabled"><option selected="selected" value="0"
																			disabled="disabled">건물 유형 선택</option>
																		<option value="houses">주택</option>
																	</select>
																</div>
																<span class="_1pzmvmb"><svg id="pickme"
																		viewBox="0 0 18 18" role="presentation"
																		aria-hidden="true" focusable="false"
																		style="height: 16px; width: 16px; display: block; fill: #DBDBDB">
																	<path
																			d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																			fill-rule="evenodd"></path></svg></span>
															</div>
														</div>
													</div>
												</div>
												<div id="property-type-definition" class="_1n0q8zmp" ></div>
											</div>
											<div style="margin-top: 32px; margin-bottom: 32px; visibility:hidden;" id="sleeptype"  >
													<div class="_1thhkotp">
														<span>게스트가 묵게 될 숙소 유형을 골라주세요.</span>
													</div>
												<div style="margin-bottom: 8px;  margin-bottom: 16px">
													<div class="select-block select-jumbo">
														<div class="_9hxttoo">
															<div style="margin-bottom: 8px;">
																<label class="_rin72m" for="room-type"><div
																		class="_1n57hdr7"></div></label>
															</div>
															<div class="_az0uecb">
																<div class="_y9ev9r">
																	<select id="room-type" name="room_type"  hidden="true" 
																		class="_10p0m0gl" ><option value="entire_home">집
																			전체</option>
																		<option value="private_room">개인실</option>
																		<option value="shared_room">다인실</option></select>
																</div>
																<span class="_1pzmvmb"><svg id="pickme"
																		viewBox="0 0 18 18" role="presentation"
																		aria-hidden="true" focusable="false"
																		style="height: 16px; width: 16px; display: block; fill: #484848">
																	<path
																			d="m16.29 4.3a1 1 0 1 1 1.41 1.42l-8 8a1 1 0 0 1 -1.41 0l-8-8a1 1 0 1 1 1.41-1.42l7.29 7.29z"
																			fill-rule="evenodd"></path></svg></span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									
									<div class="main-panel__actions-wrapper">
										<div class="centered-content clearfix">
											<div class="bg-white main-panel-outer-half clearfix shadowed">
												<div
													class="no-margin-padding__sm main-panel-padding main-panel-progress main-panel-inner-half space-sm-8">
													<div class="divider hide-sm"></div>
													<div class="row no-margin-padding__sm">
														<div
															class="main-panel__actions col-sm-12 no-margin-padding__sm">
															<div class="_1dcqn1vg"
																style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
																<a href="#" class="_5rte3y6"
																	aria-busy="false"><span class="_cgr7tc7"><span>뒤로</span></span></a>
																<div class="_107ja4p">
																	<button type="button" id="nextpg" disabled="disabled"
																		class="_5rte3y6" aria-busy="false"
																		data-veloute="lys-next-button">
																		<span class="_cgr7tc7"><span>다음</span></span>
																	</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="waypoint-container">
										<span style="font-size: 0"></span>
									</div>
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
		
	
	<script type="text/javascript">
	
/*     $("#property-type-group").change(function() {
		var gaybar = $("#property-type-group").val();
		if(gaybar != "0"){
			$("#property-type-category").attr("class","_10p0m0gl");
			$("#property-type-category").attr("disabled",false);
			$("#pickme").css("fill","#484848");
		}
		if(gaybar == "apartments"){
			$.ajax({
				url:"listrecall.do",
				type:"post",
				data:{val:gaybar},
				dataType : "json",
				success:function(response){
					console.log("AJAX Request 성공 ");
					console.log(response);
					//$("#response").text(response);
				},
				error:function(request,status,error){
					console.log(request.status+":"+status.responseText+":"+ error);
				},
				complete:function(){
					console.log("성공이건 실패건 어찌되었든 ajax 종료");
				}
			});		
		}else if(gaybar == "houses"){			
		}else if(gaybar == "secondary_units"){
		}else if(gaybar == "unique_homes"){
		}else if(gaybar == "bnb"){
		}else if(gaybar == "boutique_hotels_and_more"){
		}
	}); */
	  
	$("#property-type-group").change(function(){
		$("#property-type-category").attr("class","_10p0m0gl");
		$("#property-type-category").attr("disabled",false);
		$("#pickme").css("fill","#484848");
		
		 state_id = $("#property-type-group").val();
		
		 $.ajax({
				url:" listcall.do",
				type:"get",
				data:{val:state_id},
				dataType : "json",
				success:function(response){
					console.log("AJAX Request 성공 ");
					console.log(response);
					//alert(response[0].vale);
					var housetype = response[0].vale;
					if(housetype == "apartments"){
						$("#property-type-category").html("<option selected=\"\" value=\"0\" disabled=\"\">건물 유형 선택</option>" 
						 + "<option value=\"apart\">"+"아파트"+"</option>"
						 + "<option value=\"highapart\">"+"고층아파트"+"</option>"
						 + "<option value=\"goodapart\">"+"고급아파트"+"</option>")				 
					}else if(housetype == "houses"){
						$("#property-type-category").html("<option selected=\"\" value=\"0\" disabled=\"\">건물 유형 선택</option>" 
								 + "<option value=\"house\">"+"하우스"+"</option>"   
								 + "<option value=\"detached_house\">"+"단독주택"+"</option>"
								 + "<option value=\"apartment_house\">"+"공동주택"+"</option>" 
								 + "<option value=\"residence\">"+"저택"+"</option>" );
					}else if(housetype == "secondary_units"){
						$("#property-type-category").html("<option selected=\"\" value=\"0\" disabled=\"\">건물 유형 선택</option>" 
								 + "<option value=\"separate\">"+"별채"+"</option>" 
								 + "<option value=\"farm\">"+"농촌"+"</option>" 
								 );
					}else if(housetype == "unique_homes"){
						$("#property-type-category").html("<option selected=\"\" value=\"0\" disabled=\"\">건물 유형 선택</option>" 
								+ "<option value=\"igloo\">"+"이글루"+"</option>"
								+ "<option value=\"log\">"+"통나무집"+"</option>"
								+ "<option value=\"tent\">"+"텐트"+"</option>"
								+ "<option value=\"campingcar\">"+"캠핑카"+"</option>"
								 );
					}else if(housetype == "bnb"){
						$("#property-type-category").html("<option selected=\"\" value=\"0\" disabled=\"\">건물 유형 선택</option>" 
								+ "<option value=\"bnb\">"+"비앤비"+"</option>"
								+ "<option value=\"crazyacade\">"+"크레이지아케이드"+"</option>"
								+ "<option value=\"fortress2\">"+"포트리스2"+"</option>"
								 );
					}else if(housetype == "boutique_hotels_and_more"){
						$("#property-type-category").html("<option selected=\"\" value=\"0\" disabled=\"\">건물 유형 선택</option>" 
								+ "<option value=\"hotel\">"+"호텔"+"</option>"
								+ "<option value=\"boutique\">"+"부티크"+"</option>"
								+ "<option value=\"motel\">"+"모텔"+"</option>"
								+ "<option value=\"resote\">"+"리조트"+"</option>" 
								);
					}
					
						 	
				},
				error:function(request,status,error){
					console.log(request.status+":"+status.responseText+":"+ error);
				},
				complete:function(){
					console.log("성공이건 실패건 어찌되었든 ajax 종료");
				}
		});		
		 
	});
	
	
	$("#property-type-category").change(function() {
		$("#sleeptype").css("visibility","visible");
		$("#nextpg").attr("disabled",false);
	});
	
	$("#nextpg").click(function() {
		//$(location).attr("href","third.host");
		$( "#housetypes").submit();
	});
	  
</script>
</body>
</html>