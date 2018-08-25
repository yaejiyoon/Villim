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
<title>Insert title here</title>
<style type="text/css">

/* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
#map {
	height: 50%;
	width: 50%
}
/* Optional: Makes the sample page fill the window. */
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#description {
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
}

#infowindow-content .title {
	font-weight: bold;
}

#infowindow-content {
	display: none;
}

#map #infowindow-content {
	display: inline;
}

.pac-card {
	margin: 10px 10px 0 0;
	border-radius: 2px 0 0 2px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	outline: none;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
	background-color: #fff;
	font-family: Roboto;
}

#pac-container {
	padding-bottom: 12px;
	margin-right: 12px;
}

.pac-controls {
	display: inline-block;
	padding: 5px 11px;
}

.pac-controls label {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
}

#pac-input {
	background-color: #fff;
	font-family: Roboto;
	font-size: 15px;
	font-weight: 300;
	margin-left: 12px;
	padding: 0 11px 0 13px;
	text-overflow: ellipsis;
	width: 400px;
}

#pac-input:focus {
	border-color: #4d90fe;
}

#title {
	color: #fff;
	background-color: #4d90fe;
	font-size: 25px;
	font-weight: 500;
	padding: 6px 12px;
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
</style>
</head>
<body>
	<div id="lys-redesign-div col-md-7 ">
		<div data-hypernova-key="list_your_spacebundlejs"
			data-hypernova-id="5a448c3f-0c91-45dc-8ea2-aeed82b9889b">
			<div data-reactroot="">
				<div class="airbnb-header new">
					<div class="comp comp__step-bar-wrapper no-hover pull-left hide-sm">
						<span class="hdr-btn"><span class="hide-sm h5 text-normal"
							tabindex="-1"><span>1단계:</span> </span><span
							class="h5 text-normal">기본 사항을 입력하세요</span></span>
					</div>
				</div>
				<div class="progress-bar__container">
								<div class="progress-section progress-bar__placeholder"></div>
							</div>
							
				<br><label>국가/지역</label> <input type="text" id="contry"
					placeholder="ex)대한민국" name="contry"> <br> <label>시/군</label>
				<input type="text" id="town" placeholder="시/도/구" name="town">
				<br> <label>시/도</label> <input type="text" id="city"
					placeholder="시/군/구" name="city"> <br> <label>상세주소1(선택사항)</label>
				<input type="text" id="address1" placeholder="ex)이례빌딩 구관"
					name="address1"> <br> <label>상세주소2(선택사항)</label> <input
					type="text" id="address2" placeholder="ex) 19층 102호"
					name="address2"> <br> <label>위도</label> <input
					type="text" id="lat" placeholder="위도" name="lat"
					disabled="disabled"> <br> <label>경도</label> <input
					type="text" id="lng" placeholder="경도" name="lng"
					disabled="disabled"> <br>

				<div class="pac-card" id="pac-card">
					<div>
						<div id="title"></div>
					</div>
					<div id="pac-container">
						<input id="pac-input" type="text" placeholder="Enter a location">
					</div>
				</div>


				<div class="main-panel__actions-wrapper">
					<div class="centered-content clearfix">
						<div class="bg-white main-panel-outer-half clearfix shadowed">
							<div class="no-margin-padding__sm   main-panel-inner-half ">
								<div class="divider hide-sm"></div>
								<div class="row no-margin-padding__sm">
									<div class="main-panel__actions col-sm-12 ">
										<div class="_1dcqn1vg"
											style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
											<a href="/third.host" class="_5rte3y6" aria-busy="false"><span
												class="_cgr7tc7"><span>뒤로</span></span></a>
											   	
											    
												<button type="button" id="nextpg" disabled="disabled" 
													class="_5rte3y6" aria-busy="false">
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
		</div>
	</div>


	<div id="map"></div>
	<div id="infowindow-content">
		<img src="" width="16" height="16" id="place-icon"> <span
			id="place-name" class="title"></span><br> <span
			id="place-address"></span>
	</div>

	<script type="text/javascript">
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				mapTypeControl : false,

				center : {
					lat : -33.8688,
					lng : 151.2195
				},
				zoom : 13
			});
			var card = document.getElementById('pac-card');
			var input = document.getElementById('pac-input');

			map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);
			var autocomplete = new google.maps.places.Autocomplete(input);

			// Bind the map's bounds (viewport) property to the autocomplete object,
			// so that the autocomplete requests use the current map bounds for the
			// bounds option in the request.
			autocomplete.bindTo('bounds', map);

			// Set the data fields to return when the user selects a place.
			autocomplete.setFields([ 'address_components', 'geometry', 'icon',
					'name' ]);

			var infowindow = new google.maps.InfoWindow();
			var infowindowContent = document
					.getElementById('infowindow-content');
			infowindow.setContent(infowindowContent);
			var marker = new google.maps.Marker({
				map : map,
				draggable : true,
				anchorPoint : new google.maps.Point(0, -29)
			});

			autocomplete
					.addListener(
							'place_changed',
							function() {
								infowindow.close();
								marker.setVisible(false);
								var place = autocomplete.getPlace();
								if (!place.geometry) {
									// User entered the name of a Place that was not suggested and
									// pressed the Enter key, or the Place Details request failed.
									window
											.alert("No details available for input: '"
													+ place.name + "'");
									return;
								}

								// If the place has a geometry, then present it on a map.
								if (place.geometry.viewport) {
									map.fitBounds(place.geometry.viewport);
								} else {
									map.setCenter(place.geometry.location);
									map.setZoom(17); // Why 17? Because it looks good.
								}
								marker.setPosition(place.geometry.location);
								marker.setVisible(true);
								marker.addListener('drag', handleEvent);

								var address = '';
								if (place.address_components) {
									address = [
											(place.address_components[0]
													&& place.address_components[0].long_name || ''),
											(place.address_components[1]
													&& place.address_components[1].short_name || ''),
											(place.address_components[2]
													&& place.address_components[2].short_name || '') ]
											.join(' ');
								}

								/* 								 $("#contry").val(
								 place.address_components[4].long_name);  널값 발생시 값이 변경안됨  */
								$("#city")
										.val(
												place.address_components[3].short_name
														+ " "
														+ place.address_components[2].short_name);
								$("#town")
										.val(
												place.address_components[1].short_name
														+ " "
														+ place.address_components[0].short_name);
								$("#lat").val(place.geometry.location.lat());
								$("#lng").val(place.geometry.location.lng());

								infowindowContent.children['place-icon'].src = place.icon;
								infowindowContent.children['place-name'].textContent = place.name;
								infowindowContent.children['place-address'].textContent = address;
								infowindow.open(map, marker);
							});

			function handleEvent(event) {
				var newlat = event.latLng.lat();
				var newlng = event.latLng.lng();

				$("#lat").val(newlat);
				$("#lng").val(newlng);

			}
		}
		
		
		var value01 = $("#lat").val();
		var value02 = $("#lng").val();
		var value03 = $("#town").val();
		var value04 = $("#city").val();
		
		if(value01 == null && value02 == null && value03 == null && value04 == null){
			$("#nextpg").attr("disabled",true);
		}else{
			console.log(value01);
			console.log(value02);
			console.log(value03);
			console.log(value04);
		}
		
		$("#nextpg").click(function() {
			$(location).attr("href","five.host");
		});
		
		
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1WAKG2uQ4Lijb8nGc1Is-BIvCkQ1Ao9Y&libraries=places&callback=initMap"
		async defer></script>

</body>
</html>