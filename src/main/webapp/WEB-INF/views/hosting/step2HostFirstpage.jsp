<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/hosting.css">
<title>Insert title here</title>
<style type="text/css">
.input-file {
	width: 0.1px;
	height: 0.1px;
	opacity: 0;
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
	overflow: hidden;
	position: absolute;
	z-index: -1;
}

.label-no-margin-padding {
	display: block;
}

.photos__empty-frame {
	border: 2px dashed #bbb;
	border-radius: 6px;
	height: 225px;
	cursor: pointer;
}

.va-container-h {
	margin-left: 10%;
	width: 75%;
}

.main-panel__actions {
	margin-top: 10px;
}
.list-content {
	display: table;
	table-layout: fixed;
	width: 100%;
	background: #fff;
	border: 1px solid #aaa;
	margin: 5px 0;
}
.list-content span {
	display: table-cell;
	vertical-align: middle;
	padding: 5px 10px;
}
.list-content span.preview {
	width: 55px;
}
.list-content span.type {
	text-align: center;
	width: 60px;
}
.list-content span.name {
 	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}
.list-content span.options {
	width: 30px;
}
.list-content span.options .imagedelete {
	cursor: pointer;
	display: block;
	float: right;
	width: 16px;
	height: 16px;
	padding: 0;
	background-image: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAQCAYAAAB3AH1ZAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyNJREFUeNrEVGtIU2EYfs7Ojh6nc+Jt5WWmk7w3cKnlDamQLqJIvyv6UQT9CIkiNPwTiIYQQqaFRf2MCCmQCgwKzB+GJEYpXipNzUuunO54tp1L36YbZ8tVrKAX3vN9H9/7vN9z3hslyzL+p6g9m9aecerl4GQzraKyE2Ii0sNYJpahVVpBkiiOd1ptnGN53mKb5BzCu9w0fX3Hmb2C0lGweC+BZ/0jT29dqK5kGGCFByyrPJa+r2NxxQabzRHLO5yxpkxVRkq89nBn98AeAilXEggWr/I4yEuNM+k0wLodsNsF8EQ5uxPcuhM2sjoEERKxi4tiYUrX5/iHMli8NwITM8sjY8vQR6pF8qGRHBUOIVEDSYyGKFNYIw7nljlMza9geGJh2J9AsHgvgeI8Q8W8VUTn23WoJCcoyQ7JwcO6asWKdQ2zixbMflnAqSP52Je/o8KfQLB4ldJJaQoNcxKNjG0sEnU0QtQUzEY9puaWUFVmBs9ZUVNuCljRgfAz81+9+KMVpq27wCUiSZJAlKXJnqERFqJGlDYUrlZl2VBiQUEguQwk/vjjRbEoMYaj/mA1Xk/bkR99CMXJKuhkw9YEiH+3yG6V3Q975sQfzQsFvjJDg93JLCa7mgFJQsHpehQYMjHW1oCI+ATAcPYAMev1JfC3M0mBdz3+4fZVfLzTsvGn4VoItlVM37/hPnNTE+ezLl3zI/APxZUOSs14z+Ptjb7BomkpYAqCFgV+cIZH4Yk6MFodRlsvuihtlj2DgptPoMsx9/9MwJ3rDd3yr0Txt1ny4DXMBhu7ZdE3N+RS4Fa9dH3aMIxELEajQnwEBae4UdESWV0TzUmqPz01FbqwwFnz4BN1FHK3h5KCu7xZA5KCgIA352pdd1d8CAx9+ma83j2MmrxQlKaxyDeEo8gYiaSYEHTUVaGYtNODxlq8GHiP3qHPO/0fV+KLUljYBRmaZKP3vrDrOcztPZsnGvzCTJM7DMr2Otb2qjgnSfvqVyHuH10qe9ywv2+rOyW+JEuPsmw9Zh/dg0zaMKn2JPpGFhDysGWA5Sy9u5ruNrjsfggwANaIwN5Hg9AjAAAAAElFTkSuQmCC');
	background-position: 0px 0px;
}
.list-content span.options .imagedelete:hover {
	background-position: -16px 0px;
}
#output .removed-item {
    animation: removed-item-animation .6s cubic-bezier(.55,-0.04,.91,.94) forwards;
}

