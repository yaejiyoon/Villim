<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="https://www.sandbox.paypal.com/cgi-bin/webscr"
		method="post">

		<input type="hidden" name="cmd" value="_xclick"> <input
			type="hidden" name="business" value="testvillim@test.com"> 상품명
		: <input type="text" name="item_name" value="Content Name">

		상품코드 : <input type="text" name="item_number" value="0001"> 통화
		: <input type="text" name="currency_code" value="USD"> 가격 : <input
			type="text" name="amount" value="10"> <input type="hidden"
			name="custom" value="11111"> <input type="hidden"
			name="charset" value="UTF-8"> 
			
			<button type="submit">결제</button>
			

	</form>
</body>
</html>