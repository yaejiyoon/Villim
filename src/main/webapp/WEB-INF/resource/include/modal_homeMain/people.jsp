<%@ page pageEncoding="utf8"%>



<script>
$(document).ready(function() {
	$("#peopledis").click(function() {
	    var intmax = parseInt($("#pcount").text());
	
	    if(intmax > 1){
	       intmax = intmax - 1; 
	       $("#pcount").text(intmax);
	       $("#peopleup").attr("disabled",false);
	    }else{
	       $("#peopledis").attr("disabled",true);
	       $("#pcount").text(0);
	    }
	    
	 });
	 
	 $("#peopleup").click(function() {
	    var intmax = parseInt($("#pcount").text());
	
	    if(intmax < 15 ){
	       $("#peopledis").attr("disabled",false);
	       intmax = intmax + 1; 
	       $("#pcount").text(intmax)
	       
	    }else if(intmax = 15){
	       $("#peopleup").attr("disabled",true);
	       $("#pcount").text(intmax+1 + "+")
	    }
	 });
});
 
</script>

<style>
	#peopleDialog {
		margin-left : 13vh;
		margin-top : 20vh;
		width : 15vw;
	}
	
	.modal-backdrop {
   		background-color: #f2edee;
	}
	
	
	#peopleup, #peopledis {
		background-color: #2196F3; 
		color : white;
		outline:0;
		display: inline;
		border-radius: 50%;
		font-size: 300;
	}
	
	#peopleSubmit {
		background-color: white; 
		color : #2196F3;
		border : 1px solid #2196F3;
		font-family: dx;
	}
	
	#peopleSubmit:hover {
		background-color: #2196F3; 
		color : white;
		outline:0;
	}
	
	
</style>

<script>
	$(document).ready(function() {
		$("#peopleSubmit").click(function() {
			alert($("#pcount").text().toString());
		});
	});
</script>

      <div class="modal fade" id="people" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog" id="peopleDialog">
            <div class="modal-content">
               <div class="modal-header" >
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel" style="color:#6e7776;">인원 수 선택하기</h4>
               </div>
               <div class="modal-body" style="background-color:white; color:#6e7776; text-align : center;">
               		<span>인원</span>&emsp;
               		<button id="peopleup" class="btn btn-primary-outline">+</button>
               		&emsp;<span id="pcount">0</span>&emsp;
               		<button id="peopledis" class="btn btn-primary-outline">-</button>
               </div>
               <div class="modal-footer">
                   <button class="btn btn-primary-outline" id="peopleSubmit">적용하기</button> 
               </div>
            </div>
         </div>
      </div>