#output .new-item {
	opacity: 0;
    animation: openspace .6s ease forwards, new-item-animation .3s .3s cubic-bezier(0,.8,.32,1.07) forwards;
}


@keyframes removed-item-animation {
    from {opacity: 1;transform: scale(1);}
    to {opacity: 0;transform: scale(0);}
}
@keyframes new-item-animation {
    from {opacity: 0;transform: scale(0);}
    to {opacity: 1;transform: scale(1);}
}
#output ul li {
	list-style: none;
	margin: 0;
	padding: 0;
	
}
</style>
</head>
<body>
	<div data-hypernova-key="list_your_spacebundlejs"
		data-hypernova-id="26095f10-f2ae-42db-a659-dd67300d7df2">
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
						<div class="full-backdrop"></div>
						<div class="list-your-space__content">
							<div class="centered-content clearfix">
								<div
									class="main-panel-container no-padding-h bg-white col-sm-6	 no-padding-h col-md-offset-3">
									<div
										class="main-panel main-panel-padding main-panel-progress col-sm-12 main-panel-inner-full space-sm-8">
										<div class="_1mbllh6j">
											<div class="_492uxj4">게스트에게 숙소의 모습을 보여 주세요</div>
										</div>
										<div class="row extend-margin-h photo-card__content space-4">
											<div class="help-panel__floating-container">
												<div
													class="help-panel--expanded help-panel__floating-panel bg-white help-panel__floating-panel--downward help-panel__floating-panel--leftward"
													role="tooltip">
													<div class="help-panel__bulb-img"></div>
													<div
														class="help-panel__floating-panel-body help-panel__text">
														<div class="lys-carousel">
															<div class="lys-carousel__height-container">
																<span><div>
																		<div>
																			<div class="photo-image__help-tip-1 img-center"></div>
																			<p class="space-top-2">
																				<span>사진은 최소 8장 이상 업로드한 분들이 많습니다. 지금은 우선 한 장만
																					업로드하고 나중에 돌아와서 사진을 추가하셔도 됩니다. 게스트가 사용할 수 있는 공간 전부를
																					사진으로 찍어서 올리면 게스트가 회원님의 숙소에서 지내면 어떨지 미리 느껴볼 수 있습니다.</span>
																			</p>
																		</div>
																	</div></span>
															</div>
															<div class="flex-container-h space-top-4">
																<div class="flex-item">
																	<button aria-label="뒤로"
																		class="lys-carousel__button lys-carousel__button--prev btn btn-large"
																		disabled="disabled">
																		<i class="icon icon-arrow-large-left"></i>
																	</button>
																</div>
																<div
																	class="flex-item flex-item-fill-parent text-center help-panel__carousel-progress"
																	tabindex="0" role="text" aria-label="항목 3개 중 1개">
																	<i class="dot help-panel__carousel-dot dot-gray"></i><i
																		class="dot help-panel__carousel-dot dot-light-gray"></i><i
																		class="dot help-panel__carousel-dot dot-light-gray"></i>
																</div>
																<div class="flex-item">
																	<button aria-label="다음"
																		class="lys-carousel__button lys-carousel__button--next btn btn-large">
																		<i class="icon icon-arrow-large-right"></i>
																	</button>
																</div>
															</div>
														</div>
													</div>
													<div aria-label="닫기" class="help-panel__close-icon"
														role="button" tabindex="0"></div>
												</div>
											</div>
											<div id="listing-photo-editor">
												<div class="row no-margin-h" role="group">
													<div class="col-sm-12 ">
														<form>
															<input type="file"  class="input-file"  id="photo-image"
																name="image"
																accept="image/jpg, image/jpeg, image/png, image/gif"
																multiple="multiple" velouteId="lys_photo_uploader"
																tabindex="-1" /> <label
																class="col label-no-margin-padding" for="photo-image"
																tabindex="0" role="group">
																<div
																	class="panel-body photos__empty-frame photos__empty-drag-highlight va-container va-container-h va-container-v"
																	id="drugimg">
																	<div
																		class="va-middle text-center text-gray img__upload-photos-ghosts">
																		<div class="col col-center">
																			<div class="btn btn-primary btn-jumbo" role="button">
																				<div class="_36rlri" style="margin-right: 16px">
																				</div>
																				<span>사진 업로드</span>
																			</div>
																			<div class="row space-top-2" role="button">
																				<div class="h4 text-normal">
																					<span>또는 사진을 드래그하세요</span>
																				</div>
																			</div>
																		</div>
																	</div>

																</div>
															</label>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
										<div style="float: left;">
										<form id="bigpicture" action="gostep2second.host" method="post">								
											<div id="output" class="va-container-h"><ul>
											</ul></div>							
										</form>
										</div>
									<div class="main-panel__actions-wrapper">
										<div class="centered-content clearfix">
											<div class="bg-white col-sm-12 no-padding-h shadowed">
												<div
													class="no-margin-padding__sm main-panel-padding main-panel-progress col-sm-12 main-panel-inner-full space-sm-8">
													<div class="divider hide-sm"></div>
													<div class="row no-margin-padding__sm">
														<div
															class="main-panel__actions col-sm-12 no-margin-padding__sm">
															<div class="_1dcqn1vg"
																style="margin-top: 16px; margin-bottom: 16px; margin-left: 16px; margin-right: 16px">
																<a href="???" class="_5rte3y6"
																	aria-busy="false"><span class="_cgr7tc7"><span>뒤로</span></span></a>
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
								<div class="col-sm-3">
								</div>
							</div>
						</div>
						<div></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden">
	<script type="text/javascript">
		$('#drugimg').on('dragover', function(e) {
			e.preventDefault();
			e.stopPropagation();
		});
		$('#drugimg').on('dragenter', function(e) {
			e.preventDefault();
			e.stopPropagation();
		});

		$('#drugimg').on('drop', function(e) {
			if (e.originalEvent.dataTransfer) {
				if (e.originalEvent.dataTransfer.files.length) {
					e.preventDefault();
					e.stopPropagation();
					/*UPLOAD FILES HERE*/
					upload(e.originalEvent.dataTransfer.files);

				}
			}
		});

		function upload(files) {
			var imgcount = 0;
			var firstimg = $("#photo-image").val();
			var $el = $('#photo-image');
			var inputdou = $("#drupimg");
			alert(files.length);
			for (i = 0; i < files.length; i++) {
				console.log(files[i]);
				//alert(files[i].name)
				var file = files[i];
				var imageType = /image.*/;
				if (!file.type.match(imageType)) {
					continue;
				}
				//alert(files[i].name);
				var firstimg = files[i].name;
				var reader = new FileReader(), image = new Image();
				//reader.readAsDataURL( files );
/* 				 $("#uploaded-files").append(
                        $('<tr/>')
                        .append($('<td/>').text(files[i].name))
                        .append($('<td/>').text(files[i].size))
                        .append($('<td/>').text(files[i].type))
                        ) */
				/* $("#drugimg").attr(
						"<img style=\"height: 100%; width: 100%;\" alt src="
								+ files[0] + ">"); */
				//$("#photo-image").attr("files",files[0].dataTransfer.files);

				//$("#photo-image")
				//END test if file.type === image
				
			} // END test if file.type === image
		}
		//alert('Upload '+files.length+' File(s).');
		
		(function($) {
	$.fn.imageUpload = function(options) {
		var settings = $.extend(
			{
				outputHandler: function() {}, // Callback function for processing output. Parameter is image source in base64 format
				onBeforeUpload: function() {}, // Callback function called before upload processing
				onAfterUpload: function() {}, // Callback function called after upload processing
				errorMsg: "Error: The file you just uploaded is not an image!",
				trigger: "click", // possible values: "click", "dblclick" or null
				errorContainer: null, // Container for error message
				enableCliboardCapture: true, // Enable clipboard capturing
				enableDebug: true // enable debugging output in console
			},
			options
		);

		var $this = $(this),
			dragging = false,
			pasting = false;

		var $uploadField = $(
			'<input type="file" style="display:none" name="fileselect[]" multiple="multiple" accept="image/*, .gif, .png, .jpg" />'
		);

		// Create capture area for Mozilla & IE
		var $contentEditable = $(
			'<div contenteditable="true" style="position:absolute;overflow:hidden;top:-20px;width:0;height:0;" />'
		);

		// Get file type from image data uri.
		var getFileExtension = function(imgSrc) {
			return imgSrc.replace(/data:image\/([^;]*).*/gi, ".$1");
		};

		// Get mime type from data uri.
		var getFileType = function(imgSrc) {
			return imgSrc.replace(/data:([^;]*).*/gi, "$1");
		};

		// Error display
		var errorHandler = function(error) {
			if (error && settings.errorContainer !== null) {
				settings.errorContainer.html(settings.errorMsg).fadeIn(1000, function() {
					$(this)
						.delay(5000)
						.fadeOut(1000);
				});
			}
		};

		var readFile = function(file) {
			var reader = new FileReader();
			$(reader).on("load", file, function(e) {
				var returnValue = {
					name: e.data.name
						? e.data.name
						: "CB_Image_" + +new Date() + getFileExtension(e.target.result),
					type: e.data.type ? e.data.type : getFileType(e.target.result),
					size: e.data.size ? e.data.size : "n/a",
					imgSrc: e.target.result
				};
				// Execute outputHandler callback function if available
				$.isFunction(settings.outputHandler) &&
					settings.outputHandler.call(this, returnValue);
				// Execute onAfterUpload callback function if available
				$.isFunction(settings.onAfterUpload) && settings.onAfterUpload.call(this);
			});
			reader.readAsDataURL(file);
		};

		// Upload processing
		var processUpload = function(files, originalEvent) {
			var error = false,
				imageFound = false,
				count = 0;
			if (files !== null) {
				for (var i = 0; i < files.length; i++) {
					if (files[i].type.indexOf("image") == -1) {
						//not image
						error = true;
						continue;
					}
					if (count == settings.maxUpload) break; // Max reached
					count++;
					imageFound = true;

					// Webkit clipboard data needs data converted through getAsFile()
					var blob =
						typeof originalEvent !== "undefined" && !originalEvent.msConvertURL
							? files[i].getAsFile()
							: files[i];

					readFile(blob);
				}
				if (!imageFound) {
					// Execute onAfterUpload callback function if available
					$.isFunction(settings.onAfterUpload) && settings.onAfterUpload.call(this);
				}
				errorHandler(error);
			}
			if(files.length>0){
				$("#nextpg").attr("disabled",false);
			}
		};

		// Alternate clipboard capturing function for Mozilla
		var mozillaCaptureFunc = function() {
			pasting = false;
			var img = $contentEditable.find("img"),
				error = true;
			if (img.length) {
				error = false;
				var returnValue = {
					name: "CB_Image_" + +new Date() + getFileExtension(img[0].src),
					type: getFileType(img[0].src),
					size: "n/a",
					imgSrc: img[0].src
				};
				// Execute outputHandler callback function if available
				$.isFunction(settings.outputHandler) &&
					settings.outputHandler.call(this, returnValue);
			}
			// Remove "input" event handler and clear capture area
			$contentEditable.off("input", mozillaCaptureFunc).text("");
			errorHandler(error);
			// Execute onAfterUpload callback function if available
			$.isFunction(settings.onAfterUpload) && settings.onAfterUpload.call(this);
		};

		// Paste handler
		var pasteHandlerFunc = function(e) {
			// Remove existing Mozilla "input" event handler
			$contentEditable.off("input", mozillaCaptureFunc);

			// Execute onBeforeUpload callback function if available
			$.isFunction(settings.onBeforeUpload) && settings.onBeforeUpload.call(this);

			var clipboardData = e.originalEvent.clipboardData || window.clipboardData;
			if (clipboardData === false || clipboardData === undefined) {
				// empty
				// Execute onAfterUpload callback function if available
				$.isFunction(settings.onAfterUpload) && settings.onAfterUpload.call(this);
				pasting = false;
				return false;
			}

			var files = clipboardData.items || clipboardData.files;

			// No Items or files, so either nothing in clipboard or Mozilla browser
			if (files.length === 0) {
				// Enable "input" event handler for Mozilla, and set focus
				$contentEditable.on("input", mozillaCaptureFunc).focus();
			} else {
				pasting = false;
				processUpload(files, e.originalEvent);
				e.preventDefault();
			}
		};

		// Alternate triggering metod for clipboard capturing, required for IE & Mozilla
		var keydownHandlerFunc = function(e) {
			if (!pasting && (e.ctrlKey || e.metaKey) && e.which == 86) {
				pasting = true;
				$contentEditable.focus();
			}
		};

		// Alternative to css :hover, adding class "dropzonehover" to body tag.
		var mouseenterHandlerFunc = function(e) {
			e.preventDefault();
			if (!$("#asaresult").hasClass("dragging")) $("body").addClass("dropzonehover");
		};
		var mouseleaveHandlerFunc = function(e) {
			e.preventDefault();
			$("#asaresult").removeClass("dropzonehover");
		};

		// Submit handler to trigger hidden 'input type="file"' upload field
		var submitFunc = function(e) {
			e.preventDefault();
			$uploadField.trigger("click");
		};
		// File upload handler
		var uploadFunc = function(e) {
			e.preventDefault();
			processUpload(e.target.files);
		};
		// "drop" handler
		var dropHandlerFunc = function(e) {
			e.preventDefault();
			$("#asaresult").removeClass("dragging dragover");
			dragging = false;
			processUpload(e.originalEvent.dataTransfer.files);
		};
		// General handler for preventing propragation and default action
		var preventHandlerFunc = function(e) {
			e.preventDefault();
			e.stopPropagation();
		};
		// Dragover handler for preventing propragation and default action
		var preventDragoverHandlerFunc = function(e) {
			e.preventDefault();
			e.stopPropagation();
			e.originalEvent.dataTransfer.dropEffect = "none";
			try {
				// IE won't allow setting of effectAllowed
				e.originalEvent.dataTransfer.effectAllowed = "none";
			} catch (err) {}
		};
		// "dragover" handler
		var dragoverHandlerFunc = function(e) {
			e.preventDefault();
			e.stopPropagation();
			e.originalEvent.dataTransfer.dropEffect = "copy";
			try {
				// IE won't allow setting of effectAllowed
				e.originalEvent.dataTransfer.effectAllowed = "copyMove";
			} catch (err) {}
		};
		// "dragenter" handler, adding class "dragover" to body tag.
		var dragenterHandlerFunc = function(e) {
			e.preventDefault();
			$("#asaresult").addClass("dragover");
		};
		// "dragleave" handler, removing class "dragover" from body tag.
		var dragleaveHandlerFunc = function(e) {
			e.preventDefault();
			$("#asaresult").removeClass("dragover");
		};

		// Pseudo "dragstart" handler, adding class "dragging" to body tag.
		var dragstartHandlerFunc = function(e) {
			e.preventDefault();
			e.stopPropagation();
			if (!$("#asaresult").hasClass("dragging") && !dragging) {
				$("#asaresult").addClass("dragging");
				dragging = true;
			}
		};
		// Pseudo "dragend" handler, removing class "dragging" from body tag.
		var dragendHandlerFunc = function(e) {
			e.preventDefault();
			e.stopPropagation();
			if ($("#asaresult").hasClass("dragging") && dragging) {
				$("#asaresult").removeClass("dragging");
				dragging = false;
			}
		};

		// Enable clipboard capturing
		if (settings.enableCliboardCapture) {
			$contentEditable.appendTo("body").focus();
			$(window).on({
				keydown: keydownHandlerFunc, // IE & Mozilla
				paste: pasteHandlerFunc
			});
		}

		// Enable file requester upload
		if (settings.trigger !== null) {
			$uploadField
				.on("change", uploadFunc)
				.appendTo("body")
				.blur();
			$this.on(settings.trigger, submitFunc);
		}
		// Enable drag and drop upload
		$this.on({
			dragenter: dragenterHandlerFunc,
			dragleave: dragleaveHandlerFunc,
			dragover: dragoverHandlerFunc,
			drop: dropHandlerFunc,
			mouseenter: mouseenterHandlerFunc,
			mouseleave: mouseleaveHandlerFunc
		});
		// Prevent dropping outside droparea
		// Since dragstart and dragend is not triggered when dragging local files,
		// the "html" tag is used as fake "triggers" (Using "body" tag has problems)
		$("html").on({
			dragbetterenter: dragstartHandlerFunc,
			dragbetterleave: dragendHandlerFunc,
			dragover: preventDragoverHandlerFunc,
			drag: preventHandlerFunc,
			drop: preventHandlerFunc
		});
		// chainable
		
/* 		 var listpicture = $("#output li ").length;
		  
		  if(listpicture <= 1){
			  $("#nextpg").attr("disabled",true);
			  console.log("읎어요");
		  }else{
			  $("#nextpg").attr("disabled",false);
			  console.log("!!");
		  } */
		  
		return this;
	};
})(jQuery);

