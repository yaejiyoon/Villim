<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/css/hosting/hosting.css">
<link rel="stylesheet" type="text/css" href="resources/css/hosting/rocket.css">
<link rel="stylesheet" type="text/css" href="resources/css/hosting/cals.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style data-aphrodite="data-aphrodite">
._g922zsx {
	border-bottom: 1px solid #EBEBEB !important;
	border-top: 1px solid #EBEBEB !important;
}
</style>
</head>
<body>

	<div id="field-guide-container"></div>

	<div class="flash-container"></div>

	<div data-hypernova-key="manage_cohostbundlejs"
		data-hypernova-id="007117ae-cf39-4101-b4a7-fd4acbe6c6b8">
		<div data-reactroot="">
			<div class="landing-width bg-white row row-condensed">
				<div class="col-md-10 col-lg-7 landing__left-col">
					<div class="landing__left-col-content">
						<div>
							<div class="space-top-5 space-5">
								<h2 class="landing__title-title">숙소가 등록되었습니다!</h2>
								<p class="text-gray space-top-2">모두 완료되었습니다! 숙소 페이지로 이동하기 전에
									다음 사항을 참고하세요.</p>
							</div>
							<div class="_g922zsx">
								<div
									class="row row-condensed space-top-5 landing__step-content space-5">
									<div class="col-md-8">
										<h3
											class="space-2 space-top-3 landing__step-content-title landing__subtitle-width">숙소
											호스팅에 도움이 필요하신가요?</h3>
										<div class="space-5">
											<p class="text-gray">친구, 이웃 또는 청소 도우미를 공동 호스트로 추가해 예약 관리와
												게스트 맞이에 도움을 받을 수 있습니다.</p>
											
										</div>
										<button type="button" class="btn btn-babu" id="home">
											<span class="text-large">홈으로</span>
										</button>
									</div>
									<div class="col-md-4 text-center hide-sm">
										<img alt="Friend" height="100" width="129"
											src="https://a0.muscache.com/airbnb/static/cohosting/friend-8bb3af2d3a16ce627db9f5e48e982ed6.svg" />
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

	$("#home").click(function() {
		$(location).attr("href","/");
	})
	
</script>
</body>
</html>