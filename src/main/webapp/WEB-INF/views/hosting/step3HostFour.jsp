<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.12.4.js"></script>
  <script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="resources/hosting.css">

<style>
#datepicker{
	width: 500px;
	height: 325px;
	font-size: 1.8em;
	text-align: center;
	margin: 0px auto;
	
}
.datepick{
	width: 595px;
	height: 525px;
}
.datepick-nav{
	width: 600px;
}

.datepick-month{
	width: 600px;
}
.main-panel__actions-wrapper{

}
._1dcqn1vg{

	margin-top: 300px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px;
}
.motherfucker{
margin-top: 50px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="c0c21335-cc24-414e-a2eb-10aa2ce89777">
		<div dir="ltr" data-reactroot="">
			<div>
				<div>
					<div class="bg-white list-your-space__progress">
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
						<div class="full-backdrop"></div>
						<div class="list-your-space__content">
							<div class="centered-content clearfix">
								<div
									class="main-panel-container no-padding-h bg-white col-sm-12 no-padding-h">
									<form action="gostep3five.host" id="homeblcok" method="post">
									<!-- 달력 -->
									<div id="datepicker"></div>
									<input type="hidden" name="home_blocked_date" value="" id="pickdate" style="width: 500px">
									</form>
									<div cl	ass="main-panel__actions-wrapper">
										
											
												
													<div class="divider hide-sm"></div>
													<div></div>
													
														
															<div class=" motherfucker"
																style="position: relative; margin-top: 100px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px; z-index: -9; top: 200px;">
																<a href=" "
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
	var today = new Date();
	var dates = new Array();

	function addDate(date) {
	    if (jQuery.inArray(date, dates) < 0) dates.push(date);
	}

	function removeDate(index) {
	    dates.splice(index, 1);
	}

	function printArray() {
	    var printArr = new String;
	    dates.forEach(function (val) {
	        printArr += val+",";
	    });
	    $('#pickdate').val(printArr);
	}
	// Adds a date if we don't have it yet, else remove it
	function addOrRemoveDate(date) {
	    var index = jQuery.inArray(date, dates);
	    if (index >= 0) 
	        removeDate(index);
	    else 
	        addDate(date);

	    printArray();
	}

	// Takes a 1-digit number and inserts a zero before it
	function padNumber(number) {
	    var ret = new String(number);
	    if (ret.length == 1) ret = "0" + ret;
	    return ret;
	}
	var dateToday = new Date();
	$("#datepicker").datepicker({
		
		minDate: 0,
	    onSelect: function (dateText, inst) {
	        addOrRemoveDate(dateText);
	    },
	    beforeShowDay: function (date) {
	        var year = date.getFullYear();
	        // months and days are inserted into the array in the form, e.g "01/01/2009", but here the format is "1/1/2009"
	        var month = padNumber(date.getMonth() + 1);
	        var day = padNumber(date.getDate());
	        // This depends on the datepicker's date format
	        var dateString =  year + "/" + month + "/" +  day;

	        var gotDate = jQuery.inArray(dateString, dates);
	        if (gotDate >= 0) {
	            // Enable date so it can be deselected. Set style to be highlighted
	            return [true, "ui-state-highlight"];
	        }
	        // Dates not in the array are left enabled, but with no extra style
	        return [true, ""];
	    }
	});
	
		$("#nextpg").click(function() {
			//$(location).attr("href","step2third.host");
			$("#homeblcok").submit();
		});
	 
	</script>
	
</body>
</html>