jQuery(document).ready(function($) {
	// Shared callback handler for processing output
	var outputHandlerFunc = function(imgObj) {
		var sizeInKB = function(bytes) {
			return typeof bytes == "number" ? (bytes / 1024).toFixed(2) + "Kb" : bytes;
		};

		var getThumbnail = function(original, maxWidth, maxHeight, upscale) {
			var canvas = document.createElement("canvas"),
				width,
				height;
			if (
				original.width < maxWidth &&
				original.height < maxHeight &&
				upscale == undefined
			) {
				width = original.width;
				height = original.height;
			} else {
				width = maxWidth;
				height = parseInt(original.height * (maxWidth / original.width));
				if (height > maxHeight) {
					height = maxHeight;
					width = parseInt(original.width * (maxHeight / original.height));
				}
			}
			canvas.width = width;
			canvas.height = height;
			canvas.getContext("2d").drawImage(original, 0, 0, width, height);
			$(canvas).attr(
				"title",
				"Original size: " + original.width + "x" + original.height
			);
			return canvas;
		};

		$(new Image())
			.on("load", function(e) {
				console.log("imgobj", e);
				var $wrapper = $(
					'<li class="new-item"><div class="list-content"><span class="preview"></span><span class="type">' +
						imgObj.type +
						"<br>" +
						(e.target.width + "&times;" + e.target.height) +
						"<br>" +
						sizeInKB(imgObj.size) +
						'</span><span class="name">' +
						 imgObj.name + '<input type="hidden" name="home_main_pic" value="'+imgObj.name+'">'+
						'</span><span class="options"><span class="imagedelete" title="Remove image"></span></span></div></li>'
				).appendTo("#output ul");
				$(".imagedelete", $wrapper).one("click", function(e) {
					$wrapper.toggleClass("new-item").addClass("removed-item");
					$wrapper.one(
						"animationend webkitAnimationEnd MSAnimationEnd oAnimationEnd",
						function(e) {
							$wrapper.remove();
						}
					);
					
					  var listpicture = $("#output li ").length;
					  
					  if(listpicture <= 1){
						  $("#nextpg").attr("disabled",true);
						  console.log("읎어요");
					  }else{
						  $("#nextpg").attr("disabled",false);
						  console.log("!!");
					  } 
					
				});

				var thumb = getThumbnail(e.target, 50, 50);
				var $link = $('<a rel="fancybox">')
					.attr({
						target: "_blank",
						href: imgObj.imgSrc
					})
					.append(thumb)
					.appendTo($(".preview", $wrapper));
			})
			.attr("src", imgObj.imgSrc);
	};

	$("a[rel=fancybox]").fancybox();

	var fileReaderAvailable = typeof FileReader !== "undefined";
	var clipBoardAvailable = window.clipboardData !== false;
	var pasteAvailable = Boolean(
		clipBoardAvailable & fileReaderAvailable & !eval("/*@cc_on !@*/false")
	);

	if (fileReaderAvailable) {
		// Enable drop area upload
		$("#drugimg").imageUpload({
			errorContainer: $("span", "#errormessages"),
			trigger: "click",
			enableCliboardCapture: pasteAvailable,
			onBeforeUpload: function() {
				
				console.log("start", Date.now());
			},
			onAfterUpload: function() {
				
				console.log("end", Date.now());
			},
			outputHandler: outputHandlerFunc
		});

		$("#drugimg")
			.prev("#textbox-wrapper")
			.find("#textbox")
			.append(
				'<p class="large">Drag and Drop<br>Image File here</p><p class="small">Doubleclick<br>for file requester</p>'
			);
	} else {
		$("body").addClass("nofilereader");
	}

	if (!pasteAvailable) {
		$("body").addClass("nopaste");
	}
});

/* 
 var checklist = function() {
	
  var listpicture = $("#output").val();
  
  if(listpicture == 0){
	  console.log("읎어요");
  }else{
	  console.log("씨부럴");
  }
  
}
 */

$("#nextpg").click(function() {
	//$(location).attr("href","step2second.host");
	$("#bigpicture").submit();
});
 
	</script>
</body>
</html>