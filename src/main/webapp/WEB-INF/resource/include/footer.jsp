<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
div{
		box-sizing: border-box;
	}
	
	#footer{
		width:100%;
		height:400px;
		border-top: 1px solid #bababa;
	}
	
	body{
		margin-top:10px;
		font-family: font;
	}
	
	@font-face {
  		font-family: font;
  		src: url('BMJUA.ttf');
	}
	
	#footer-contents{
		margin:0px auto;
		width:70%;
		height:70%;
	}
	
	.contents{
		float:left;
		width:25%;
		height:100%;
		padding-top: 40px;
	}
	
	.contents li{
		list-style: none;
		margin-bottom: 5px;
		color:#8c8c8c;
	}
	
	.contents ul{
		padding-left: 0px;
	}
	
	.contents a{
		color:#8c8c8c;
		text-decoration: none;
	}
	
	.contents a:hover{
		text-decoration: underline;
	}
	
	.contents a:visited{
		color:#8c8c8c;
		text-decoration: none;
	}
	
	.contents img{
		width:30px;
	}
	
	#footer-logo{
		margin:0px auto;
		width:70%;
		height:30%;
		padding-top: 10px;
		border-top: 1px solid #bababa;
	}
	
	#footer-logo img{
		width:80px;
		padding-top: 10px;
	}
	
	#footer-logo span{
		margin: 0px;
	}
</style>

<div id="footer">
		<div id="footer-contents">
			<div id="contents01" class="contents">
				<span>에어비엔비</span>
				<ul>
					<li><a href="">채용정보</a></li>
					<li><a href="">미디어</a></li>
					<li><a href="">정책</a></li>
					<li><a href="">도움말</a></li>
					<li><a href="">다양성과 소속감</a></li>
				</ul>
			</div>
			<div id="contents02" class="contents">
				<span>여행하기</span>
				<ul>
					<li><a href="">신뢰와 안전</a></li>
					<li><a href="">친구 초대하기</a></li>
					<li><a href="">Villim Citizen</a></li>
					<li><a href="">비지니스 프로그램</a></li>
					<li><a href="">가이드북</a></li>
					<li><a href="">villimmag</a></li>
					<li><a href="">에어비앤비 이벤트</a><img src="img/new.png" style="widht:10px; margin-left: 5px;"></li>
					<li><a href="">한국의 변경된 환불 정책</a></li>
				</ul>
			</div>
			<div id="contents03" class="contents">
				<span>호스팅하기</span>
				<ul>
					<li><a href="">호스팅의 장점</a></li>
					<li><a href="">호스트 추천하기</a> <img src="img/new.png" style="widht:10px; margin-left: 5px;"></li>
					<li><a href="">호스팅 기준</a></li>
					<li><a href="">책임감 있는 호스트 되기</a></li>
					<li><a href="">커뮤니티 센터</a></li>
				</ul>
			</div>
			<div id="contents04" class="contents">
				<img src="img/facebook.png" style="margin-left:5px;">
				<img src="img/twitter.png" style="margin-left:5px;">
				<img src="img/instagram.png" style="margin-left:8px;">
				
				<ul>
					<li><a href="">이용약관</a></li>
					<li><a href="">개인정보 보호정책</a></li>
					<li><a href="">여행지 찾기</a></li>
				</ul>
			</div>
		</div>
		<div id="footer-logo">
			<img src="img/logo.png">
			<img src="img/copyright.png" style="width:15px;">
			<span>villim, Inc.</span>
			
		</div>
	</div>