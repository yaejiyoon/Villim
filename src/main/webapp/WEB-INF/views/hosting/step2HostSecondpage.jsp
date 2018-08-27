<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" type="text/css" href="resources/hosting.css">
<title>Insert title here</title>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="6e3c0f05-ee35-4ade-b1de-4f50ef2259da">
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
											class="hide-sm h5 text-normal" tabindex="-1"><span>2단계:</span>
										</span><span class="h5 text-normal">상세 정보를 제공해 주세요</span></span>
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
												class="progress-section progress__bar-section progress-section--first progress-section--completed progress-section--last-completed"
												style="width: 33.333333333333336%; left: 0%; max-width: 100%"></div>
											<div class="progress-section progress__bar-section"
												style="width: 33.333333333333336%; left: 33.333333333333336%; max-width: 66.66666666666666%"></div>
											<div class="progress-section progress__bar-section"
												style="width: 33.333333333333336%; left: 66.66666666666667%; max-width: 33.33333333333333%"></div></span>
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
									class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix col-md-4 col-md-offset-2">
									<div
										class="main-panel main-panel-padding main-panel-progress  main-panel-inner-half space-sm-8">
										<div class="_1mbllh6j">
											<div class="_492uxj4">숙소 설명 수정하기</div>
										</div>
										<div>
											<form action="gostep2third.host" method="post" id="contents">
											<p class="text-muted">
												<span>요약</span>
											</p>
											<div>
												<fieldset class="lys-input__fieldset" id="field">
													<textarea class="lys-summary__textarea hide-scroll"
														placeholder="인테리어, 채광, 주변 정보 등을 설명하세요."
														id="lys-summary-textarea" name="home_contents"
														style="height: 123px; width: 484px; resize: none;"></textarea>
													<strong><span
														class="lys-input__remaining-char-count text-muted text-small"
														aria-label="500자 남음">500</span></strong>
												</fieldset>
											</div>
											<div class="space-top-4">
												<button class="btn-link" type="button" id="addtional">
													<span class="text-muted"><span>추가 정보 (선택사항)</span></span>
												</button>
												<p class="text-muted text-base">
													<span>30%의 호스트만이 여기에 추가 정보를 입력합니다.</span>
												</p>
											</div>
											</form>
										</div>
									</div>
									<div class="main-panel__actions-wrapper">
										<div class="centered-content clearfix">
											<div class="bg-white main-panel-outer-half clearfix shadowed">
												<div
													class="no-margin-padding__sm main-panel-padding main-panel-progress  main-panel-inner-half space-sm-8">
													<div class="divider hide-sm"></div>
													<div class="row no-margin-padding__sm">
														<div
															class="main-panel__actions col-sm-12 no-margin-padding__sm">
															<div class="_1dcqn1vg"
																style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
																<a href="step2first.host"
																	class="_5rte3y6" aria-busy="false"><span
																	class="_cgr7tc7"><span>뒤로</span></span></a>
																<div class="_107ja4p">
																	<button type="button" disabled="" class="_5rte3y6" id="nextpg"
																		aria-busy="false" data-veloute="lys-next-button">
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
								<div class="help-panel-container col-md-offset-2 col-md-4">
									<div style="margin-top: 0">
										<div class="hide-sm help-panel panel">
											<div class="panel-body">
												<div class="help-panel__bulb-img space-2"></div>
												<div class="help-panel__text">
													<div class="lys-carousel">
														<div class="lys-carousel__height-container">
															<span><div>
																	<div>
																		<p>
																			<span>요약 설명은 숙소에 대한 간단한 개요로 게스트가 세부사항을 확인하기 전에
																				읽어볼 수 있습니다.</span>
																		</p>
																		<p>
																			<span>또한, 개인적 배경과 관계없이 모든 게스트를 환영한다는 메시지를 숙소
																				설명에 포함할 수 있습니다.</span>
																		</p>
																	</div>
																</div></span>
														</div>
													</div>
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
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$("#addtional")
				.click(
						function() {
							$("#field")
									.after("<div><div class=\"space-top-4\"><p class=\"text-muted\"><span>숙소 소개(선택사항)</span></p><fieldset class=\"lys-input__fieldset\"><textarea name=\"home_desc_explain\" class=\"lys-summary__textarea hide-scroll\" velouteid=\"lys-space-textarea\"  style=\"height: 123px; width: 484px; resize: none; \"></textarea></fieldset></div>"
									+"<div class=\"space-top-4\"><p class=\"text-muted\"><span>게스트가 이용할 수 있는 공간(선택사항)</span></p><fieldset class=\"lys-input__fieldset\"><textarea name=\"home_desc_space\" class=\"lys-summary__textarea hide-scroll\" velouteid=\"lys-access-textarea\" style=\"height: 123px; width: 484px; resize: none; \"></textarea></fieldset></div>"
									+"<div class=\"space-top-4\"><p class=\"text-muted\"><span>게스트와의 교류(선택사항)</span></p><fieldset class=\"lys-input__fieldset\"><textarea name=\"home_desc_guest\" class=\"lys-summary__textarea hide-scroll\" velouteid=\"lys-interaction-textarea\" style=\"height: 123px; width: 484px; resize: none; \"></textarea></fieldset></div>"
									+"<div class=\"space-top-4\"><p class=\"text-muted\"><span>기타 정보(선택사항)</span></p><fieldset class=\"lys-input__fieldset\"><textarea name=\"home_desc_etc\" class=\"lys-summary__textarea hide-scroll\" velouteid=\"lys-notes-textarea\" style=\"height: 123px; width: 484px; resize: none;  \"></textarea></fieldset></div>"
									+"<div class=\"space-top-7 space-4\"><strong><span>숙소가 위치한 지역</span></strong></div><div class=\"space-top-4\"><p class=\"text-muted\"><span>숙소가 위치한 지역 소개(선택사항)</span></p><fieldset class=\"lys-input__fieldset\"><textarea name=\"home_desc_region\" class=\"lys-summary__textarea hide-scroll\" style=\"height: 123px; width: 484px; resize: none;  \"></textarea></fieldset></div>"
									+"<div class=\"space-top-4\"><p class=\"text-muted\"><span>대중교통 이용방법(선택사항)</span></p><fieldset class=\"lys-input__fieldset\"><textarea name=\"home_desc_traffic\" class=\"lys-summary__textarea hide-scroll\" style=\"height: 123px; width: 484px; resize: none; \"></textarea></fieldset></div></div>");
									
							$("#addtional").remove();
						});

		$('#lys-summary-textarea').keyup(function(e) {

			var istext = $("#lys-summary-textarea").val();

			$.ajax({
				url : "textis.ho",
				dataType : "json",
				type : "post",
				data : {
					val : istext
				},
				success : function(response) {
					console.log("AJAX Request 성공 ");
					console.log(response);
					var textval = response;
					if (textval == "") {
						//console.log("!!	");
						$("#nextpg").attr("disabled",true);
						
					} else {
						//console.log("?? ");
						$("#nextpg").attr("disabled",false);
					}
				},
				error : function() {
					console.log("에러발생!");
				},
				complte : function() {
					console.log("성공이건 실패건 어찌되었든 ajax 종료");
				}
			});

		});
		
		$("#nextpg").click(function() {
			//$(location).attr("href","step2third.host");
			$("#contents").submit();
		});
	</script>
</body>
</html>