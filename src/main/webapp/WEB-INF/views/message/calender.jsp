<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- animated -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Baloo|Ubuntu" rel="stylesheet">
<title>Insert title here</title>
<style>
#body{
	display: flex;
	align-items: center;
    width:50%;
	flex-direction: column;
	font-family:  "Baloo";
}
input, textarea {
	padding: 0;
	border: none;
}
.flex {
	display: flex;
}
.flex.center-v {
	align-items: center;
}
.flex.center-h {
	justify-content: center;
}
.flex.center-vh {
	align-items: center;
	justify-content: center;
}
.flex.start {
	justify-content: flex-start;
}
.flex.end {
	justify-content: flex-end;
}
.flex.around {
	justify-content: space-around;
}
.flex.between {
	justify-content: space-between;
}
.flex.row {
	flex-direction: row;
}
.flex.column {
	flex-direction: column;
}
.flex.wrap {
	flex-wrap: wrap;
}
.disable-select {
  -webkit-user-select: none;  
  -moz-user-select: none;    
  -ms-user-select: none;      
  user-select: none;
}
.clickable, #calender-title, 
#calender-panel, #calender-buttons {
	cursor: pointer;
}
.colorRed {
	color: #FF6B6B;
}
.bgColorRed {
	background-color: #FF6B6B;
}
.bgColorDarkRed {
	background-color: #bc6969;	
}
.width-full {
	width: 100%;
}
.width-half {
	width: 50%;
}
.width-3-4 {
	width: 75%;
}
.width-1-4 {
	width: 25%;
}
.overflow-hidden {
	overflow: hidden;
}


#calender-wrapper {
	position: relative;
	border: 6px solid #FF6B6B;
	border-radius: 10px;
	overflow: hidden;
	width:50%;
}

#calender-panel {
	z-index: 5;
  position: relative;
	background: #FF6B6B;
	border-top: 6px solid #FF6B6B;
	color: white;
	font-size: 30pt;
	height: 60px;
}

#calender-panel p {
	padding-right: 20px;
}
#calender-panel p:hover {
	cursor: pointer;
	transition: .2s;	
}

#calender-title {
	background: #FF6B6B;
	color: white;
	font-size: 30pt;
	height: 60px;
}

#calender-title div {
	height: 60px;
	width: 60px;
}
#calender-title p {
	height: 60px;
	width: 150px;	
} 

#calender-title #left:hover span {
	padding-right: 10px;
	transition: .2s;
}
#calender-title #right:hover span {
	padding-left: 10px;
	transition: .2s;
}

#calender-content {
	width: 700px;
	padding: 10px;
}
#calender-panel #info {
	border-right: 6px solid #FF6B6B;
	height: 100%;
	width: 75%;
	font-size: 13pt;
}
#calender-panel #info div {
	padding-left: 20px;
	width: 100%;
	height: 50%;
}
#calender-panel #info div p {
	width: 50%;
	height: 100%;
	border-right: 6px solid #FF6B6B;
}

#calender-panel #clear {
	height: 100%;
	width: 25%;
	line-height: 12px;
	font-size: 14pt;
	text-align: center;
	transition: .4s;
}
#calender-panel #clear:hover {
	background: #965252;
}
#calender-panel #clear p {
	padding: 0;
	margin: 0;
}

#calender-buttons {
	margin-top: 20px;
	width: 720px;
	height: 60px;
	background: #FF6B6B;
	border: 6px solid #FF6B6B;
	border-radius: 10px;
	transition: .4s;
}
#calender-buttons:hover {
	height: 70px;	
}
#make-booking {
	height: 100%;
	font-size: 20pt;
	color: white;
}
#remove-booking {
	height: 100%;
	font-size: 20pt;
	color: white;
}
#calender-buttons div:hover {
	background-color: #bc6969;
}
#booking-wrapper {
	position: absolute;
	height: 650px;
	width: 720px;
	background: white;
	border-radius: 10px 10px 0 0;
	margin-top: 150px;
	transition: .4s;
	overflow: hidden;
}
#booking-wrapper.opened {
	margin-top: -645px;
}
#booking-title {
	color: white;
	font-size: 30pt;
	height: 60px;
	width: 100%;
}
#booking-form {
	height: 685px;
	width: 98%;
	padding: 10px;
	background: #FF6B6B;
}
#booking-form p {
	margin: 20px 0 0 0;
	color: white;
	font-size: 14pt;
}
#booking-form > div:nth-child(1) p {
	margin: 0;
}
#booking-form input {
	height: 50px;
}
#booking-form textarea {
	height: 270px;
	resize: none;
}
#booking-form textarea, input {
	background: white;
	color: #FF6B6B;
	font-family: "Baloo";
	font-size: 14pt;
}
#booking-form .width-3-4 {
	border-right: 6px solid #FF6B6B;
}

