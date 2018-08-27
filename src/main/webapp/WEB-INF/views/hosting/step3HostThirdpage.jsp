<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="resources/hosting.css">
<title>Insert title here</title>
<style type="text/css">


.increment-btn__input::-webkit-inner-spin-button, .increment-btn__input::-webkit-outer-spin-button
	{
	-webkit-appearance: none;
	margin: 0
}

.text-muted {
	color: #767676;
	text-decoration: underline
}

.increment-btn__border-container-label {
	padding: 4px 18px;
	height: 38px
}

.increment-btn__border-container-label span {
	overflow: hidden;
	display: inline;
	max-width: 162px
}

.increment-btn__border-container-label {
	padding: 2px 12px;
	height: 32px
}

.increment-btn__border-container-label {
	border-right: 1px solid #dce0e0
}

.increment-btn__incrementer, .increment-btn__decrementer {
	background-position: center;
	border-left: 0;
	padding-left: 0
}

.increment-btn__incrementer:active, .increment-btn__decrementer:active {
	background-position: center;
	-moz-background-size: 18px;
	background-size: 18px
}

.increment-compact-btn__incrementer, .increment-compact-btn__decrementer
	{
	background-position: center;
	border-left: 0;
	padding-left: 0
}

.increment-btn__incrementer.btn, .increment-btn__decrementer.btn {
	height: 48px;
	width: 58px
}

.increment-btn__incrementer.btn:after, .increment-btn__decrementer.btn:after
	{
	-moz-background-size: 18px;
	background-size: 18px
}

