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

._2h22gn {
	margin-left: -8px !important;
	margin-right: -8px !important;
}

._2h22gn:before {
	content: " " !important;
	display: table !important;
}

._2h22gn:after {
	content: " " !important;
	display: table !important;
	clear: both !important;
}

._1f6bwyr7 {
	padding-left: 8px !important;
	padding-right: 8px !important;
	min-height: 1px !important;
	position: relative !important;
	width: 66.66666666666666% !important;
	float: left !important;
}

@media ( max-width : 743px) {
	._1ik5bx6 {
		font-size: 14px !important;
		line-height: 18px !important;
		letter-spacing: normal !important;
		font-family: Circular, -apple-system, BlinkMacSystemFont, Roboto,
			Helvetica Neue, sans-serif !important;
		text-transform: undefined !important;
		color: #484848 !important;
		padding-top: undefined !important;
		padding-bottom: undefined !important;
	}
}

._mke2gl1 {
	display: table !important;
	margin-right: 12px !important;
}

._1fb7ddvw {
	display: table !important;
	width: 120px !important;
}

._7eamzqx {
	display: table-cell !important;
	vertical-align: middle !important;
	text-align: left !important;
}

._zac1rbz {
	display: table-cell !important;
	vertical-align: middle !important;
	text-align: center !important;
}

._1a72ixey {
	display: table-cell !important;
	vertical-align: middle !important;
	text-align: right !important;
}

._42uiotg {
	border-bottom: 0px !important;
	padding-top: 0px !important;
	padding-bottom: 0px !important;
}

._2930ex {
	display: table !important;
	width: 100% !important;
}

._10ejfg4u {
	display: table-cell !important;
	width: 100% !important;
	vertical-align: middle !important;
}