.month {
	width: 100px;
	height: 100px;
	transition: .4s;
}

#days p {
	width: 100px;
	text-align: center;	
	font-size: 15pt;
}

.month-selector {
	width: 100%;
	height: 100%;
	transition: .4s;
	position: relative;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}
	.month-selector.clicked {
		background: #FF6B6B;
		color: white;
	}
	.month-selector.booked {
		background: #743131;
		color: white;
		overflow: hidden;
	}
		.month-selector.booked:after {
			content: 'X';
			position: absolute;
			margin-top: -3px;
			font-size: 100pt;
			font-family: "Ubuntu";
			opacity: 0.1;
		} 
		.month-selector.booked.clicked {
			background: #894747;
			color: white;
			overflow: hidden;
		}
.booked:hover {
	z-index: 3;
	height: 110px;
	width: 110px;
	background: #894747;
	box-shadow: 0px 0px 13px 4px rgba(0, 0, 0, 0.14);
	cursor: pointer;
}
.clickable:hover {
	z-index: 3;
	height: 110px;
	width: 110px;
	box-shadow: 0px 0px 13px 4px rgba(0, 0, 0, 0.14);
	background: #FF6B6B;
	color: white;
}
</style>
<script>


var currentMonth = new Date().getMonth();
var currentYear = new Date().getFullYear();
var clickedDays = 0;
var bookingSteps = 0;
var lastClickedDay;
var startDate = "";
var endDate = "";
var monthNames = ["January", "February", "March", "April", "May", "June",
	"July", "August", "September", "October", "November", "December"
];
var monthShortNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
var dayNames = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
var bookedDates = [];
var selectedDates = [];

Date.prototype.addDays = function(days) {
	var dat = new Date(this.valueOf())
	dat.setDate(dat.getDate() + days);
	return dat;
}
function clearCalender() {
	clickedDays = 0;
	$(".month div").removeClass("clicked");
	$("#startdate").html("");
	$("#enddate").html("");

	startDate = "";
	endDate = "";
	selectedDates = [];
	bookingSteps = 0;
}
function clearBooking() {
	$("#booking-form input").val("");
	$("#booking-form textarea").val("");
	
	$("#booking-wrapper").removeClass("opened");
	$("#make-booking").html("MAKE BOOKING ENQUIRY");
	
	
}
function daysInMonth(month) {
	return new Date(currentYear, month, 0).getDate();
}
function displayCalender() {
	var days = daysInMonth(currentMonth + 1);

	$("#calender-title p").html(monthNames[currentMonth].toUpperCase());
	$("#calender-content").html("");

	for (var i = 1; i < firstDayOffset(new Date()); i++) {
		$("#calender-content").append("<div class='month flex center-vh'></div>");
	}
	for (var i = 1; i <= days; i++) {
		var day = new Date(currentYear, currentMonth, i).getDay();
		var string = "<div class='month'><div id='" + dayNames[day] + "-" + i + "-" + monthNames[currentMonth] + "-" + currentYear + "'class='month-selector flex center-vh clickable' onclick='monthClick(this)'><p>" + i + "</p></div></div>";
		$("#calender-content").append(string);
	}

	checkSelected();
	checkBookings();
}
function monthClick(e) {
		clickedDays += 1;

		if (clickedDays == 1) {
			$(e).toggleClass("clicked");
			startDateIndex = parseInt($(e).attr('id').split('-')[1]);
			startDate = new Date(currentYear, currentMonth, startDateIndex);
		}
		if (clickedDays > 1) {
			endDateIndex = parseInt($(e).attr('id').split('-')[1]);
			endDate = new Date(currentYear, currentMonth, endDateIndex);
		}
		if (endDate > startDate) {
			var clicked = $(".clicked");
			$(clicked).not(clicked[0]).removeClass("clicked");
			$(e).toggleClass("clicked");

			dateArray = getDates(startDate, endDate);
			dateArray = formatDates(dateArray)
			selectedDates = dateArray;

			for (var i = 0; i < dateArray.length; i++) {
				$("#" + dateArray[i]).addClass("clicked");
			}
		}
		$("#startdate").html(startDate.toString().split(' ').slice(0, 4).join(' '));
		$("#enddate").html(endDate.toString().split(' ').slice(0, 4).join(' '));
}
function firstDayOffset(date) {
	return new Date(currentYear, currentMonth, 1).getDay();
}
function checkBookings() {
	if (bookedDates != null) {
		for (var i = 0; i < bookedDates.length; i++) {
			var inner = bookedDates[i];
			for (var j = 0; j < inner.length; j++) {
				$("#" + inner[j]).removeClass("clickable").delay(400).addClass("booked");
			}
		}
	}
}
function checkSelected() {
	selectedDates = getDates(startDate, endDate);
	selectedDates = formatDates(selectedDates);

	if (selectedDates != null) {
		for (var i = 0; i < selectedDates.length; i++) {
			$("#" + selectedDates[i]).addClass("clicked");
		}
	}
}
function addBooking() {
	bookedDates.push(dateArray);
	clearCalender();
	displayCalender();
}
function formatDates(dates) {
	if (dates != null) {
		var newDateArray = [];
		for (var i = 0; i < dates.length; i++) {
			var date = "";
			date += dayNames[dates[i].getDay()] + "-";
			date += dates[i].getDate() + "-";
			date += monthNames[dates[i].getMonth()] + "-";
			date += dates[i].getFullYear();
			newDateArray.push(date);
		}
		return newDateArray;
	}
	return null;
}
function getDates(startDate, stopDate) {
	if (startDate != "" && endDate != "") {
		var dateArray = new Array();
		var currentDate = startDate;
		while (currentDate <= stopDate) {
			dateArray.push(new Date(currentDate))
			currentDate = currentDate.addDays(1);
		}
		return dateArray;
	}
	return null;
}

