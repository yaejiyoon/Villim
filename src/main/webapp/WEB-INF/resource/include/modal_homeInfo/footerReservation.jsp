<%@ page pageEncoding="utf8"%>

<style>
	#footerReservation{
		margin-top: 50px;
		margin: 0 auto;
		height:auto;
		font-family:font2 !important;
	}
	
	.modal-dialog.footerModal-dialog{
		width: 380px;
		height: 100%;
	}
	
	.modal-content.footerModal-content{
		height: auto;
	}
	
	.modal-header.footerModal-header{
		width:100%;
		border: 0px !important;
	}
	
	
	.modal-body.footerModal-body{
		padding:0 30px;
		height: 360px;
	}
	
	.footerModal-body button{
		background-color: white;
		color:#ff5a5f;
		border:2px solid #ff5a5f;
	}
	
	.footerModal-body button:hover{
		color:#ff5a5f;
	}
	
	
</style>

<!-- 모달 팝업 -->
      <div class="modal fade" id="footerReservation" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true"
      style="z-index:100000">
         <div class="modal-dialog footerModal-dialog">
            <div class="modal-content footerModal-content">
               <div class="modal-header footerModal-header">
               		<img src="<c:url value='/resources/img/logo2.png'/>" style="width:60px;">
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true" >×</span><span class="sr-only">Close</span>
                  </button>
               </div>
               <div class="modal-body footerModal-body">
            	<div id="fixed" style="width: 300px; border: 0px; margin-right: 0px; margin-left: 5px;">
            		<div id="fixed-sub01">
            			<br>
            			<img src="<c:url value='../resources/img/won.png'/>" style="width:20px;">
            			
            			<h3 style="display: inline; font-weight: 600;">
            				<fmt:formatNumber value="${hdto.home_price }" pattern="#,###" />
            			</h3>/박
            			<br>
            			<c:choose>
               				<c:when test="${starCount>0}">
               					<img src="<c:url value='../resources/img/star.png'/>" class="star">
            					<img src="<c:url value='../resources/img/star.png'/>" class="star">
            					<img src="<c:url value='../resources/img/star.png'/>" class="star">
            					<img src="<c:url value='../resources/img/star.png'/>" class="star">
            					<img src="<c:url value='../resources/img/star.png'/>" class="star">
            					<h6 style="display: inline;">${starCount }</h6>
               				</c:when>
               			</c:choose>
            			
            		</div>
            		<div id="fixed-sub02">
            		 	<form action="reservReq.re" method="post" id="">
            		 	
            			<br>
            			날짜&nbsp;
            			<div class="dropdown fixed">
            				<input type="text" class="search-query3 form-control"
            				style="position: static; width:230px;"
            				id="modalCalendarDrop"
            				placeholder="체크인         →        체크아웃"
            				onclick="myFunction3()"
            				/>
            				
            				<div class="dropdown-content modalCalDrop" id="myDropdown3">
            					<div  id="modalCal" class="datepicker-here " data-range="true"></div>
            					<script>
            					
            					var blockedDates = '${getBlockedDate}';
            					var disabledDays = new Array; 
            				
            					for(var i=0;i<blockedDates.split(",").length;i++){
            						disabledDays.push(blockedDates.split(",")[i]);
            					}
            					
            					console.log(disabledDays);
            			
                    			var isDisabled;
                    			var today = new Date();
                    			var d;
                    			var blockDate;
                    			var ttt;
                    			var vvv;
                    			var reserveDate;
                    			
                    			var checkinDate;
                    			var checkoutDate;
                    			
            					
            					$('#modalCal').datepicker({
                    				
                    				todayButton: new Date(),
                    				clearButton : true,
                    				autoClose : "true",
                    				dateFormat : "yyyy-mm-dd",
                    				minDate: new Date(),
                    				toggleSelected: false,
                    				language: {
                    					days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                    				    daysShort: ['일', '월', '화', '수', '목', '금', '토'],
                    				    daysMin: ['일', '월', '화', '수', '목', '금', '토'],
                    				    months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                    				    monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
                    				    today: '오늘',
                    				    clear: '날짜 지우기',
                    				    dateFormat: "yyyy/mm/dd",
                    				    timeFormat: 'hh:ii aa'
                    			    },
                    				
                    				onSelect: function(formattedDate, date, inst){
                    					
                    					function formatDate(date) {
                    		                var d = new Date(date),
                    		                    month = '' + (d.getMonth() + 1),
                    		                    day = '' + d.getDate(),
                    		                    year = d.getFullYear();

                    		                if (month.length < 2) month = '0' + month;
                    		                if (day.length < 2) day = '0' + day;

                    		                 return [year, month, day].join('-');
                    		            }
                    					
                    					var checkin = formatDate(date);
                    					
                    			        var inYear = checkin.split('-')[0];
                    			        var inMonth = checkin.split('-')[1];
                    			        var inDay = checkin.split('-')[2];
                    					
                    					
                    					
                    					console.log("select");
                    					console.log(date);
                    					
                    					
                    					if(date.length == 1){
                    						
                    						checkinDate = formatDate(date[0]);
                    						
                    						/* inpunt value */
            								$("#modalCalendarDrop").val(checkinDate + " →  체크아웃");
                    					}
                    					
                    					if(date.length == 2){
                    						checkinDate = formatDate(date[0]);
                    						checkoutDate = formatDate(date[1]);
                    						
                    					
                        					console.log("-----");
                        					console.log(checkinDate);
                        					console.log(checkoutDate);
                    						
                    						/* inpunt value */
            								$("#modalCalendarDrop").val(checkinDate + "  →  "+checkoutDate);
                    						
                    						/* 날짜 선택시 달력 없애기 */
											$( "#myDropdown3" ).removeClass( "show" );
                    						
                    						$.ajax({
                    							url:"clickDate.re",
                    							type:"get",
                    							data:{
                    								checkinDate:checkinDate,
                    								checkoutDate:checkoutDate
                    								},
                    							success:function(resp){
                    								var priceLeft = resp.priceLeft;
                    								var priceRight = resp.priceRight;
                    								var cleaningfee = resp.cleaningfee;
                    								var servicefee = resp.servicefee;
                    								var total = resp.total;
                    								var blockedDate = resp.blockedDate;
                    								var canReserv = resp.canReserv;
                    								
                    								if(canReserv == false){
                    									$(".fixedprice").css({"display":"none"});
                    									$("#fixed").css({"height":"360px","transition-duration":"0.1s"});
                    									$('#reservationModal').modal('show');
                    									$("#modalCalendarDrop").val("");
                    									$(".footerModal-body").css({"height":"360px"});
                    									
                    								}else{
                    									alert(priceLeft+" : "+priceRight);
                        								
                        								$("#footer-priceLeft").text(priceLeft);
                        								$("#footer-priceRight").text(priceRight);
                        								$("#footer-modal-cleaningfee").text(cleaningfee);
                        								$("#footer-modal-servicefee").text(servicefee);
                        								$("#footer-total").text(total);
                        								
                        								
                        								$("#fixed").css({"height":"580px","transition-duration":"0.1s"});
                        								$(".fixedprice").css({"display":"block"});
                        								$(".footerModal-body").css({"height":"500px"});
                        								
                        								$("#footer_reserv_checkin").val(checkinDate);
                        								$("#footer_reserv_checkout").val(checkoutDate);
                        								$("#footer-nightsAmount").val(priceRight);
                        								$("#footer-cleaningFee").val(cleaningfee);
                        								$("#footer-servicefee").val(servicefee);
                        								$("#footer-totalAmount").val(total);
                        								
                        								$("#footer-blockedDate").val(blockedDate);
                        								
                        								alert(cleaningfee);
                        								alert(servicefee);
                    								}
                    								
                    							},
                    							error : function(request,status,error) {
                    								console.log(request.status + " : " + status + " : " + error);
                    							}
                    						})
                    						
                    					}
                    					
                    					for(var j=0; j<disabledDays.length;j++){
                    						
                    						var reservYear = disabledDays[j].split('-')[0];
                    		      		  	var reservMonth = disabledDays[j].split('-')[1];
                    		      		  	var reservDay = disabledDays[j].split('-')[2];
                    		      		  	
                    		      		  	reserveDate = new Date(reservYear,reservMonth,reservDay);
                    		      		  	
                    		      		  	console.log(reserveDate.getDate()-1);
                    		      		  	console.log(reserveDate.getMonth());
                    		      			console.log(inMonth);
                    						
                    		      		  if(inMonth == reserveDate.getMonth()){
                    		      			  if(date[0].getDate() == reserveDate.getDate()-1){
                    		      				   
                    		      				  blockDate = new Date(2018,date[0].getMonth(),reserveDate.getDate()-2);
                    		      				  console.log(blockDate);
                    		      				  
                    		      				  d = new Date(2018,date[0].getMonth(),reserveDate.getDate()-1);
                    		      				  
                    		      					ttt = new Date(2018,date[0].getMonth(),reserveDate.getDate());
                    		      					vvv = new Date(2018,date[0].getMonth(),reserveDate.getDate()+1);
                    		      				  
                    		      			  }else{
                    		      				  return;
                    		      			  }
                    		      		  }
                    					} 
                    				},
                    				
                    			     onRenderCell: function (date, cellType) {

                             			var eventDates = ['2018-09-30','2018-10-01'];
                    			    	 
                    			    	 var currentDate = date.getDate();
                    			    	 var currentMonth = date.getMonth();
                    			    	 currentMonth = "0"+currentMonth;
                    			    	 
                    			    	 
                    			        if (cellType == 'day') {
                    			        	
                    			        	
                    			        	function formatDate(date) {
                    			                var d = new Date(date),
                    			                    month = '' + (d.getMonth() + 1),
                    			                    day = '' + d.getDate(),
                    			                    year = d.getFullYear();  

                    			                if (month.length < 2) month = '0' + month;
                    			                if (day.length < 2) day = '0' + day;

                    			                  return [year, month, day].join('-');
                    			            }
                    			            
                    			        	 
                    			        	for(var i=0; i<disabledDays.length;i++){
                    			        		
                    			        		var reservYear = disabledDays[i].split('-')[0];
                    			      		  	var reservMonth = disabledDays[i].split('-')[1];
                    			      		  	var reservDay = disabledDays[i].split('-')[2];
                    				           
                    				           
                    				           var checkin = formatDate(date);
                    				           var inYear = checkin.split('-')[0];
                    				           var inMonth = checkin.split('-')[1];
                    				           var inDay = checkin.split('-')[2];
                    				            
                    				           
                    				           if(reservMonth == inMonth){
                    				        	   /* console.log("같으면 : "+inMonth);
                    				        	   
                    				        	   console.log("inDay : "+ inDay);
                    				        	   console.log("reservDay : "+ reservDay);
                    				        	    */
                    				        	   if(reservDay === inDay){
                    				        		   return {
                    				        			   disabled : true
                    				        		   }
                    				        	   };
                    				           }
                    			        	
                    			        	 }
                    			        	
                    			        }
                    			        
                    			    }  
                    			});
            					</script>
            					
            				</div>
            			</div>
            			
            			<script>
            				function myFunction3() {
            				    document.getElementById("myDropdown3").classList.toggle("show");
            				}
            				
            				// Close the dropdown menu if the user clicks outside of it
            				window.onclick = function(event) {
            					  if (!event.target.matches('#modalCalendarDrop')) {

            					    var dropdowns = document.getElementsByClassName("dropdown-content modalCalDrop");
            					    var i;
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            					  }
            					}
            				
            				$('#myDropdown3').bind('click', function (e) { e.stopPropagation() })
            				
            					
            				
            				</script>
            			
            			
            			
            			
            			
            			<br>인원&nbsp;
            			<div class="dropdown fixed">
            			
            				<input type="text" class="search-query3 form-control"
            				style="position: static; width:230px;"
            				id="peopleDrop2" value="게스트 1명"
            				onclick="myFunction4()"
            				/>
            				
            				<div class="dropdown-content peoDrop" id="modalPeople">
            					 <div id="peopleDropdownContentInner">
                     				<div>
                     					인원
                     				</div>
                     				<div>
                     					<button id="Modalpeopleup" class="btn btn-primary-outline" 
                     					type="button" style="border: 0px;">+</button>
										<p style="display: inline;" id="modalPcount">1</p>
										<button id="Modalpeopledown" class="btn btn-primary-outline" 
										type="button" style="border: 0px;">-</button>
										
                     				</div>
                     				<div>
                     					<button id="modalDropdownClose" class="btn btn-primary-outline" 
                     					type="button" style="border: 1px solid #008489; margin-top: 10px;">닫기</button>
                     				</div>
                 				</div>

            				</div>
            				
            				<script>
            				function myFunction4() {
            				    document.getElementById("modalPeople").classList.toggle("show");
            				}
            				
            				// Close the dropdown menu if the user clicks outside of it
            				window.onclick = function(event) {
            					  if (!event.target.matches('#peopleDrop2')) {

            					    var dropdowns = document.getElementsByClassName("dropdown-content peoDrop");
            					    var i;
            					    
            					    var population = $("#peopleDrop2").val();
            					    console.log(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    $("#footer-population").val(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            					  }
            					}
            				
            				$('#modalPeople').bind('click', function (e) { e.stopPropagation() })
            				
            					$("#Modalpeopledown").attr("disabled",true);
            				
            				var maxPeople = ${hdto.home_people};
            					
            				   $("#Modalpeopledown").click(function() {
            					   var intmax = parseInt($("#modalPcount").text());
            					   
            					  
            					   
            				       if(intmax > 2){
            				          intmax = intmax - 1; 
            				          $("#peopleDrop2").val("게스트 "+intmax+"명");
            				          $("#modalPcount").text(intmax);
            				          $("#Modalpeopleup").attr("disabled",false);
            				       }else if(intmax = 2){
            				    	   $("#peopleDrop2").val("게스트 "+1+"명");
            				    	   $("#Modalpeopledown").attr("disabled",true);
            				    	   $("#modalPcount").text(1);
            				       }
            				       
            				    });
            				    
            				    $("#Modalpeopleup").click(function() {
            				       var intmax = parseInt($("#modalPcount").text());
            				   
            				       if(intmax < maxPeople ){
            				          $("#Modalpeopledown").attr("disabled",false);
            				          intmax = intmax + 1; 
            				          $("#modalPcount").text(intmax);
            				          $("#peopleDrop2").val("게스트 "+intmax+"명");
            				       }else if(intmax = maxPeople){
            				          $("#Modalpeopleup").attr("disabled",true);
            				          $("#modalPcount").text(intmax);
            				          $("#peopleDrop2").val("게스트 "+intmax+"명");
            				       }
            				    });
            				    
            				    $("#modalDropdownClose").click(function(){
            				    	var dropdowns = document.getElementsByClassName("dropdown-content");
            					    var i;
            					    
            					    var population = $("#peopleDrop2").val();
            					    console.log(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    $("#population").val(population.split("게스트 ")[1].split("명")[0]);
            					    
            					    for (i = 0; i < dropdowns.length; i++) {
            					      var openDropdown = dropdowns[i];
            					      if (openDropdown.classList.contains('show')) {
            					        openDropdown.classList.remove('show');
            					      }
            					    }
            				    });
            				</script>
            				
            				
            			</div>
            			<span class='glyphicon glyphicon-menu-down' aria-hidden="true" style="right:-230px;"></span>
            			
            			<div class="fixedprice" style="margin-bottom: 5px;">
            				<span style="float: left;" id="footer-priceLeft">₩132,766 x 1박</span>
            				<span style="float: right;" id="footer-priceRight">₩132,766</span>
            			</div>
            			<div class="fixedprice" style="margin-bottom: 5px;">
            				<span style="float: left;">청소비</span>
            				
            				<img src="<c:url value='../resources/img/question.png'/>" 
            				data-container="body" data-toggle="popover" data-placement="top" data-html="true"
            				class="question1" id="popCleaning"
            				/>
            				
            				<div id="popover-content-popCleaning" class="hide" >
            					<div style="float: left; width:82%; margin: 10px;">
            						<p>호스트가 청구하는  일회성 숙소 청소 비용입니다.</p>
            					</div>
            					<div style="float: right; margin-top: 10px; margin-right: 10px; cursor: pointer;">
            						<img src="<c:url value='../resources/img/delete.png'/>" style="width:10px;"
            						class="close2" onclick="$('.question1').popover('hide').trigger('click')"/>
            					</div>
            				</div>
							
							
            				<span style="float: right;" id="footer-modal-cleaningfee">₩32,225</span>
            			</div>
            			<div class="fixedprice" style="margin-bottom: 5px;">
            				<span style="float: left;">서비스 수수료</span>
            				
            				<img src="<c:url value='../resources/img/question.png'/>" 
            				data-container="body" data-toggle="popover" data-placement="top" data-html="true"
            				class="question" id="popService"/>
            				
            				<div id="popover-content-popService" class="hide" >
            					<div style="float: left; width:82%; margin: 10px;">
            						<p>수수료는 빌림 플랫폼을 운영하고 연중무휴 고객 지원과 같은 다양한 서비스를 제공하는데 사용됩니다.</p>
            					</div>
            					<div style="float: right; margin-top: 10px; margin-right: 10px; cursor: pointer;">
            						<img src="<c:url value='../resources/img/delete.png'/>" style="width:10px;"
            						class="close2" onclick="$('.question').popover('hide').trigger('click')"/>
            					</div>
            				</div>
            				
            				<span style="float: right;" id="footer-modal-servicefee">₩21,913</span>
            			</div>
            			<div style="border: none;" class="fixedprice" style="margin-bottom: 5px;">
            				<span style="float: left; font-weight: 600;">합계</span>
            				<span style="float: right;" id="footer-total" >₩21,913</span>
            			</div>
            			<br>
            			<c:if test="${sessionScope.login_email eq null}">
            				<button id="footerReservationBT" class="btn btn-secondary" type="button" data-toggle="modal" href="#myModal1">
            					예약 하기
            				</button>
            			</c:if>
            			<c:if test="${sessionScope.login_email ne null}">
            				<button id="footerReservationBT" class="btn btn-secondary" type="submit">
            					예약 하기
            				</button>
            			</c:if>
            			
            			<br>
            			<p style="text-align: center;">예약 확정 전에는 요금이 청구되지 않습니다</p>
            			
            			
            			<input type="hidden" name="member_email" value="${sessionScope.login_email}">
            		 	<input type="hidden" name="reserv_checkin" id="footer_reserv_checkin" value="">
            		 	<input type="hidden" name="reserv_checkout" id="footer_reserv_checkout" value="">
            			<input type="hidden" name="population" id="footer-population" value="1">
            			<input type="hidden" name="home_seq" value="${hdto.getHome_seq() }">
            			<input type="hidden" name="home_name" value="${hdto.getHome_name() }">
            			<input type="hidden" name="nightsAmount" id="footer-nightsAmount">
            			<input type="hidden" name="cleaningFee" id="footer-cleaningFee">
            			<input type="hidden" name="serviceFee" id="footer-servicefee">
            			<input type="hidden" name="totalAmount" id="footer-totalAmount">
            			<input type="hidden" name="blockedDate" id="footer-blockedDate">
            			<input type="hidden" name="host_email" value="${hdto.member_email }">
            			</form>
            		</div>
            		
            	</div>
           
               </div>
            </div>
         </div>
      </div>