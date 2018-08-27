<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resources/hosting.css">
<title>Insert title here</title>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="bd03bd22-ed65-45c2-bb88-7ed18bd470c4">
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
							<div>
								<div class="progress-bar__container">
									<div>
										<span><div
												class="progress-section progress__bar-section progress-section--first progress-section--completed"
												style="width: 9.090909090909092%; left: 0%; max-width: 100%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 9.090909090909092%; max-width: 90.9090909090909%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 18.181818181818183%; max-width: 81.81818181818181%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 27.272727272727273%; max-width: 72.72727272727272%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 36.36363636363637%; max-width: 63.63636363636363%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 45.45454545454546%; max-width: 54.54545454545454%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 54.54545454545455%; max-width: 45.45454545454545%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 63.63636363636364%; max-width: 36.36363636363636%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 72.72727272727273%; max-width: 27.272727272727266%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 81.81818181818183%; max-width: 18.181818181818173%"></div>
											<div
												class="progress-section progress__bar-section progress-section--completed"
												style="width: 9.090909090909092%; left: 90.90909090909092%; max-width: 9.09090909090908%"></div></span>
									</div>
								</div>
							</div>
						</div>
						<div class="left-backdrop"></div>
						<div
							class="right-backdrop hide-sm bg-white right-backdrop--with-bg"></div>
						<div class="list-your-space__content">
							<div class="centered-content clearfix">
								<div
									class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix">
									<div
										class="main-panel main-panel-padding main-panel-progress pull-right main-panel-inner-half space-sm-8">
										<div class="_1mbllh6j">
											<div class="_492uxj4">숙소 요금 설정하기</div>
										</div>
										<div>
											<div class="_1n57hdr7">예약을 받을 가능성을 높이세요</div>
											<div class="_ncwphzu">스마트 요금을 설정하면 숙소가 위치한 지역에 대한 수요에
												따라 1박 요금이 자동으로 조정되어 경쟁력을 유지할 수 있습니다.</div>
										</div>
										<div>
											<div style="margin-top: 32px; margin-bottom: 32px">
												<div class="_2izxxhr">모든 날짜에 동일하게 적용할 기본 요금을 설정하세요</div>
											</div>
											<div>
												<div style="margin-top: 32px; margin-bottom: 32px">
													<div class="_9hxttoo">
														<div style="margin-bottom: 8px">
															<label class="_rin72m" for="listing_price"><div
																	class="_1n57hdr7">기본 요금</div></label>
															<div class="_1nhodd4u">스마트 요금 기능을 사용하지 않을 때 적용되는 기본
																요금입니다.</div>
														</div>
														<div dir="ltr">
															<div class="_16kmizaz">
																<div class="_ncmdki">
																	<div class="_54ehin">
																		<span>₩</span>
																	</div>
																</div>
																<form action="step3final.host" id="homeprice" method="post">
																<div class="_178faes">
																	<input type="tel" autoComplete="off" class="_17biyeij" name="home_price"
																		id="listing_price" name="listing_price" />
																</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div style="margin-top: 24px; margin-bottom: 32px">
												<div style="margin-bottom: 4px">
													<label class="_rin72m" for="listing_native_currency"><div
															class="_1n57hdr7">통화 단위</div></label>
												</div>
												<div class="select select-block select-large">
													<select id="select-listing_native_currency"
														name="listing_native_currency"><option
															value="placeholder" disabled="">통화 선택</option>
														<option value="AED">AED</option>
														<option value="ARS">ARS</option>
														<option value="AUD">AUD</option>
														<option value="BGN">BGN</option>
														<option value="BRL">BRL</option>
														<option value="CAD">CAD</option>
														<option value="CHF">CHF</option>
														<option value="CLP">CLP</option>
														<option value="CNY">CNY</option>
														<option value="COP">COP</option>
														<option value="CRC">CRC</option>
														<option value="CZK">CZK</option>
														<option value="DKK">DKK</option>
														<option value="EUR">EUR</option>
														<option value="GBP">GBP</option>
														<option value="HKD">HKD</option>
														<option value="HRK">HRK</option>
														<option value="HUF">HUF</option>
														<option value="IDR">IDR</option>
														<option value="ILS">ILS</option>
														<option value="JPY">JPY</option>
														<option selected="selected" value="KRW">KRW</option>
														<option value="MAD">MAD</option>
														<option value="MXN">MXN</option>
														<option value="MYR">MYR</option>
														<option value="NOK">NOK</option>
														<option value="NZD">NZD</option>
														<option value="PEN">PEN</option>
														<option value="PHP">PHP</option>
														<option value="PLN">PLN</option>
														<option value="RON">RON</option>
														<option value="RUB">RUB</option>
														<option value="SAR">SAR</option>
														<option value="SEK">SEK</option>
														<option value="SGD">SGD</option>
														<option value="THB">THB</option>
														<option value="TRY">TRY</option>
														<option value="TWD">TWD</option>
														<option value="UAH">UAH</option>
														<option value="USD">USD</option>
														<option value="UYU">UYU</option>
														<option value="VND">VND</option>
														<option value="ZAR">ZAR</option></select>
												</div>
											</div>
										</div>
										<div style="margin-top: 24px; margin-bottom: 24px">
											<div style="margin-top: 16px; margin-bottom: 16px">
												<div class="_s50zru"></div>
											</div>
										</div>
									</div>
									<div class="main-panel__actions-wrapper">
										<div class="centered-content clearfix">
											<div class="bg-white main-panel-outer-half clearfix shadowed">
												<div
													class="no-margin-padding__sm main-panel-padding main-panel-progress pull-right main-panel-inner-half space-sm-8">
													<div class="divider hide-sm"></div>
													<div class="row no-margin-padding__sm">
														<div
															class="main-panel__actions col-sm-12 no-margin-padding__sm">
															<div class="_1dcqn1vg"
																style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
																<a href="/become-a-host/27770089/calendar"
																	class="_5rte3y6" aria-busy="false"><span
																	class="_cgr7tc7"><span>뒤로</span></span></a>
																<div class="_107ja4p">
																	<button type="button" class="_5rte3y6" aria-busy="false" id="nextpg"
																				data-veloute="lys-next-button">
																				<span class="_cgr7tc7"><span>완료</span></span>
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
													<div style="line-height: normal">
														<div style="margin-bottom: 16px">
															<div class="_jnrahhr">낮은 요금으로 시작하여 예약을 유도하세요</div>
														</div>
														<div class="_1nhodd4u">
															<div style="margin-bottom: 16px">신규 호스트는 첫 예약을 유도하기
																위해 낮은 요금으로 호스팅을 시작합니다. 제안 요금의 5% 내외로 요금을 설정하면 예약률이 4배가량
																늘어납니다.</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="show-sm help-panel__floating-container">
										<div
											class="help-panel--expanded help-panel__floating-panel bg-white help-panel__floating-panel--upward help-panel__floating-panel--leftward"
											role="tooltip">
											<div class="help-panel__bulb-img"></div>
											<div class="help-panel__floating-panel-body help-panel__text">
												<div style="line-height: normal">
													<div style="margin-bottom: 16px">
														<div class="_jnrahhr">낮은 요금으로 시작하여 예약을 유도하세요</div>
													</div>
													<div class="_1nhodd4u">
														<div style="margin-bottom: 16px">신규 호스트는 첫 예약을 유도하기
															위해 낮은 요금으로 호스팅을 시작합니다. 제안 요금의 5% 내외로 요금을 설정하면 예약률이 4배가량
															늘어납니다.</div>
													</div>
												</div>
											</div>
											<div aria-label="닫기" class="help-panel__close-icon"
												role="button" tabindex="0"></div>
										</div>
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
		$("#nextpg").click(function() {
			//$(location).attr("href","step2third.host");
			$("#homeprice").submit();
		});
	</script>
</body>
</html>