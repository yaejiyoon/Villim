<%@ page pageEncoding="utf8"%>



<style>
	.modal-dialog {
		margin-left : 5vh;
		margin-top : 20vh;
		width : 20vw;
	}
	
	.modal-backdrop {
   		background-color: #f9f2ef;
	}
	
	.mainModal{
		height : auto;
	}
	
</style>
<script>

	$('.datepicker-here').datepicker({
	    onClose:function(theDate) {
	        alert('.datepicker-here');
	    }
	});

	$(document).ready(function() {
		$('.datepicker-here').datepicker({
		    autoClose : "true",
		    dateFormat : "yyyy/mm/dd",
		    minDate: new Date(),
		    toggleSelected: false,
		    language: {
		       days: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		        daysShort: ['일', '월', '화', '수', '목', '금', '토'],
		        daysMin: ['일', '월', '화', '수', '목', '금', '토'],
		        months: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
		        monthsShort: ['1월','2월','3월','4월','5월','6월', '7월','8월','9월','10월','11월','12월'],
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
	             
	             if(date.length == 2){
	                
	                checkinDate = formatDate(date[0]);
	                checkoutDate = formatDate(date[1]);
	                
	                alert(checkinDate+" : " + checkoutDate);
	                
	             }
	          }
		})
	});
</script>

      <div class="modal fade" id="date" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header" >
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel" style="color:#6e7776;">참가신청 완료하기</h4>
               </div>
               <div class="modal-body mainModal" style="background-color:white; color:#6e7776; text-align : center;">
                  	<input id="datepicker" type="text" data-range="true"
	                   data-multiple-dates-separator="  ~  "
	                   todayButton="true" class="datepicker-here"
	                     placeholder="  체크인       ㅡ       체크아웃" />
               </div>
               <div class="modal-footer">
                   <a data-toggle="modal" href="#myModal2" class="btn btn-primary submit" data-dismiss="modal">참석하기</a>
               </div>
            </div>
         </div>
      </div>