$(function() {
	displayCalender(currentMonth)
	$("#date").append(new Date);
});

$("#left").on("click", function() {
	if (currentMonth > 0)
		currentMonth -= 1;
	else {
		currentMonth = 11;
		currentYear -= 1;
	}
	displayCalender();
});
$("#right").on("click", function() {
	if (currentMonth < 11)
		currentMonth += 1;
	else {
		currentMonth = 0;
		currentYear += 1;
	}
	displayCalender();
});
$("#clear").on("click", function() {
	clearCalender();
	clearBooking();
});
$("#make-booking").on("click", function() {
	if(selectedDates != null && selectedDates.length > 0) {
		bookingSteps += 1;
		
		if(bookingSteps == 1) {
			clearBooking();
			addBooking();
		}
	}
});
$("#remove-booking").on("click", function() {
	if(selectedDates != null && selectedDates.length > 0) {
		bookingSteps += 1;
		
		if(bookingSteps == 1) {
			clearBooking();
			addBooking();
		}
	}
});
</script>
</head>
<body>

<div id="body">
<div id="calender-wrapper">
	<div id="calender-title" class="disable-select flex row center-v around">
		<div id="left" class="flex row center-vh"><span><</span></div>
		<p class="flex row center-vh"></p>
		<div id="right" class="flex row center-vh"><span>></span></div>
	</div>
	<div id="days" class="flex row center-vh colorRed disable-select">
		<p>MON</p>
		<p>TUE</p>
		<p>WEDS</p>
		<p>THURS</p>
		<p>FRI</p>
		<p>SAT</p>
		<p>SUN</p>
	</div>
	<div id="calender-content" class="flex row wrap disable-select">
	</div>
	<div id="calender-panel" class="flex row center-v end">
		<div id="info" class="flex column center-vh bgColorDarkRed">
			<div id="info-titles" class="flex row center-vh">
				<p class="flex column center-vh">Start Date</p>
				<p class="flex column center-vh">End Date</p>
			</div>
			<div class="flex row center-vh bgColorRed">
				<p class="flex column center-vh" id="startdate"></p>
				<p class="flex column center-vh" id="enddate"></p>
			</div>
		</div>
		<div id="clear" class="flex column center-vh bgColorDarkRed">
			<p>CLEAR SELECTION</p>
		</div>
	</div>
</div>
	
<div id="calender-buttons" class="flex row center-vh wrap">
	<div id="make-booking" class="flex column center-vh width-half">
		<p>MARK AVAILABLE</p>
	</div>
	<div id="remove-booking" class="flex column center-vh width-half">
		<p>MARK UNAVAILABLE</p>
	</div>
</div>

</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>