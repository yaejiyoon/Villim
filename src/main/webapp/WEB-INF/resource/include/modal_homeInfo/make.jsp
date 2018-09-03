<%@ page pageEncoding="utf8"%>

<style>
	#makeModal{
		margin-top: 50px;
		margin: 0 auto;
		height:auto;
		font-family:font2;
	}
	
	.modal-dialog.likey-dialog{
		width: 550px;
		height: 100%;
	}
	
	.modal-content.likey-content{
		height: auto;
	}
	
	.modal-header.likey-header{
		width:100%;
		border: 0px !important;
	}
	
	.basicAmenities{
		border-bottom:  1px solid #d6d6d6;
		margin: 20px 0px;
		
	}
	
	.modal-body.likey-body{
		padding:0 30px;
		height: auto;
	}
	
	#makeList{
		color:#008489;
		font-weight: 600;
	}
	
	#makeName{
		margin: 10px 0px;
		width:100%;
	}
	
	#makeName:focus{
		border: 1px solid #008489;
	}
	
	#cancelListBT{
		background-color: white;
		color:#008489;
		border:2px solid #008489;
	}
	
	#makeListBT2{
		background-color: #008489;
		color:white;
		border:2px solid #008489;
	}
	
	
	#likeyListDiv{
		margin-top: 30px;
		margin-bottom: 30px;
	}

</style>
<script>
$(document).ready(function(){
	$("#makeListBT2").click(function(){
		alert("클");
			var name = $("#makeName").val();
			
			
			if(name == ''){
				alert("저장 목록 이름을 입력하세요");
			}else{
				var likeyListName = $("#makeName").val();
				$('#makeName').val("");
				var home_seq = 1;
				
				$.ajax({
					url:"likeList.do",
					type:"get",
					data:{
						likeyListName:likeyListName,
						home_seq:home_seq
						},
					success:function(resp){
						location.reload();
					},
					error : function(request,status,error) {
						console.log(request.status + " : " + status + " : " + error);
					}
				})
			}
		})
})

</script>

<!-- 모달 팝업 -->
      <div class="modal fade" id="makeModal" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel" aria-hidden="true"
      style="z-index:1000000000">
         <div class="modal-dialog likey-dialog">
            <div class="modal-content likey-content">
               <div class="modal-header likey-header">
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true" >×</span><span class="sr-only">Close</span>
                  </button>
               </div>
               <div class="modal-body likey-body">
               		<h2 style="font-weight: 600;">목록 만들기</h2>
               		<div id="likeyListDiv">
               			<h4 style="font-weight: 600; color: black;">이름</h4>	
               			<input type="text" class="form-control" placeholder="이름 정하기" id="makeName"/>
               			<button id="cancelListBT" class="btn btn-secondary" style="float:right;" data-dismiss="modal">취소</button>
               			<button id="makeListBT2" class="btn btn-secondary" style="float:right; margin-right: 10px;">만들기</button>
               			<br><br>
               		</div>
               </div>
            </div>
         </div>
      </div>