._ni9axhe {
	display: table-cell !important;
	vertical-align: middle !important;
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

._qz4lhy5 {
	display: inline-block !important;
	cursor: pointer !important;
	border-radius: 50% !important;
	text-align: center !important;
	line-height: 1 !important;
	position: relative !important;
	-ms-touch-action: manipulation !important;
	touch-action: manipulation !important;
	border-style: solid !important;
	border-color: #008489 !important;
	background: transparent !important;
	width: 32px !important;
	height: 32px !important;
	border-width: 1px !important;
	box-shadow: none !important;
}

._qz4lhy5::-moz-focus-inner {
	border: 0px !important;
	padding: 0px !important;
	margin: 0px !important;
}

._qz4lhy5:focus::-moz-focus-inner {
	border: 1px dotted #000000 !important;
}

._qz4lhy5:focus {
	outline: none !important;
	box-shadow: 0 0 2px 2px #008489 !important;
}

._qz4lhy5:active {
	border-color: #006a70 !important;
	background: transparent !important;
}

._qz4lhy5:hover {
	border-color: #008489 !important;
	background: transparent !important;
}

._qz4lhy5:disabled {
	cursor: default !important;
	border-color: rgba(0, 132, 137, 0.3) !important;
	background: transparent !important;
}

._1rwjd1n1 {
	display: inline-block !important;
	position: absolute !important;
	top: 50% !important;
	left: 50% !important;
	-webkit-transform: translate(-50%, -50%) !important;
	-ms-transform: translate(-50%, -50%) !important;
	transform: translate(-50%, -50%) !important;
	color: #008489 !important;
	font-size: 16px !important;
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

._1m8bb6v {
	position: absolute !important;
	display: block !important;
	border: 0px !important;
	margin: -1px !important;
	padding: 0px !important;
	height: 1px !important;
	width: 1px !important;
	clip: rect(0, 0, 0, 0) !important;
	overflow: hidden !important;
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
</head>
<body>

	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="d7e09953-7a13-4b31-b6a7-2d4bcaa751e5">
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
								<div>
									<span><div
											class="progress-section progress__bar-section progress-section--first"
											style="width: 16.666666666666668%; left: 0%; max-width: 100%"></div>
										<div class="progress-section progress__bar-section"
											style="width: 16.666666666666668%; left: 16.666666666666668%; max-width: 83.33333333333333%"></div>
										<div class="progress-section progress__bar-section"
											style="width: 16.666666666666668%; left: 33.333333333333336%; max-width: 66.66666666666666%"></div>
										<div class="progress-section progress__bar-section"
											style="width: 16.666666666666668%; left: 50%; max-width: 50%"></div>
										<div class="progress-section progress__bar-section"
											style="width: 16.666666666666668%; left: 66.66666666666667%; max-width: 33.33333333333333%"></div>
										<div class="progress-section progress__bar-section"
											style="width: 16.666666666666668%; left: 83.33333333333334%; max-width: 16.666666666666657%"></div></span>
								</div>
							</div>
						</div>
					</div>
					<div class="left-backdrop"></div>
					<div
						class="right-backdrop hide-sm bg-white right-backdrop--with-bg"></div>
					<div class="list-your-space__content">
						<div class="centered-content clearfix col-md-7">
						<form id="bedbath" action="foreMove.host" method="post">
							<div
								class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix ">
								<div
									class="main-panel main-panel-padding main-panel-progress pull-right main-panel-inner-half space-sm-8">
									<div class="_1mbllh6j">
										<div class="_492uxj4">숙소에 얼마나 많은 인원이 숙박할 수 있나요?</div>
									</div>
									
									<div>
										<div>
											<div style="margin-bottom: 32px">
												<div class="_2h22gn">
													<div class="_1f6bwyr7">
														<div class="_1ik5bx6">
															<div class="_42uiotg">
																<div role="group"
																	aria-labelledby="StepIncrementerRow-title-accommodates-select">
																	<div class="_2930ex">
																		<div class="_10ejfg4u">
																			<div class="_mke2gl1">
																				<div
																					id="StepIncrementerRow-title-accommodates-select">
																					<div class="_1n57hdr7">
																						<span>최대 숙박 인원</span>
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="_ni9axhe">
																			<div class="_1fb7ddvw">
																				<div class="_7eamzqx">
																					<button type="button" class="_qz4lhy5"
																						id="peopledis" aria-busy="false">
																						<span class="_1rwjd1n1"><svg
																								viewBox="0 0 24 24" role="img"
																								aria-label="subtract, 숙박 인원 4명"
																								focusable="false"
																								style="height: 1em; width: 1em; display: block; fill: currentColor">
																							<rect height="2" rx="1" width="12" x="6" y="11"></rect></svg></span>
																					</button>
																				</div>
																				<div aria-hidden="false" class="_zac1rbz">
																					<input class="_1n57hdr7" id=pcount name="home_people" value="4" readonly="readonly">
																				</div>
																				<div class="_1a72ixey">
																					<button type="button" class="_qz4lhy5"
																						id="peopleup" aria-busy="false">
																						<span class="_1rwjd1n1"><svg
																								viewBox="0 0 24 24" role="img"
																								aria-label="add, 숙박 인원 4명" focusable="false"
																								style="height: 1em; width: 1em; display: block; fill: currentColor">
																							<rect height="2" rx="1" width="12" x="6" y="11"></rect>
																							<rect height="12" rx="1" width="2" x="11" y="6"></rect></svg></span>
																					</button>
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
											<div style="margin-bottom: 32px">
												<label for="bedroom-select" class="text-gray"><span>게스트가
														사용할 수 있는 침실은 몇 개인가요?</span></label>
												<div class="_2h22gn">
													<div class="_1f6bwyr7">
														<div class="select-block select-jumbo">
															<div class="_9hxttoo">
																<label class="_1m8bb6v" for="bedroom-select">bedrooms</label>
																<div class="_az0uecb">
																	<div class="_y9ev9r">
																		<select id="bedroom-select" name="home_bedroom"
																			class="_10p0m0gl">
																			<option value="0" selected="">침실 0개</option>
																			<option value="1">침실 1개</option>
																			<option value="2">침실 2개</option>
																			<option value="3">침실 3개</option>
																			<option value="4">침실 4개</option>
																			<option value="5">침실 5개</option>
																			<option value="6">침실 6개</option>
																			<option value="7">침실 7개</option>
																			<option value="8">침실 8개</option>
																			<option value="9">침실 9개</option>
																			<option value="10">침실 10개</option>
																			<option value="11">침실 11개</option>
																			<option value="12">침실 12개</option>
																			<option value="13">침실 13개</option>
																			<option value="14">침실 14개</option>
																			<option value="15">침실 15개</option>
																			<option value="16">침실 16개</option>
																			<option value="17">침실 17개</option>
																			<option value="18">침실 18개</option>
																			<option value="19">침실 19개</option>
																			<option value="20">침실 20개</option>
																		</select>
																	</div>
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
												</div>
											</div>

										</div>
										<div style="margin-bottom: 32px">
											<label for="beds-select" class="text-gray"><span>게스트가
													사용할 수 있는 침대는 몇 개인가요?</span></label>
											<div class="_2h22gn">
												<div class="_1f6bwyr7">
													<div class="_1ik5bx6">
														<div class="_42uiotg">
															<div role="group"
																aria-labelledby="StepIncrementerRow-title-beds-select">
																<div class="_2930ex">
																	<div class="_10ejfg4u">
																		<div class="_mke2gl1">
																			<div id="StepIncrementerRow-title-beds-select">
																				<div class="_1n57hdr7">
																					<span>침대 수</span>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="_ni9axhe">
																		<div class="_1fb7ddvw">
																			<div class="_7eamzqx">
																				<button type="button" class="_qz4lhy5" id="minbed"
																					disabled=" " aria-busy="false">
																					<span class="_1rwjd1n1"><svg
																							viewBox="0 0 24 24" role="img"
																							aria-label="subtract, 침대 0개" focusable="false"
																							style="height: 1em; width: 1em; display: block; fill: currentColor">
																							<rect height="2" rx="1" width="12" x="6" y="11"></rect></svg></span>
																				</button>
																			</div>
																			<div aria-hidden="false" class="_zac1rbz">
																				
																				<input class="_1n57hdr7" id=bedcount name="home_bed" value="0" readonly="readonly">
																			</div>
																			<div class="_1a72ixey">
																				<button type="button" class="_qz4lhy5" id="addbed"
																					aria-busy="false">
																					<span class="_1rwjd1n1"><svg
																							viewBox="0 0 24 24" role="img"
																							aria-label="add, 침대 0개" focusable="false"
																							style="height: 1em; width: 1em; display: block; fill: currentColor">
																							<rect height="2" rx="1" width="12" x="6" y="11"></rect>
																							<rect height="12" rx="1" width="2" x="11" y="6"></rect></svg></span>
																				</button>
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
								
									<div>
										<div class="panel-title">
											<h3 class="no-margin-padding">
												<span>침대 유형</span>
											</h3>
										</div>
										<div class="page-container-full">
											<div id="room_0"
												class="beddetail-item-container no-margin-h row beddetail-item-container-last">

												<div>
													<div class="col-sm-12 no-padding-h">
														<div class="beddetail-item-selectors-group">
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-double_bed-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-double_bed-beddetail-select">
																							<div class="_1n57hdr7">더블</div>
																						</div>
																						<div
																							id="StepIncrementerRow-subtitle-double_bed-beddetail-select"
																							class="_1pjh0qr">
																							<div class="_1nhodd4u">폭 125~149cm</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" disabled="" id="doubledown"
																								class="_qz4lhy5" aria-busy="false">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 더블 침대 0개"
																										focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="doublecount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="doubleup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 더블 침대 0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-queen_bed-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-queen_bed-beddetail-select">
																							<div class="_1n57hdr7">퀸</div>
																						</div>
																						<div
																							id="StepIncrementerRow-subtitle-queen_bed-beddetail-select"
																							class="_1pjh0qr">
																							<div class="_1nhodd4u">폭 150~179cm</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" disabled="" id=queendown
																								class="_qz4lhy5" aria-busy="false">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 퀸 침대 0개"
																										focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="queencount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="queenup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 퀸 침대 0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-single_bed-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-single_bed-beddetail-select">
																							<div class="_1n57hdr7">싱글</div>
																						</div>
																						<div
																							id="StepIncrementerRow-subtitle-single_bed-beddetail-select"
																							class="_1pjh0qr">
																							<div class="_1nhodd4u">폭 80~109cm</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" disabled="" id="singledown"
																								class="_qz4lhy5" aria-busy="false">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 싱글 침대 0개"
																										focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="singlecount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="singleup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 싱글 침대 0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-sofa_bed-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-sofa_bed-beddetail-select">
																							<div class="_1n57hdr7">소파 베드</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" disabled="" id="sofadown"
																								class="_qz4lhy5" aria-busy="false">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 소파 베드 0개"
																										focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="sofacount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="sofaup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 소파 베드 0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-king_bed-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-king_bed-beddetail-select">
																							<div class="_1n57hdr7">킹</div>
																						</div>
																						<div
																							id="StepIncrementerRow-subtitle-king_bed-beddetail-select"
																							class="_1pjh0qr">
																							<div class="_1nhodd4u">폭 180~220cm</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" class="_qz4lhy5"
																								id="kingdown" aria-busy="false" disabled="">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 킹 침대 0개"
																										focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="kingcount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="kingup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 킹 침대 0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-floor_mattress-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-floor_mattress-beddetail-select">
																							<div class="_1n57hdr7">매트 리스</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" disabled="" id="matrixdown"
																								class="_qz4lhy5" aria-busy="false">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 매트리스 0개"
																										focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="matrixcount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="matrixup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 매트리스  0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="space-3 beddetail-item-selector">
																<div class="_1ik5bx6">
																	<div class="_42uiotg">
																		<div role="group"
																			aria-labelledby="StepIncrementerRow-title-bunk_bed-beddetail-select">
																			<div class="_2930ex">
																				<div class="_10ejfg4u">
																					<div class="_mke2gl1">
																						<div
																							id="StepIncrementerRow-title-bunk_bed-beddetail-select">
																							<div class="_1n57hdr7">이층 침대</div>
																						</div>
																					</div>
																				</div>
																				<div class="_ni9axhe">
																					<div class="_1fb7ddvw">
																						<div class="_7eamzqx">
																							<button type="button" disabled="" id="seconddown"
																								class="_qz4lhy5" aria-busy="false">
																								<span class="_gemu6jr"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="subtract, 이층 침대" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect></svg></span>
																							</button>
																						</div>
																						<div aria-hidden="true" class="_zac1rbz">
																							<div class="_1n57hdr7" id="secoundcount">0</div>
																						</div>
																						<div class="_1a72ixey">
																							<button type="button" class="_qz4lhy5"
																								id="secondup" aria-busy="false">
																								<span class="_1rwjd1n1"><svg
																										viewBox="0 0 24 24" role="img"
																										aria-label="add, 이층 침대 0개" focusable="false"
																										style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																											y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																											y="6"></rect></svg></span>
																							</button>
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
											</div>
										</div>
										<div class="panel-title">
											<h3 class="no-margin-padding">
												<span>욕실 갯수</span>
											</h3>
										</div>
										<div class="space-3 beddetail-item-selector">
											<div class="_1ik5bx6">
												<div class="_42uiotg">
													<div role="group"
														aria-labelledby="StepIncrementerRow-title-queen_bed-beddetail-select">
														<div class="_2930ex">
															<div class="_10ejfg4u">
																<div class="_mke2gl1">
																<div class="_1n57hdr7"><span>욕실</span></div>
																</div>
															</div>
															<div class="_ni9axhe">
																<div class="_1fb7ddvw">
																	<div class="_7eamzqx">
																		<button type="button" id=bathroomdown
																			class="_qz4lhy5" aria-busy="false">
																			<span class="_gemu6jr"><svg
																					viewBox="0 0 24 24" role="img"
																					aria-label="subtract, 욕실갯수 0개" focusable="false"
																					style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																						y="11"></rect></svg></span>
																		</button>
																	</div>
																	<div aria-hidden="true" class="_zac1rbz">
																		<div class="_1n57hdr7" id="bathroomcount">1</div>
																		
																	</div>
																	<div class="_1a72ixey">
																		<button type="button" class="_qz4lhy5" id="bathroomup"
																			aria-busy="false">
																			<span class="_1rwjd1n1"><svg
																					viewBox="0 0 24 24" role="img"
																					aria-label="add, 욕실갯수 0개" focusable="false"
																					style="height: 1em; width: 1em; display: block; fill: currentcolor;">
																										<rect height="2" rx="1" width="12" x="6"
																						y="11"></rect>
																										<rect height="12" rx="1" width="2" x="11"
																						y="6"></rect></svg></span>
																		</button>
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
							</form>
							<div class="main-panel__actions-wrapper">
								<div class="centered-content clearfix">
									<div class="bg-white main-panel-outer-half clearfix shadowed">
										<div
											class="no-margin-padding__sm main-panel-padding    space-sm-8">
											<div class="divider hide-sm"></div>
											<div class="row no-margin-padding__sm">
												<div
													class="main-panel__actions col-sm-12 no-margin-padding__sm">
													<div class="_1dcqn1vg"
														style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
														<a href="/second.host" class="_5rte3y6"
															aria-busy="false"><span class="_cgr7tc7"><span>뒤로</span></span></a>
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
								<span style="font-size: 0"></span>
							</div>
						</div>
						<div class="help-panel-container">
							<div style="margin-top: 0">
								<div class="hide-sm help-panel panel">
									<div class="panel-body">
										<div class="help-panel__bulb-img space-2"></div>
										<div class="help-panel__text">
											<div>
												<p>
													<span>숙소의 침대 수와 종류를 정확히 표시하면 몇 명이 불편함 없이 머물 수 있을지
														게스트가 미리 알 수 있습니다.</span>
												</p>
												<p>
													<span>침대 유형을 명시하면 게스트가 어떤 종류의 침대가 있는지 알 수 있습니다.</span>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div></div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
	
		$("#peopledis").click(function() {
			var intmax = parseInt($("#pcount").val());

			if(intmax > 1){
				intmax = intmax - 1; 
				$("#pcount").val(intmax);
				$("#peopleup").attr("disabled",false);
			}else{
				$("#peopledis").attr("disabled",true);
				$("#pcount").val(0);
			}
			
		});
		
		$("#peopleup").click(function() {
			var intmax = parseInt($("#pcount").val());

			if(intmax < 15 ){
				$("#peopledis").attr("disabled",false);
				intmax = intmax + 1; 
				$("#pcount").val(intmax)
				
			}else if(intmax = 15){
				$("#peopleup").attr("disabled",true);
				$("#pcount").val(intmax+1 + "+")
			}
		});
		
		
		$("#minbed").click(function() {
			var intmax = parseInt($("#bedcount").val());

			if(intmax > 1){
				intmax = intmax - 1; 
				$("#bedcount").val(intmax);
				$("#addbed").attr("disabled",false);
			}else{
				$("#minbed").attr("disabled",true);
				$("#bedcount").val(0);
			}
			
		});
		
		$("#addbed").click(function() {
			var intmax = parseInt($("#bedcount").val());

			if(intmax < 19 ){
				$("#minbed").attr("disabled",false);
				intmax = intmax + 1; 
				$("#bedcount").val(intmax)
				
			}else if(intmax = 19){
				$("#addbed").attr("disabled",true);
				$("#bedcount").val(intmax+1 + "+")
			}
		});
		
		$("#doubledown").click(function() {
			var doubleh = parseInt($("#doublecount").text());
			if(doubleh > 1 ){
				$("#doubleup").attr("disabled",false);
				doubleh = doubleh - 1;
				$("#doublecount").text(doubleh);
			}else{
				$("#doublecount").text(doubleh-1);
				$("#doubledown").attr("disabled",true);
			}
		});
		
		$("#doubleup").click(function() {
			var doubleh = parseInt($("#doublecount").text());
			if(doubleh < 19){
				$("#doubledown").attr("disabled",false);
				doubleh = doubleh +1;
				$("#doublecount").text(doubleh);
			}else if(doubleh = 19){
				$("#doublecount").text(doubleh+1);
				$("#doubleup").attr("disabled",true);
			}
		});
		
		$("#queendown").click(function() {
			var countd = parseInt($("#queencount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#queencount").text(countd);
				$("#queenup").attr("disabled",false);
			}else{
				$("#queencount").text(countd-1);
				$("#queendown").attr("disabled",true);
			}
		});
		
		$("#queenup").click(function() {
			var countd = parseInt($("#queencount").text());
			if(countd < 19){
				countd = countd +1;
				$("#queencount").text(countd);
				$("#queendown").attr("disabled",false);
			}else if(countd = 19){
				$("#queencount").text(countd+1);
				$("#queenup").attr("disabled",true);
			}
		});
		
		$("#singledown").click(function() {
			var countd = parseInt($("#singlecount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#singlecount").text(countd);
				$("#singleup").attr("disabled",false);
			}else{
				$("#singlecount").text(countd-1);
				$("#singledown").attr("disabled",true);
			}
		});
		
		$("#singleup").click(function() {
			var countd = parseInt($("#singlecount").text());
			if(countd < 19){
				countd = countd +1;
				$("#singlecount").text(countd);
				$("#singledown").attr("disabled",false);
			}else if(countd = 19){
				$("#singlecount").text(countd+1);
				$("#singleup").attr("disabled",true);
			}
		});
		
		$("#sofadown").click(function() {
			var countd = parseInt($("#sofacount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#sofacount").text(countd);
				$("#sofaup").attr("disabled",false);
			}else{
				$("#sofacount").text(countd-1);
				$("#sofadown").attr("disabled",true);
			}
		});
		
		$("#sofaup").click(function() {
			var countd = parseInt($("#sofacount").text());
			if(countd < 19){
				countd = countd +1;
				$("#sofacount").text(countd);
				$("#sofadown").attr("disabled",false);
			}else if(countd = 19){
				$("#sofacount").text(countd+1);
				$("#sofaup").attr("disabled",true);
			}
		});
		
		$("#kingdown").click(function() {
			var countd = parseInt($("#kingcount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#kingcount").text(countd);
				$("#kingup").attr("disabled",false);
			}else{
				$("#kingcount").text(countd-1);
				$("#kingdown").attr("disabled",true);
			}
		});
		
		$("#kingup").click(function() {
			var countd = parseInt($("#kingcount").text());
			if(countd < 19){
				countd = countd +1;
				$("#kingcount").text(countd);
				$("#kingdown").attr("disabled",false);
			}else if(countd = 19){
				$("#kingcount").text(countd+1);
				$("#kingup").attr("disabled",true);
			}
		});
		
		$("#matrixdown").click(function() {
			var countd = parseInt($("#matrixcount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#matrixcount").text(countd);
				$("#matrixup").attr("disabled",false);
			}else{
				$("#matrixcount").text(countd-1);
				$("#matrixdown").attr("disabled",true);
			}
		});
		
		$("#matrixup").click(function() {
			var countd = parseInt($("#matrixcount").text());
			if(countd < 19){
				countd = countd +1;
				$("#matrixcount").text(countd);
				$("#matrixdown").attr("disabled",false);
			}else if(countd = 19){
				$("#matrixcount").text(countd+1);
				$("#matrixup").attr("disabled",true);
			}
		});
		
		$("#seconddown").click(function() {
			var countd = parseInt($("#secoundcount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#secoundcount").text(countd);
				$("#secondup").attr("disabled",false);
			}else{
				$("#secoundcount").text(countd-1);
				$("#seconddown").attr("disabled",true);
			}
		});
		
		$("#secondup").click(function() {
			var countd = parseInt($("#secoundcount").text());
			if(countd < 19){
				countd = countd +1;
				$("#secoundcount").text(countd);
				$("#seconddown").attr("disabled",false);
			}else if(countd = 19){
				$("#secoundcount").text(countd+1);
				$("#secondup").attr("disabled",true);
			}
		});
		
		
		$("#bathroomdown").click(function() {
			var countd = parseInt($("#bathroomcount").text());
			if(countd > 1 ){
				countd = countd - 1;
				$("#bathroomcount").text(countd);
				$("#bathroomup").attr("disabled",false);
			}else{
				$("#bathroomcount").text(countd-1);
				$("#bathroomdown").attr("disabled",true);
			}
		});
		
		$("#bathroomup").click(function() {
			var countd = parseInt($("#bathroomcount").text());
			if(countd < 19){
				countd = countd +1;
				$("#bathroomcount").text(countd);
				$("#bathroomdown").attr("disabled",false);
			}else if(countd = 19){
				$("#bathroomcount").text(countd+1);
				$("#bathroomup").attr("disabled",true);
			}
		});
		
		$("#nextpg").click(function() {
			//$(location).attr("href","fore.host");
			$("#bedbath").submit();
		});
		
	</script>
</body>
</html>