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
	
	
	#peopleup, #peopledis {
		background-color: #008489; 
		color : white;
		outline:0;
		display: inline;
		border-radius: 50%;
		font-size: 300;
	}
	
	#peopleSubmit {
		background-color: white; 
		color : #008489;
		border : 1px solid #008489;
		font-family: dx;
	}
	
	#peopleSubmit:hover, #peopleDelete:hover {
		background-color: #008489; 
		color : white;
		outline:0;
	}
	
	#peopleDelete {
		float: left;
		background-color: white; 
		color : #008489;
		border : 1px solid #008489;
		
	}
	
	#people{
		z-index: 10000;
		width:200px;
		height:auto;
	}
	
</style>

<script>
	$(document).ready(function() {
		$("#pcount").text(<%=session.getAttribute("people")%>);
		
		$("#peopleSubmit").click(function() {
			var pcount = $("#pcount").text().toString();
			var peopleBt = document.getElementById('peopleBt');
			peopleBt.innerHTML = "인원 "+pcount+"명";
			peopleBt.style.backgroundColor = '#008489';
			peopleBt.style.color = "white";
			peopleBt.style.borderRadius = "10px";
			var pcountInt = parseInt(pcount);
			$('#modalPeople').val(pcountInt);
		});
		
		$("#peopleDelete").click(function() {
// 			var pcount = document.getElementById('peopleBt');
// 			var peopleBt = document.getElementById('peopleBt');
// 			peopleBt.innerHTML = "인원";
// 			peopleBt.style.backgroundColor = 'white';
// 			peopleBt.style.color = "black";
// 			peopleBt.style.borderRadius = "0px";
			$("#pcount").text("0");
		});
		
		$('#peopleSubmit').submit(function() {
		    $('#modalPeople').modal('hide');
		    return false;
		});
		
		
	});
</script>
<form action="modalPeople.do" method="post">
      <div class="modal fade" id="people" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="modal-dialog" id="peopleDialog">
            <div class="modal-content">
               <div class="modal-header" >
                  <button type="button" class="close" data-dismiss="modal">
                     <span aria-hidden="true">×</span><span class="sr-only">Close</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel" style="color:#6e7776;">인원 수 선택하기</h4>
               </div>
               <div class="modal-body mainModal" style="background-color:white; color:#6e7776; text-align : center;">
               		<span>인원</span>&emsp;
               		<button id="peopleup" class="btn btn-primary-outline" type="button">+</button>
               		&emsp;<span id="pcount"></span>&emsp;
               		<input type="hidden" name="modalPeople" id="modalPeople">
               		<button id="peopledis" class="btn btn-primary-outline" type="button">-</button>
               </div>
               <div class="modal-footer">
                   <button class="btn btn-primary-outline" id="peopleDelete" type="button">삭제</button> 
                   <button class="btn btn-primary-outline submit" id="peopleSubmit">적용하기</button> 
               </div>
            </div>
         </div>
      </div>
</form>
