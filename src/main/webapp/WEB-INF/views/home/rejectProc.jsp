<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="messageRoomEnter.msg" method="post" id="mrForm">
		<input type="hidden" name="message_room_seq" value="${message_room_seq}">
		<input type="hidden" name="home_seq" value="${home_seq}">
		<input type="hidden" name="member_picture" value="${memberDTO.member_picture}">
		<input type="hidden" name="member_name" value="${memberDTO.member_name}">
		<input type="hidden" name="member_email" value="${memberDTO.member_email}">
		<input type="hidden" name="message_seq" value="13">
	</form>
	<c:if test="${paymentResult>0}">
		<script>
			/* mrForm.submit(); */
			location.href="/";
		</script>  
	</c:if>
</body>
</html>