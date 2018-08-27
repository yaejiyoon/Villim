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
<style type="text/css">
#housename{
	height: 67px;
	width: 484px;
}
.clearfix{
	margin-top: 15px;
}
.no-margin-padding__sm{
	margin-top: 45px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="62050424-501d-4e76-9922-995555779dfd">
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
												class="progress-section progress__bar-section progress-section--first progress-section--last-completed progress-section--skipped"
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
									class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix col-md-4 col-md-offset-2 ">
									<div
										class="main-panel main-panel-padding main-panel-progress  main-panel-inner-half space-sm-8">
										<div class="_1mbllh6j">
											<div class="_492uxj4">이름 지정</div>
										</div>
										<div>
										<form action="step2over.host" id="homename" method="post">
											<div class="lys-input__fieldset">
												<input type="text" placeholder="숙소 제목를 지정해주세요" id="housename"
													class="lys-title__input" name="home_name"
													aria-label="숙소 제목" />
											</div>
										</form>
										</div>
									</div>
									<div class="main-panel__actions-wrapper fuckoff">
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
																<a href="step2second.host"
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
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		$("#housename").keyup(function(e) {
			
		var istext = $("#housename").val();
		
		if(istext == ""){
			$("#nextpg").attr("disabled",true);
		}else{
			$("#nextpg").attr("disabled",false);
		}
		
		});
		
		$("#nextpg").click(function() {
			//$(location).attr("href","step2third.host");
			$("#homename").submit();
		});
		
	</script>
	
</body>
</html>