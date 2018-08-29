<%@ page pageEncoding="utf8"%>

<style>
	#likeyModal{
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
		height: 500px;
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
	
	#makeListBT{
		background-color: #008489;
		color:white;
		border:2px solid #008489;
	}
	
	#likeyListDiv{
		display: none;
	}
	
	.likeyBT{
		width: 25px;
		float: right;
	}
	
	.likeyList-content{
		width:100%;
		height: 60px;
		border-top: 1px solid #d6d6d6;
		padding: 20px;
		margin-top: 10px;
	}
</style>

<!-- 모달 팝업 -->
      <div class="modal fade" id="likeyModal" tabindex="-1" role="dialog"
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
               		<h2 style="font-weight: 600;">목록에 저장</h2>
               		<div id="likeyListDiv">
               			<h4 style="font-weight: 600; color: black;">이름</h4>	
               			<input type="text" class="form-control" placeholder="이름 정하기" id="makeName"/>
               			<button id="makeListBT" class="btn btn-secondary" style="float:right;">만들기</button>
               			<button id="cancelListBT" class="btn btn-secondary" style="float:right; margin-right: 10px;">취소</button>
               			<br><br>
               		</div>
               		<a href='javascript:void(0);' id="makeList" onclick='newListFunction();'><br>새 목록 만들기</a>
               		<div id="afterLineDiv"></div>
               		<script>
               			function newListFunction() {
               				$("#makeList").css({"display":"none"});
               				$("#likeyListDiv").css({"display":"block"});
               			}
               			
               			$("#cancelListBT").click(function(){
               				$("#likeyListDiv").css({"display":"none"});
               				$("#makeList").css({"display":"block"});
               			});
               			
               			$("#makeListBT").click(function(){
               				var text = $("#makeName").val();
               				if(text == ''){
               					alert("저장 목록 이름을 입력하세요");
               				}else{
               					var likeyListName = $("#makeName").val();
               					
               					$.ajax({
               						url:"likeList.do",
               						type:"get",
               						data:{likeyListName:likeyListName},
               						success:function(resp){
               							$('.likeyList-content').remove();
               							
               							for(var i=0; i<resp.likeyList.length;i++){
               								$("#afterLineDiv").after(
               									$('<div>').attr('class','likeyList-content').attr('id','likeyList-content'+resp.likeyList[i].likeyList_seq).append(
               										$('<p>').attr('style','display: inline; float:left;').attr('id','likeyListPtag'+resp.likeyList[i].likeyList_seq).html(resp.likeyList[i].likeyList_name)
               									)	
               								)
               							}
               							
               							for(var i=0; i<resp.likeyList.length;i++){
               								$("#likeyListPtag"+resp.likeyList[i].likeyList_seq).after(
           											$('<img>').attr('src','<c:url value='../resources/img/like.png'/>').attr('class','likeyBT')
       										)
               							}
               							
               						},
               						error : function(request,status,error) {
               							console.log(request.status + " : " + status + " : " + error);
               						}
               					})
               				}
               			});
               		</script>
               		
               		
               		<c:if test="${likeyList ne null}">
               			<c:forEach items="${likeyList }" var="likeyList">
               				<div class="likeyList-content">
               					<p style="display: inline; float:left;">${likeyList.likeyList_name }</p>
               					<img src="<c:url value='../resources/img/like.png'/>" class="likeyBT">
               				</div>
               			</c:forEach>
               		</c:if>
               </div>
            </div>
         </div>
      </div>