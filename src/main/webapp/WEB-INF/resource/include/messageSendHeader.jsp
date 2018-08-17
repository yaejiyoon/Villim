<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- header css -->
<link rel="shortcut icon" href="../favicon.ico">
<link href="<c:url value="/resources/css/main/header.css?var=2" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main/demo.css?var=3" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/main/component.css?var=1" />"
	rel="stylesheet" />

<script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>



<script>
	$(document).ready(function(){
		$(document).click(function(event) {
			  if(
			    $('.toggle > input').is(':checked') &&
			    !$(event.target).parents('.toggle').is('.toggle')
			  ) {
			    $('.toggle > input').prop('checked', false);
			  }
		});
		
		$("#toindex").click(function(){
			$(location).attr("href","/");
		});
		
		$("#tohome_info").click(function(){
			$(location).attr("href","home_info.do");
		});
	})
</script>


    <div id="header">
      <div id="header-logo">
         <img src="<c:url value='/resources/img/logo2.png'/>" id="toindex">
      </div>

      <div id="header" class="header" >
         <section class="color-5">
            <nav class="cl-effect-5">
            	<div id="header" class="header">
               		<a href="javascript:history.back()" style=" width:100%;color:black;  overflow: hidden; position:relative;left:-33vw;  font-size: 0.93vw; font-weight: bold; padding-left: 0vw;">
               			<span style="color:black;"> ◀ 숙소 세부정보로 돌아가기</span>
               			
               		</a>
               </div>
              


            </nav>
         </section>
      </div>

   </div>

