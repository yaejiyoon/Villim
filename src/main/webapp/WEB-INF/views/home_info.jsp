<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HOME</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<style>
   @font-face {
        font-family: font;
        src: url('<c:url value='/resources/fonts/BMJUA.ttf'/>');
   }
   
   div{
      box-sizing: border-box;
      border: 1px solid black;
   }
   
   #info-wrapper{
      width:100%;
      height:6000px;
   }
   
   #info-contents{
      width:100%;
      height:100%;
   }
   
   #info-contents-photo{
      width:100%;
      height:8%;
   }
   
   #info-contents-main{
      margin:0 auto;
      width:58%;
      height:92%;
   }
   
   #info-main-left{
      float:left;
      width:60%;
      height:100%;
   }
   
   #info-main-right{
      float:left;
      width:40%;
      height:100%;
   }
   
   #info-main01{
      width:100%;
      height:20%;
   }
   
   #info-main02{
      width:100%;
      height:8%;
   }
   
   #info-main03{
      width:100%;
      height:8%;
   }
   
   #info-main04{
      width:100%;
      height:5%;
   }
   
   #info-main05{
      width:100%;
      height:9%;
   }
   
   #info-main06{
      width:100%;
      height:30%;
   }
   
   #info-main07{
      width:100%;
      height:10%;
   }
   
   #info-main08{
      width:100%;
      height:10%;
   }
   
</style>
</head>
<body>
   <%@ include file="../resource/include/header.jsp" %>
   
   <div id="info-wrapper">
      <div id="info-contents">
         <div id="info-contents-photo"></div>
         <div id="info-contents-main">
            <div id="info-main-left">
               <div id="info-main01"></div>
               <div id="info-main02"></div>
               <div id="info-main03"></div>
               <div id="info-main04"></div>
               <div id="info-main05"></div>
               <div id="info-main06"></div>
               <div id="info-main07"></div>
               <div id="info-main08"></div>
            </div>
            <div id="info-main-right">
            </div>
         </div>
      </div>
   </div>
   
   <%@ include file="../resource/include/footer.jsp" %>
</body>
</html>