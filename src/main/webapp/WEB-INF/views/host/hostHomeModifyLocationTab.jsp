<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />


<style>
div {
	box-sizing: border-box;
}

#wrapper {
	border: 1px solid black;
	margin: 30px auto;
	width: 70%;
	overflow: hidden;
	height: auto;
}

#wrapper-sub {
	width: 60%;
	border: 1px solid black;
}

.wrapper-sub-back {
	margin-top: 30px;
	margin-bottom: 50px;
	font-size: 20px;
	width: 100%;
	display: inline-block;
	float: left;
}

.back-wrap {
	width: 3%;
	display: inline-block;
	float: left;
}

.back-img {
	width: 100%;
	height: 100%;
}

.back-link {
	display: inline-block;
	float: left;
}

.wrapper-sub-title {
	font-size: 20px;
	margin-top: 30px;
	margin-bottom: 30px;
}

.separate {
	display: inline-block;
	float: left;
	width: 100%;
	margin-top: 40px;
}

.sido {
	width: 50%;
}

.sigun {
	width: 50%;
}

.btn-group {
	margin-top: 50px;
	margin-bottom: 50px;
}

.btn-group button:first-child {
	margin-right: 30px;
}

.map-wrap {
	border: 1px solid black;
	width: 70%;
}

#map {
	width: 100%;
	height: 350px;
}

.search-wrap {
	margin-top: 50px;
}

.search-wrap-sub {
	width: 100%;
}

#pac-input {
	width: 88%;
	display: inline-block;
	float: left;
}

#submit {
	width: 10%;
	display: inline-block;
	float: left;
}
</style>
<title>위치 수정</title>
<script>
	$(document).ready(function(){
		$('input[type="text"]').keydown(function() {
		    if (event.keyCode === 13) {
		        event.preventDefault();
		    }
		});
	})
	
