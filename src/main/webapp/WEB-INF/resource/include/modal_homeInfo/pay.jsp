<%@ page pageEncoding="utf8"%>

<style>
	#payModal{
		margin-top: 50px;
		margin: 0 auto;
		height:auto;
		font-family:font2 !important;
	}
	
	.modal-dialog.reserv-dialog{
		width: 380px;
		height: 100%;
	}
	
	.modal-content.reserv-content{
		height: auto;
	}
	
	.modal-header.reserv-header{
		width:100%;
		border: 0px !important;
	}
	
	.basicAmenities{
		border-bottom:  1px solid #d6d6d6;
		margin: 20px 0px;
		
	}
	
	.modal-body.reserv-body{
		padding:0 30px;
		height: 100px;;
	}

	.reserv-footer{
		border-top: 1px solid #d6d6d6;
		
	}
	
	.reserv-body button{
		background-color: white;
		color:#ff5a5f;
		border:2px solid #ff5a5f;
	}
	
	.reserv-body button:hover{
		color:#ff5a5f;
	}
</style>

<!-- 모달 팝업 -->
      <div class="modal fade" id="payModal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true"
      style="z-index:1000000000">
         <div class="modal-dialog reserv-dialog">
            <div class="modal-content reserv-content">
               <div class="modal-header reserv-header">
               		<img src="<c:url value='/resources/img/logo2.png'/>" style="width:60px;">
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true" >×</span><span class="sr-only">Close</span>
                  </button>
               </div>
               <div class="modal-body reserv-body">
               		<p style="font-weight: 600;">
               			취소 사유를 선택하세요!
               		</p>
               		<button class="btn btn-secondary" style="float:right;" data-dismiss="modal">닫기</button>
               </div>
            </div>
         </div>
      </div>