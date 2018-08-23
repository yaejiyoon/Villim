<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="shortcut icon" href="<c:url value='/resources/img/titleLogo.png'/>" />


<link href="<c:url value="../../resources/css/home/dist/css/lightgallery.css" />" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


<style>
	#lightgallery{
		list-style: none;
		width:20px !important;
	}
	
	#1stPhoto{
		
	}
</style>

</head>
<body>
	

	<div>
            <ul id="lightgallery" class="list-unstyled row">
                <li id="1stPhoto" data-src="<c:url value='/resources/img/1.jpg'/>" data-sub-html="<h4>Fading Light</h4><p>Classic view from Rigwood Jetty on Coniston Water an old archive shot similar to an old post but a little later on.</p>">
                    <a href="">
                        <button><img class="img-responsive" src="<c:url value='/resources/img/1.jpg'/>" style="display: none;"></button>
                    </a>
                </li>
                <li data-src="<c:url value='/resources/img/home.jpg'/>" data-sub-html="<h4>Bowness Bay</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy I was passing the right place at the right time....</p>">
                    <a href="">
                        <img class="img-responsive" src="<c:url value='/resources/img/home.jpg'/>" style="display: none;">
                    </a>
                </li>
                
            </ul>
        </div>
        
        <script type="text/javascript">
        $(document).ready(function(){
            $('#lightgallery').lightGallery();
        });
        </script>
	
	<script src="https://cdn.jsdelivr.net/picturefill/2.3.1/picturefill.min.js"></script>
	<script src="<c:url value="../../resources/css/home/dist/js/lightgallery-all.min.js" />"></script>
	<script src="<c:url value="../../resources/css/home/lib/jquery.mousewheel.min.js" />"></script>
	
	
	
</body>
</html>