.increment-btn__decrementer.btn:after {
	background-repeat: no-repeat;
	background-image:
		url(https://a0.muscache.com/airbnb/static/list_your_space/stepper-minus-6ccb611f246d670bf5044678885b520a.png);
	width: 18px;
	height: 2px;
	content: "";
	top: 23px;
	left: 18px;
	bottom: 0;
	right: 0;
	position: absolute
}

@media ( min--moz-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 2.6 /
		2) , ( -webkit-min-device-pixel-ratio : 1.3) , (
		min-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 13/10) ,
		( min-resolution : 1.3dppx) {
	.increment-btn__decrementer.btn:after {
		background-image:
			url(https://a0.muscache.com/airbnb/static/list_your_space/stepper-minus@2x-359152cf18adfd53aecfcc7669ac2180.png);
		-moz-background-size: 18px 2px;
		background-size: 18px 2px
	}
}

.increment-compact-btn__decrementer.btn:after {
	background-repeat: no-repeat;
	background-image:
		url(https://a0.muscache.com/airbnb/static/list_your_space/compact-stepper-minus-f47857b6af9be276c41bef6159059525.png);
	width: 14px;
	height: 2px;
	content: "";
	top: 20px;
	left: 12px;
	bottom: 0;
	right: 0;
	position: absolute
}

@media ( min--moz-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 2.6 /
		2) , ( -webkit-min-device-pixel-ratio : 1.3) , (
		min-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 13/10) ,
		( min-resolution : 1.3dppx) {
	.increment-compact-btn__decrementer.btn:after {
		background-image:
			url(https://a0.muscache.com/airbnb/static/list_your_space/compact-stepper-minus@2x-4944d63c2640340c8a868f1c96d25683.png);
		-moz-background-size: 14px 2px;
		background-size: 14px 2px
	}
}

.increment-btn__incrementer.btn:after {
	background-repeat: no-repeat;
	background-image:
		url(https://a0.muscache.com/airbnb/static/list_your_space/stepper-plus-f6af65fcc940f6cd322f069f820696c1.png);
	width: 18px;
	height: 18px;
	content: "";
	top: 14px;
	left: 18px;
	bottom: 0;
	right: 0;
	position: absolute
}

@media ( min--moz-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 2.6 /
		2) , ( -webkit-min-device-pixel-ratio : 1.3) , (
		min-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 13/10) ,
		( min-resolution : 1.3dppx) {
	.increment-btn__incrementer.btn:after {
		background-image:
			url(https://a0.muscache.com/airbnb/static/list_your_space/stepper-plus@2x-4dbe7f0d51338a7facbbcb5ec56b75b0.png);
		-moz-background-size: 18px 18px;
		background-size: 18px 18px
	}
}

.increment-btn__incrementer:active, .increment-btn__decrementer:active {
	background-position: center;
	-moz-background-size: 18px;
	background-size: 18px
}

.increment-compact-btn__incrementer, .increment-compact-btn__decrementer
	{
	background-position: center;
	border-left: 0;
	padding-left: 0
}

.increment-compact-btn__incrementer:active,
	.increment-compact-btn__decrementer:active {
	background-position: center;
	-moz-background-size: 14px;
	background-size: 14px
}

.increment-btn__border-container-decrementer {
	border-right: 1px solid #dce0e0;
	height: 38px;
	width: 58px;
	margin: 5px 0
}

.increment-btn__incrementer.btn:after {
	background-repeat: no-repeat;
	background-image:
		url(https://a0.muscache.com/airbnb/static/list_your_space/stepper-plus-f6af65fcc940f6cd322f069f820696c1.png);
	width: 18px;
	height: 18px;
	content: "";
	top: 14px;
	left: 18px;
	bottom: 0;
	right: 0;
	position: absolute
}

@media ( min--moz-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 2.6 /
		2) , ( -webkit-min-device-pixel-ratio : 1.3) , (
		min-device-pixel-ratio : 1.3) , ( -o-min-device-pixel-ratio : 13/10) ,
		( min-resolution : 1.3dppx) {
	.increment-btn__incrementer.btn:after {
		background-image:
			url(https://a0.muscache.com/airbnb/static/list_your_space/stepper-plus@2x-4dbe7f0d51338a7facbbcb5ec56b75b0.png);
		-moz-background-size: 18px 18px;
		background-size: 18px 18px
	}
}

.increment-compact-btn__incrementer.btn:after {
	background-repeat: no-repeat;
	background-image:
		url(https://a0.muscache.com/airbnb/static/list_your_space/compact-stepper-plus-5c74d1b5891bda8aa2a026bd7faa94f3.png);
	width: 14px;
	height: 14px;
	content: "";
	top: 14px;
	left: 12px;
	bottom: 0;
	right: 0;
	position: absolute
}

.btn-jumbo {
	border: 0;
	text-align: left
}

.input-suffix.btn-jumbo {
	padding: 20px 24px
}
</style>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="0d09f05f-633c-43b7-b450-fd45d7a5267f">
		<div dir="ltr" data-reactroot="">
			<div>
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
											class="hide-sm h5 text-normal" tabindex="-1"><span>3단계:</span>
										</span><span class="h5 text-normal">게스트를 맞이할 준비를 하세요</span></span>
									</div>
									<div
										class="lys-navbar__save-and-exit comp pull-right h5 text-normal bg-white">
										<span><span class="hide-md hide-lg"><a href="#"
												class="lys-navbar__save-and-exit-link hdr-btn"
												data-prevent-default="true"><span>닫기</span></a></span><span
											class="hide-sm"><a href="#"
												class="lys-navbar__save-and-exit-link hdr-btn"
												data-prevent-default="true"><span>저장 후 나가기</span></a></span></span>
									</div>
								</div>
							</div>
						</div>	
						<div class="left-backdrop"></div>
						<div
							class="right-backdrop hide-sm bg-white right-backdrop--with-bg"></div>
						<div class="list-your-space__content">
							<div class="centered-content clearfix">
								<div>
									<div
										class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix no-margin-padding__sm  col-md-4 col-md-offset-2 "
										tabindex="-1">
										<div
											class="main-panel main-panel-padding main-panel-progress main-panel-inner-half space-sm-3">
											<div class="_1mbllh6j">
												<div class="_492uxj4">
													<span>게스트가 얼마 동안 숙박할 수 있나요?</span>
												</div>
											</div>
											<form action="gostep3fore.host" id="homestay" method="post">
											<div style="margin-top: 12px;">
												<div class="space-top-6 screen-reader-only">
													<label class="_rin72m" for="min_nights_input_value">최소
														숙박일</label>
												</div>
												<div>
													<div class="increment-btn no-padding">
														<div class="increment-btn btn-group no-padding">
															<div
																class="text-gray btn increment-btn__label increment-jumbo increment-btn__label--with-increment-btns">
																<div
																	class="increment-btn__border-container-label text-truncated">
																	<input type="number" class="increment-btn__input" name="home_min_stay"
																		id="min_nights_input_value" maxlength="4" value="0"><span
																		class="text-muted"><span>박(최소)</span></span>
																</div>
															</div>
															<button type="button"
																class="btn btn-jumbo increment-btn__decrementer"
																aria-label="minus 1" disabled="">
																<div class="increment-btn__border-container-decrementer"></div>
															</button>
															<button type="button"
																class="btn btn-jumbo increment-btn__incrementer increment-btn__incrementer"
																aria-label="plus 1"></button>
														</div>
													</div>
												</div>
											</div>
											<div style="margin-top: 12px;">
												<div class="space-top-6 screen-reader-only">
													<label class="_rin72m" for="max_nights_input_value">최대
														숙박 가능 일수</label>
												</div>
												<div>
													<div class="increment-btn no-padding">
														<div class="increment-btn btn-group no-padding">
															<div
																class="text-gray btn increment-btn__label increment-jumbo increment-btn__label--with-increment-btns">
																<div
																	class="increment-btn__border-container-label text-truncated">
																	<input type="number" class="increment-btn__input" name="home_max_stay"
																		id="max_nights_input_value" maxlength="4" value="0"><span
																		class="text-muted"><span>박(최대)</span></span>
																</div>
															</div>
															<button type="button"
																class="btn btn-jumbo increment-btn__decrementer"
																aria-label="minus 1" disabled="">
																<div class="increment-btn__border-container-decrementer"></div>
															</button>
															<button type="button"
																class="btn btn-jumbo increment-btn__incrementer increment-btn__incrementer"
																aria-label="plus 1"></button>
														</div>
													</div>
												</div>
											</div>
											</form>
											<div style="margin-top: 8px;">
												<div class="_1thhkotp">
													<div>
														<div class="_2h22gn">
															<div class="_tzjpbas">
																<div style="margin-top: 64px;">
																	<div class="_1thhkotp">
																		<span class="text-kazan"><span>팁:</span></span> <span>숙박
																			기간이 짧으면 예약을 더 많이 받을 수 있지만, 그만큼 예약을 자주 받아야 합니다.</span>
																	</div>
																</div>
															</div>
														</div>
														<div class="show-sm help-panel__floating-container">
															<button
																class="help-panel--collapsed help-panel__bulb-img-bubble"
																aria-label="더 알아보기">
																<div class="help-panel__bulb-img img-center"></div>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="main-panel__actions-wrapper">
											<div class="centered-content clearfix">
												<div
													class="bg-white main-panel-outer-half clearfix no-margin-padding__sm">
													<div
														class="no-margin-padding__sm main-panel-padding main-panel-progress main-panel-inner-half space-sm-3">
														<div class="divider hide-sm"></div>
														<div class="row no-margin-padding__sm">
															<div
																class="main-panel__actions col-sm-12 no-margin-padding__sm">
																<div class="_1dcqn1vg" style="margin: 16px;">
																	<a href="/become-a-host/27770089/availability-settings"
																		class="_5rte3y6" aria-busy="false"><span
																		class="_cgr7tc7"><span>뒤로</span></span></a>
																	<div class="_107ja4p">
																		<button type="button" class="_5rte3y6" aria-busy="false" id="nextpg"
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
											<span style="font-size: 0px;"></span>
										</div>
									</div>
									<div
										class="help-panel-container availability-settings__help-panel-container">
										<div
											class="availability-settings__help-panel text-gray text-jumbo-normal">
											<div class="no-wrap">
												<div
													class="availability-settings__trip-profile-width--no-min"></div>
												<div
													class="availability-settings__trip-min-nights availability-settings__trip-min-nights--no-min">
													<span>1박</span>
												</div>
												<div class="availability-settings__trip-max-nights">
													<span>제한 없음</span>
												</div>
												<div
													class="availability-settings__trip-image availability-settings__trip-image--neither"
													aria-label="최소 숙박일수는 1박입니다" role="img"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#min_nights_input_value").keypress(function() {
			var minsleep = $("#min_nights_input_value").val();
			if(minsleep>365){
				alert("limet");
			}
		});
		$("#max_nights_input_value").keypress(function() {
		   var maxsleep = $("#max_nights_input_value").val();
			
		});
		
 		$("#nextpg").click(function() {
			//$(location).attr("href","step2third.host");
			$("#homestay").submit();
		});
		
	</script>
</body>
</html>