</script>
</head>
<body>
	<%@ include file="../../resource/include/hostHeader.jsp"%>
	<div id="wrapper">
		<div id="wrapper-sub">
			<div class="wrapper-sub-back">
				<div class="back-wrap">
					<img class="back-img"
						src="<c:url value='/resources/img/back.png'/>">
				</div>
				<div class="back-link">
					<a onclick="history.back()">${hdto.home_name } 수정으로 돌아가기</a>
				</div>
			</div>
			<div class="wrapper-sub-title">
				<b>위치</b>
			</div>
			<div>
				<b>주소</b>
			</div>
			<div>${hdto.home_addr3 }&nbsp;${hdto.home_addr4 },${hdto.home_addr2 },${hdto.home_addr1 },
				${hdto.home_zipcode }</div>

			<div class="collapse-wrap" style="margin-top: 50px;">
				<a class="add-fac-link" data-toggle="collapse"
					href="#collapseExample" aria-expanded="false"
					aria-controls="collapseExample">수정하기</a>
			</div>
			
			
			
			<form id="msubmit" method="post"
				action="hostHomeModifyLocationProc.do">
				<div class="collapse row" id="collapseExample">
					<div class="col-md-12">
						<div class="separate">
							<div class=nation>국가 / 지역</div>
							<div class="input-group-lg">
								<select class="form-control" disabled="disabled">
									<option>한국</option>
								</select>
							</div>
						</div>
						<div class="separate sido">
							<div>시 / 도</div>
							<div class="input-group-lg">
								<input type="text" class="form-control" id="home_addr1"
									name="home_addr1" value="${hdto.home_addr1 }">
							</div>
						</div>
						<div class="separate sigun">
							<div>시 / 군 / 구</div>
							<div class="input-group-lg">
								<input type="text" class="form-control" id="home_addr2"
									name="home_addr2" value="${hdto.home_addr2 }">
							</div>
						</div>
						<div class="separate">
							<div>도로명주소</div>
							<div class="input-group-lg">
								<input id="pac-input" type="text" class="form-control"
									name="home_addr3" value="${hdto.home_addr3 }">
								<button type="button" id="submit" class="btn btn-sm btn-info"
									style="width: 45px; height: 45px;">
									<span class="glyphicon glyphicon-search">
								</button>
							</div>
						</div>
						<div class="separate">
							<div>동호수(선택사항)</div>
							<div class="input-group-lg">
								<input type="text" class="form-control" id="home_addr4"
									name="home_addr4" placeholder="상세주소를 입력해주세요." value="${hdto.home_addr4 }">
							</div>
						</div>
						<div class="separate">
							<div>우편번호</div>
							<div class="input-group-lg">
								<input type="text" id="home_zipcode" name="home_zipcode"
									class="form-control" value="${hdto.home_zipcode }">
							</div>
						</div>
					</div>
				</div>

				<div class="search-wrap">
					<b>위치 확인하기</b>
				</div>
				<div>${hdto.home_addr3 }&nbsp;${hdto.home_addr4 },${hdto.home_addr2 },${hdto.home_addr1 },
					${hdto.home_zipcode }</div>

				<div class="input-group-lg">
					<div id="search-wrap-sub">
						<!-- 						<input id="pac-input" class="form-control" type="text" -->
						<%-- 							placeholder="${hdto.home_addr3 }&nbsp;${hdto.home_addr4 },${hdto.home_addr2 },${hdto.home_addr1 }, --%>
						<%-- 					${hdto.home_zipcode }"> --%>
						<!-- 						<button type="button" id="submit" class="btn btn-sm btn-info" -->
						<!-- 							style="width: 30px; height: 30px;"> -->
						<!-- 							<span class="glyphicon glyphicon-search"></span> -->
						<!-- 						</button> -->
					</div>
				</div>

				<div class="map-wrap">
					<div id="map" style="border: 1px solid black;"></div>
				</div>

				<div class="btn-group">
					<button class="btn btn-info btn-lg">저장</button>
					<button type="button" class="btn btn-info btn-lg"
						onclick="history.back()">취소</button>
				</div>

				<input type="hidden" id="lat" name="home_lat" value=""> 
				<input type="hidden" id="lng" name="home_lng" value="">
				<input type="hidden" name="home_seq" value=${hdto.home_seq }>
			</form>

		</div>
	</div>

	<script>
	  var loc;
      var latlng;
      var val;
      var h_lat = ${lat};
      var h_lng = ${lng};
      var sp_lat;
      var sp_lng;
      var marker;
      var change_addr;
      var change_lat;
      var change_lng;
      
      /* 구글맵 검색 클릭 */
      $('#submit').click(function() {
    	 	
         val = $('#pac-input').val();
         
         if (val == "") {
        	
         } else {
//             mapvalue();
	    	googleaddrtoll();
			googleapisView();
         }
      });
      
      function mapvalue(){
          console.log("in_mapvalue_loc:"+loc);
          console.log("in_mapvalue_loc:"+loc);
//           document.msubmit.loc.value = loc;
//           document.msubmit.latlng.value = latlng;
       } 
      
	<!-- 구글맵 스크립트 -->
		function initMap() {
			var map = new google.maps.Map(document.getElementById('map'), {
				zoom : 16,
				center : {
					lat : h_lat,
					lng : h_lng
				},
				mapTypeId : 'roadmap'
			});

			var input = document.getElementById('pac-input');
			var searchBox = new google.maps.places.SearchBox(input);

			var geocoder = new google.maps.Geocoder();

			document.getElementById('submit').addEventListener('click',
					function() {
						 geocodeAddress(geocoder, map);
					});
			
		}

		function geocodeAddress(geocoder, resultsMap) {
			var address = document.getElementById('pac-input').value;
			var inlatlng
			geocoder.geocode(
							{
								'address' : address
							},
							function(results, status) {
								if (status === 'OK') {
									resultsMap.setCenter(results[0].geometry.location);
									marker = new google.maps.Marker({
										map : resultsMap,
										position : results[0].geometry.location
									});
									loc = address;
									latlng = marker.position;
									inlatlng = marker.position;
									console.log("loc:" + loc);
									console.log("latlng:" + latlng);
									console.log("results:"+results[0]);
																
									
								} else {
									alert('Geocode was not successful for the following reason: '
											+ status);
								}
								
							});			
					}
		
		
		
		
		function googleaddrtoll() {
			var address = document.getElementById('pac-input').value;
			var geocode = "https://maps.googleapis.com/maps/api/geocode/json?address="+address+"&key=AIzaSyAqOC53EXTtReEkmhrJ4iY3zXOAotGVGWA";
			jQuery.ajax({
		        url: geocode,
		        type: 'POST',
		           success: function(myJSONResult){
		                    if(myJSONResult.status == 'OK') {
		                        var tag = "";
		                        var pre;
		                        var sub1;
		                        var sub2;
		                        var sub3;
		                        var sub4;
		                        var admin;
		                        var local;
		                        var post;
		                        var nation;
								var c_lat;
								var c_lng;
		                        var i;
		                        for (i = 0; i < myJSONResult.results.length; i++) {
		                          console.log("i:"+i);
		                          console.log(myJSONResult.results.length);
		                          console.log(myJSONResult.results[0].length);
		                          console.log(myJSONResult.results[0].address_components.length);
		                          tag += "주소 : " +myJSONResult.results[i].formatted_address+" <br />";
		                          tag += "주소2 : " +myJSONResult.results[i].address_components.length+" <br />";
		                          tag += "주소2-1 : " +myJSONResult.results[i].address_components[i].long_name+" <br />";
		                          tag += "위도 : " +myJSONResult.results[i].geometry.location.lat+" <br />";
		                          tag += "경도 : " +myJSONResult.results[i].geometry.location.lng+" <br />";
		                          c_lat = myJSONResult.results[i].geometry.location.lat;
		                          c_lng = myJSONResult.results[i].geometry.location.lng;
		                        }
		                        
		                        for (var i = 0; i < myJSONResult.results[0].address_components.length; i++) {
		                        	tag += "주소2-1 : " +myJSONResult.results[0].address_components[i].long_name+" <br />";
		                        	
		                        }
		                        for (var i = 0; i < myJSONResult.results[0].address_components.length; i++) {
		                        	tag += "데헷 : " +myJSONResult.results[0].address_components[i].types+" <br />";
		                        	
		                        }
		                        for (var i = 0; i < myJSONResult.results[0].address_components.length; i++) {
		                        	if(myJSONResult.results[0].address_components[i].types == "premise"){
		                        		pre = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types == "political,sublocality,sublocality_level_4"){
		                        		sub4 = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types=="political,sublocality,sublocality_level_3"){
		                        		sub3 = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types=="political,sublocality,sublocality_level_2"){
		                        		sub2 = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types=="political,sublocality,sublocality_level_1"){
		                        		sub1 = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types=="locality,political"){
		                        		local = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types=="administrative_area_level_1,political"){
		                        		admin = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types=="country,political"){
		                        		nation = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        	if(myJSONResult.results[0].address_components[i].types == "postal_code"){
		                        		post = myJSONResult.results[0].address_components[i].long_name;
		                        	}
		                        }
		                        
		                        console.log(admin+","+local+","+sub1+","+sub2+","+sub3+","+sub4+","+pre+","+post);
		                        
		                        if(typeof admin == "undefined"){
		                        	admin="";
		                        }
		                        if(typeof local =="undefined"){
		                        	local="";
		                        }
		                        if(typeof sub1 =="undefined"){
		                        	sub1="";
		                        }
		                        if(typeof sub2=="undefined"){
		                        	sub2="";
		                        }
		                        if(typeof sub3=="undefined"){
		                        	sub3="";
		                        }
		                        if(typeof sub4=="undefined"){               
		                        	sub4="";
		                        }
		                        if(typeof pre=="undefined"){
		                        	pre="";
		                        }
		                        if(typeof post=="undefined"){
		                        	post="";
		                        }
		                        
// 		                        document.getElementById("addtoll").innerHTML = tag;
		                        
		                        document.getElementById("home_addr1").value = admin;
		                        document.getElementById("home_addr2").value = local+" "+sub1+" "+sub2+" "+sub3;
		                        document.getElementById("pac-input").value = sub4+" "+pre;
		                        document.getElementById("home_zipcode").value = post;
		                        document.getElementById("lat").value= c_lat;
		                        document.getElementById("lng").value= c_lng;
		                        
										                        
		                    } else if(myJSONResult.status == 'ZERO_RESULTS') {
		                        alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
		                    } else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
		                        alert("할당량이 초과되었습니다.");
		                    } else if(myJSONResult.status == 'REQUEST_DENIED') {
		                        alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
		                    } else if(myJSONResult.status == 'INVALID_REQUEST') {
		                        alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
		                    }
		            }
		    });
		}
		
		
		

		function googleapisView() {
			
		    var lat = ${lat}; // 위도
		    var lng = ${lng}; // 경도
		    var geocode = "http://maps.googleapis.com/maps/api/geocode/json?latlng="+lat+","+lng+"&sensor=false";
		    jQuery.ajax({
		        url: geocode,
		        type: 'POST',
		           success: function(myJSONResult){
		                    if(myJSONResult.status == 'OK') {
		                        var tag = "";
		                        var i;
		                        for (i = 0; i < myJSONResult.results.length; i++) {
		                          tag += "주소 : " +myJSONResult.results[i].formatted_address+" <br />";
		                          tag += "위도 : " +myJSONResult.results[i].geometry.location.lat+" <br />";
		                          tag += "경도 : " +myJSONResult.results[i].geometry.location.lng+" <br />";
		                        }
// 		                        document.getElementById("message").innerHTML = tag;
		                    } else if(myJSONResult.status == 'ZERO_RESULTS') {
		                        alert("지오코딩이 성공했지만 반환된 결과가 없음을 나타냅니다.\n\n이는 지오코딩이 존재하지 않는 address 또는 원격 지역의 latlng을 전달받는 경우 발생할 수 있습니다.")
		                    } else if(myJSONResult.status == 'OVER_QUERY_LIMIT') {
		                        alert("할당량이 초과되었습니다.");
		                    } else if(myJSONResult.status == 'REQUEST_DENIED') {
		                        alert("요청이 거부되었습니다.\n\n대부분의 경우 sensor 매개변수가 없기 때문입니다.");
		                    } else if(myJSONResult.status == 'INVALID_REQUEST') {
		                        alert("일반적으로 쿼리(address 또는 latlng)가 누락되었음을 나타냅니다.");
		                    }
		            }
		    });
		 
		}
		
	</script>
<!-- 	<div id="addtoll" style="border: 2px dotted black;"></div> -->
	<!-- 	<div id="message" style="border: 2px dotted black;"></div> -->


	<%@ include file="../../resource/include/footer.jsp"%>

	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAqOC53EXTtReEkmhrJ4iY3zXOAotGVGWA&libraries=places&callback=initMap">
   </script>
</body>
</html>