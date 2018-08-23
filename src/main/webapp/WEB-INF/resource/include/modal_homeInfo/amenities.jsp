<%@ page pageEncoding="utf8"%>

<style>
	#amenitiesModal{
		margin-top: 50px;
		z-index: 50000;
	}
</style>

<!-- 모달 팝업 -->
      <div class="modal fade" id="amenitiesModal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true"
      style="z-index:1000000000">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel">가입하기</h4>
               </div>
               <div class="modal-body">이미 회원이신가요? <BR>
                              구글로 로그인하기<br>
                              카카오로 로그인하기<BR>
                              네이버로 로그인하기<BR>
               </div>
               <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                  <button type="button" class="btn btn-primary">참석하기</button>
               </div>
            </div>
         </div>
      </div>