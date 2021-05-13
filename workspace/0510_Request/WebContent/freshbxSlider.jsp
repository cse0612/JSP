<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>freshbxSlider.jsp 페이지</title>
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="http://code.jquery.com/jquery-3.3.1.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
	$(document).ready(function() {
		var main = $('.slider').bxSlider({
			mode : 'fade',   		// 이동효과
			auto : true, 			//자동으로 슬라이드 
			controls : true, 		//좌우 화살표	
			autoControls : true, 	//stop,play 
			pager : true, 			//페이징 
			pause : 3000,
			autoDelay : 0,
			speed : 500,
			stopAutoOnclick : true,
			autoHover: true
		});

		$(".bx-stop").click(function() { // 중지버튼 눌렀을때 
			main.stopAuto();
			$(".bx-stop").hide();
			$(".bx-start").show();
			return false;
		});

		$(".bx-start").click(function() { //시작버튼 눌렀을때 
			main.startAuto();
			$(".bx-start").hide();
			$(".bx-stop").show();
			return false;
		});

		$(".bx-start").hide(); //onload시 시작버튼 숨김. 
	});
</script>
</head>
<body>
<div class="title">
		<nav id="header">
			<div class="header_menu">
				<ul class="header_menu">
					<!-- 로그인 하지 않은 상태 -->					
						<li class="header_menu_item"><a href="#">로그인</a></li>
						<li class="header_menu_item1"><a href="Member_Form.jsp">회원가입</a></li>
						<li class="header_menu_item"><a href="#">고객센터</a></li>					
				</ul>
			</div>
		</nav>

		<div class="logo_srarch">
			<div class="header_logo">
				<a href="/main"> <img src="img/logo.png" class="logo">
				</a>
			</div>
		</div>
	</div>

	<div class="menu">
		<div class="navbar">
			<div class="navbar_menu">
				<ul class="navbar_menu_ul">
					<li><a href="/main"> 
						<img src="img/ham.png" class="ham"> 전체상품</a>
						<ul>
							<li><a> 채소 </a>
								<ul>
									<li><a href="/shop/list?c=11&l=10"> 채소 </a></li>
								</ul>
							</li>
							<li><a> 과일·견과·쌀 </a>
								<ul>
									<li><a href="/shop/list?c=21&l=20"> 제철과일 </a></li>
									<li><a href="/shop/list?c=22&l=20"> 과일 </a></li>
									<li><a href="/shop/list?c=23&l=20"> 견과류 </a></li>
									<li><a href="/shop/list?c=24&l=20"> 쌀·잡곡 </a></li>
								</ul>
							</li>
							<li><a> 수산·건어물 </a>
								<ul>
									<li><a href="/shop/list?c=31&l=30"> 제철수산 </a></li>
									<li><a href="/shop/list?c=32&l=30"> 생선류 </a></li>
									<li><a href="/shop/list?c=33&l=30"> 갑각류 </a></li>
									<li><a href="/shop/list?c=34&l=30"> 연체류 </a></li>
									<li><a href="/shop/list?c=35&l=30"> 조개류 </a></li>
									<li><a href="/shop/list?c=36&l=30"> 건어물 </a></li>
								</ul></li>
							<li><a> 정육·계란 </a>
								<ul>
									<li><a href="/shop/list?c=41&l=40"> 소고기 </a></li>
									<li><a href="/shop/list?c=42&l=40"> 돼지고기 </a></li>
									<li><a href="/shop/list?c=43&l=40"> 닭·오리 </a></li>
									<li><a href="/shop/list?c=44&l=40"> 계란류 </a></li>
								</ul>
							</li>
						</ul></li>
					<li> <a href="/shop/list?c=11&l=10"> 농산물 </a> </li>
                    <li> <a href="/shop/list?c=35&l=30"> 수산물 </a> </li>
                    <li> <a href="/shop/list?c=41&l=40"> 축산물 </a> </li>
                    <li> <a href="#benefit_item"> 알뜰쇼핑 </a> </li>
				</ul>
				<div class="search">
					<input type="text" name="keyword" class="search_text"
						placeholder="신선한 바른먹거리" value="${pageMaker.cri.keyword}">
					<input type="image" src="img/search.png"
						class="btn_search">
				</div>
			</div>
		</div>
	</div>
	<!-- 여기까지 기본 메인-->
		
	<div class="slider">	
		<div><img src="img/main_banner_1.jpg"/></div>
		<div><img src="img/main_banner_2.jpg"/></div>
		<div><img src="img/main_banner_3.gif"/></div>
		<div><img src="img/main_banner_4.gif"/></div>
		<div><img src="img/main_banner_5.gif"/></div>
		<div><img src="img/main_banner_6.gif"/></div>
		<div><img src="img/main_banner_7.jpg"/></div>
		<div><img src="img/main_banner_8.gif"/></div>	
	</div>
</body>
</html>
