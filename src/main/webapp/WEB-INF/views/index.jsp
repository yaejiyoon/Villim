<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Villim</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<!-- header css -->
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="css/header.css?var=1" />
<link rel="stylesheet" type="text/css" href="css/normalize.css?var=1" />
<link rel="stylesheet" type="text/css" href="../css/demo.css?var=1" />
<link rel="stylesheet" type="text/css" href="../css/component.css?var=1" />
<script src="../js/modernizr.custom.js"></script>

<style>
	.jumbotron {
		height : 700px;
		text-align: center;
	}
</style>
</head>
<body>
<%@ include file="../resource/include/header.jsp" %>
<div class="jumbotron">
  <h1>Hello, world!</h1>
  <p>...</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
</div>
<div id="wrapper" align="center">
		<h4> O U T P U T</h4>
		<h4>${result}</h4>
	</div>
	
<%@ include file="../resource/include/footer.jsp" %>
</body>
</html>