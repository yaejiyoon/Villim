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
<style>

.4m7syz input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
}

/* Create a custom checkbox */
.checkmark {
    top: 0;
    left: 0;
    height: 20px;
    width: 20px;
    background-color: #eee;
}

/* On mouse-over, add a grey background color */
.4m7syz:hover input ~ .checkmark {
    background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.4m7syz input:checked ~ .checkmark {
    background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
    content: "";
    position: absolute;
    display: none;
}

/* Show the checkmark when checked */
.4m7syz input:checked ~ .checkmark:after {
    display: block;
}

/* Style the checkmark/indicator */
.4m7syz .checkmark:after {
    left: 9px;
    top: 5px;
    width: 5px;
    height: 10px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
}

</style>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="c1201b86-d2dd-47f6-9677-9271877497f0">
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
								class="main-panel-container no-padding-h bg-white main-panel-outer-half clearfix  col-md-6 col-md-offset-2">
								<div
									class="main-panel main-panel-padding main-panel-progress pull-right main-panel-inner-half space-sm-8 ">
									<div class="_1mbllh6j">
										<div class="_492uxj4">어떤 편의시설을 제공하시나요?</div>
									</div>
									<div style="margin-top: 24px; margin-bottom: 24px">
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="12"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark"  id="12" value="allows_pets" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">집에서 키우는 반려동물</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="9"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox" 
													class="checkmark" id="9" value="free_parking" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">주차</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="21"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="21" value="elevator" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">엘리베이터</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="7"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox" id="7"
													class="checkmark" value="pool" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">수영장</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="27"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="27" value="fireplace" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">벽난로</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="15"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="15" value="gym" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">헬스장</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="25"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="25" value="jacuzzi" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">자쿠지 욕조</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="8"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox" id="8"
													class="checkmark" value="kitchen" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">주방</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="4"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox" id="4"
														class="checkmark" value="wireless_internet" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">무선인터넷</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="16"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="16" value="breakfast" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">조식, 커피, 차</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="34"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													 class="checkmark" id="34" value="dryer" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">빨래 - 건조기</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="46"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="46" value="iron" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">다리미</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="45"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="45" value="hair-dryer" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">헤어드라이어</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="44"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="44" value="hangers" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">옷장/서랍장</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="40"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													 class="checkmark" id="40" value="essentials" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">필수 품목</span><span class="_wzwtzh8">수건,
															침대 시트, 비누, 화장지, 베개</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="41"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="41" value="shampoo" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">샴푸</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="47"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="47" value="laptop-friendly" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">업무 가능 공간/책상</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="30"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="30" value="heating" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">난방</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="1"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox" id="1"
													class="checkmark" value="tv" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">TV</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="33"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="33" value="washer" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">빨래 - 세탁기</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="5"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox" id="5"
													class="checkmark" value="ac" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">에어컨</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="57"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="57" value="private-entrance" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">게스트 전용 출입문</span>
													</div>
												</div></label>
										</div>
										<div style="clear: both"></div>
									</div>
									<h4 class="space-top-8 space-3 text-gray">
										<span>안전 시설</span>
									</h4>
									<div style="margin-top: 24px; margin-bottom: 24px">
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="35"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="35" value="smoke_detector" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">연기 감지기</span><span class="_wzwtzh8">잘
															작동하는 연기 감지기를 모든 방에 구비해야 하는지 현지 법규를 확인해보세요.</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="36"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="36" value="carbon_monoxide_detector" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">일산화탄소 감지기</span><span
															class="_wzwtzh8">일산화탄소 감지기 구비 요건에 대해 현지 법규를
															확인해보세요. 지역에 따라 정상적으로 작동하는 일산화탄소 감지기를 모든 방에 설치해야 할 수 있습니다.</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="37"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
														class="checkmark" id="37" value="first_aid_kit" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">구급상자</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="38"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="38" value="safety_card" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">안전 카드</span><span class="_wzwtzh8">긴급
															상황 시에 사용할 수 있는 정보를 적은 카드</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="39"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="39" value="fire_extinguisher" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">소화기</span>
													</div>
												</div></label>
										</div>
										<div style="margin-bottom: 24px">
											<label class="4m7syz" for="42"><div class="_gyif22">
													<div class="_73ihd0r">
														<span class="_foa2bi"><input type="checkbox"
													class="checkmark" id="42" value="lock_on_bedroom_door" /></span>
													</div>
													<div class="zkrkb6">
														<span class="f7dcovm">침실문 잠금장치</span><span
															class="_wzwtzh8">개인실은 안전과 사생활 보호를 위해 방문을 잠글 수 있습니다</span>
													</div>
												</div></label>
										</div>
										<div style="clear: both"></div>
									</div>
								</div>
								<div class="main-panel__actions-wrapper">
									<div class="centered-content clearfix">
										<div class="bg-white main-panel-outer-half clearfix shadowed">
											<div
												class="no-margin-padding__sm main-panel-padding main-panel-progress  main-panel-inner-half ">
												<div class="divider hide-sm"></div>
												<div class="row no-margin-padding__sm">
													<div
														class="main-panel__actions col-sm-12 no-margin-padding__sm">
														<div class="_1dcqn1vg"
															style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
															<a href="/fore.host"
																class="buttonevn" aria-busy="false"><span
																class="_cgr7tc7"><span>뒤로</span></span></a>
															<div class="_107ja4p">
																<a href="/become-a-host/27615599" class="buttonevn"
																	aria-busy="false" data-veloute="lys-next-button"><span
																	class="_cgr7tc7"><span>완료</span></span></a>
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
														<span>필수품목을 제공하면 게스트가 내 집처럼 편안하게 머물 수 있습니다.</span>
													</p>
													<p>
														<span>아침식사를 제공하거나 커피와 차만 제공하는 호스트도 있습니다. 필수 사항은
															아니지만, 이런 서비스를 제공하면 게스트가 보다 환영받는다고 느낄 수 있습니다.</span>
													</p>
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

	<script type="text/javascript">
			
	</script>

</body>
</html>