<%@ page pageEncoding="utf8"%>

<style>
	#homeTypeDialog {
		margin-left : 210px;
		margin-top : 180px;
	}
	
	.modal-dialog {
		font-family: dx;
	}
	
	/* Customize the label (the Container) */
	.Container {
	  display: block;
	  position: relative;
	  padding-left: 35px;
	  margin-bottom: 12px;
	  cursor: pointer;
	  font-size: 5vm;
	  -webkit-user-select: none;
	  -moz-user-select: none;
	  -ms-user-select: none;
	  user-select: none;
	  text-align: left;
	  font-weight : 100;
	}
	
	/* Hide the browser's default checkbox */
	.Container input {
	  position: absolute;
	  opacity: 0;
	  cursor: pointer;
	}
	
	/* Create a custom checkbox */
	.checkmark {
	  position: absolute;
	  top: 0;
	  left: 0;
	  height: 25px;
	  width: 25px;
	  background-color: #eee;
	}
	
	/* On mouse-over, add a grey background color */
	.Container:hover input ~ .checkmark {
	  background-color: #ccc;
	}
	
	/* When the checkbox is checked, add a blue background */
	.Container input:checked ~ .checkmark {
	  background-color: #2196F3;
	}
	
	/* Create the checkmark/indicator (hidden when not checked) */
	.checkmark:after {
	  content: "";
	  position: absolute;
	  display: none;
	}
	
	/* Show the checkmark when checked */
	.Container input:checked ~ .checkmark:after {
	  display: block;
	}
	
	/* Style the checkmark/indicator */
	.Container .checkmark:after {
	  left: 9px;
	  top: 5px;
	  width: 5px;
	  height: 10px;
	  border: solid white;
	  border-width: 0 3px 3px 0;
	  -webkit-transform: rotate(45deg);
	  -ms-transform: rotate(45deg);
	  transform: rotate(45deg);
	}
	
	#homeTypeSubmit {
		background-color: white; 
		color : #2196F3;
		border : 1px solid #2196F3;
		font-family: dx;
	}
	
	#homeTypeSubmit:hover {
		background-color: #2196F3; 
		color : white;
		outline:0;
	}
</style>

<script>
	$(document).ready(function() {
		$("#homeTypeSubmit").click(function() {
			$("input[name=house]:checked").each(function() {
				alert("집전체");
			});
			
			$("input[name=privateRoom]:checked").each(function() {
				alert("개인실");
			});
			
			$("input[name=publicRoom]:checked").each(function() {
				alert("다인실");
			});
		});
	});
</script>

<form method=post action="" id="formid">
      <div class="modal fade" id="homeType" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog" id="homeTypeDialog">
            <div class="modal-content">
               <div class="modal-header" >
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel" style="color:#6e7776;">숙소 종류</h4>
               </div>
               <div class="modal-body" style="background-color:white; color:#6e7776; text-align : center;">
                  	<label class="Container"><b>집 전체</b><br>
                  		집 전체를 단독으로 사용합니다
					  <input type="checkbox" name="house">
					  <span class="checkmark"></span>
					</label>
						
						
					<label class="Container"><b>개인실</b><br>
						침실은 단독으로 쓰고, 이외의 공간은 호스트나 다른 게스트와 함께 이용할 수도 있습니다. 
					  <input type="checkbox" name="privateRoom">
					  <span class="checkmark"></span>
					</label>
					
					<label class="Container"><b>다인실</b><br>
						사적공간없이, 침실이나 욕실 등을 호스트나 다른 게스트와 함께 사용합니다.
					  <input type="checkbox" name="publicRoom">
					  <span class="checkmark"></span>
					</label>
					
                  	
               </div>
               <div class="modal-footer">
                   <button class="btn btn-primary-outline" id="homeTypeSubmit">적용하기</button> 
               </div>
            </div>
         </div>
      </div>
</form>