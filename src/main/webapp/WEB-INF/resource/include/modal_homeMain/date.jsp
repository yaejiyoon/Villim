<%@ page pageEncoding="utf8"%>

<style>
	.modal-dialog {
		margin-left : 5vh;
		margin-top : 20vh;
		width : 20vw;
	}
	
	.modal-backdrop {
   		background-color: #f2edee;
	}
	
	div {
		font-family: dx;
	}
</style>

<form method=post action="attend.meet?meeting_seq=${result.meeting_seq}" id="formid">
      <div class="modal fade" id="date" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header" >
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel" style="color:#6e7776;">참가신청 완료하기</h4>
               </div>
               <div class="modal-body" style="background-color:white; color:#6e7776; text-align : center;">
                  	여기는 달력이 들어가겠쥬?
               </div>
               <div class="modal-footer">
                   <a data-toggle="modal" href="#myModal2" class="btn btn-primary" style="background-color:#cce5e8; border:0; outline:0;">참석하기</a>
               </div>
            </div>
         </div>
      </div>
</form>