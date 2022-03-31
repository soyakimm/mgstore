<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>header</title>
	<!-- favicon -->
    <link href="${ pageContext.servletContext.contextPath }/resources/images/common/favicon.ico" rel="shortcut icon"/>
    <!-- 웹폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
	<!-- 스타일시트 -->
	<style>
		@charset "UTF-8";

		/* 상단 팝업 광고 */
		.popup {
		    height: 45px;
		    background: #f5742f;
		    display: block;
		}
		
		/* 헤더 */
		#header {
		    position: relative;
		    flex-direction: row;
		    justify-content: center;
		    width: 100%;
		    height: 115px;
		    background-color: #fff;
		    border-bottom: 1px solid rgba(229, 229, 229, 1);
		}
		
		/* 페이지 크기 정렬 */
		.header-wrapper {
		    max-width: 1400px;
		    margin: 0 auto;
		}
		
		/* 메인 헤더 */
		.header-main {
		    height: 58px;
		    position: relative;
		    display: flex;
		    align-items: center;
		    border-bottom: 1px solid rgba(229, 229, 229, 1);
		}
		
		/* 메인 헤더 - 로고 */
		.header-logo {
		    left: 19px;
		    object-fit: cover;
		    width: 97px;
		}
		
		/* 메인 헤더 - 사이트 구분 */
		.header-link-comm-store button {
		    font-size: 18px;
		    font-weight: 700;
		}
		
		.header-comm-store-hover button:hover {
		    color: #f5742f;
		}
		
		.header-link-comm-store {
		    display: block;
		    list-style-type: disc;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding-inline-start: 40px;
		    padding-inline-end: 40px;
		}
		
		.header-link-comm-store li {
		    display: inline-block;
		    margin-inline-start: 20px;
		    margin-inline-end: 20px;
		}
		
		/* 메인 헤더 - 통합검색 */
		.header-main .header-top-search-form {
		    display: flex;
		    margin: 0 auto;
		}
		
		.header-search-bar input[type="text"] {
		    border: 1px solid #4e4a4a;
		    border-radius: 36px;
		    width: 434px;
		    height: 42px;
		    font-size: 18px;
		    padding-left: 50px;
		}
		
		.header-search-icon {
		    position: absolute;
		    top: 20px;
		    left: 430px;
		    height: 14px;
		    width: 14px;
		}
		
		/* 환영 문구, 장바구니, 로그인, 회원가입 */
		header button {
		    border: 0 none;
		    background-color: transparent;
		    cursor: pointer;
		}
		
		.header-button-box button {
		    font-size: 14px;
		    margin-inline-start: 20px;
		}
		
		.header-button-box .header-line {
		    color: #767676;
		    font-size: 10px;
		    line-height: 100px;
		    margin-inline-start: 20px;
		}
		
		.header-button-box img {
		    margin: 0;
		    margin-inline-start: 20px;
		    line-height: 80px;
		}
		
		.header-button-box .header-message {
			font-size: 14px;
			text-align: center;
		}
		
		.header-button-box {
		    display: flex;
		    margin-left: auto;
		    justify-content: space-between;
		    align-items: center;
		}
		
		.flipeffect {
			position: relative;
		}
		.flipeffect span {
			position: relative;
			display: inline-block;
			animation: flip 2s infinite;
			animation-delay: calc(.2s * var(--i))
		}
		
		@keyframes flip {
			0%, 80% {
				transform: rotateY(360deg)
			}
		}
		
		/* 서브 헤더 */
		.header-sub {
		    height: 58px;
		    display: flex;
		}
		
		/* 서브 헤더 - 타이틀 */
		.header-menu {
		    display: flex;
		}
		
		.header-category-icon {
		    display: flex;
		    width: 18px;
		    line-height: 100px;
		}
		
		.header-title {
		    display: flex;
		}
		
		.header-title a {
		    display: flex;
		}
		
		/* 마이페이지 - 전체 카테고리 */
		.mypage {
			position: relative;
			display: inline-block;
		}
		
		.mypage-content {
			display: none;
			position: absolute;
			z-index: 1;
		}
		
		.mypage-content a {
			display: block;
		}
		
		.mypage:hover .mypage-content {
			display: block;
		}
		
		/* 서브 헤더 - 전체 카테고리 */
		header .header-all-category {
		    z-index: 1;
		    display: flex;
		    width: 36px;
		}
		
		header .show-all-list .header-all-category-title {
		    font-size: 18px;
		    font-weight: 700;
		}
		
		header .show-all-list:hover .header-category-icon {
		    transform: rotate(90deg);
		    transition-duration: 0.7s;
		    filter: invert(69%) sepia(35%) saturate(7370%) hue-rotate(341deg) brightness(99%) contrast(93%);
		}
		
		header .show-all-list:hover {
		    color: #f5742f;
		}
		
		.header-menu .header-title .header-all-category .header-all-category-container .header-all-list-contents {
		    position: absolute;
		    width: 1000px;
		    display: none;
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents {
		    display: block;
		    margin: 0 auto;
		}
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list {
		    background: rgba(255, 255, 255, 0.6);
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list > h2 {
		    margin: 0;
		    color: #767676;
		    text-align: start;
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list > ul {
		    display: flex;
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list > ul > li {
		    text-align: start;
		    margin-inline-end: 20px;
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list > ul > li h3 {
		    padding: 0;
		    text-align: center;
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list > ul > li ul li a {
		    font-size: 12px;
		    color: #767676;
		    cursor: poniter;
		    width: 140px;
		}
		
		.header-menu .header-title .show-all-list:hover .header-all-category .header-all-category-container .header-all-list-contents .header-all-list > ul > li ul li a:hover {
		    color:#f5742f;
		    cursor: pointer;
		}
		
		.menu-line {
			border-right: 1px dashed #E5E5E5;
		    height: 170px;
		    margin-top: 30px;
		}
		
		.show-all-list {
			display: flex;
			height: 58px;
		}
		
		.show-all-list .header-all-category-title {
			height: 100%;
			margin-right: 36px;
			line-height: 52px;
		}
		
		.show-all-list .header-category-icon {
			margin-top: 17px;
			margin-left: 0;
			margin-right: 10px;
			align-items: center;
		}
		
		/* 서브 헤더 - 메뉴 리스트 */
		header nav {
		    display: flex;
		    height: 58px;
		}
		
		header #header-nav a {
		    display: flex;
		    width: 100px;
		    height: 100%;
		    font-size: 18px;
		    line-height: 20px;
		}
		
		header #header-nav a:hover {
		    color: #f5742f;
		}
		
		header #header-nav li {
		    margin: 0;
		    display: inline-block;
		}
		
		/* 전체 효과 */
		header div {
		    display: block;
		    font-family: 'Noto Sans KR', sans-serif;
		}
		
		header dl, ul, ol, li {
		    list-style: none;
		}
		
		header a {
		    color: #000;
		    text-decoration-line: none;
		    font-family: 'Noto Sans KR', sans-serif;
		}
		
		body {
			margin: 0;
		}
	</style>
</head>
<body>
	<!-- 상단 팝업 광고 -->
    <div class="popup">
        <a href=""><img src=""></a>
    </div>
    <header id="header">
        <div class="header-wrapper">
            <!-- 헤더 레이아웃 -->
            <div class="header-layout">
                <!-- 메인 헤더(로고, 사이트 구분, 통합검색, 버튼 박스)-->
                <div class="header-main">
                    <div class="header-logo-box">
                        <a href="${ pageContext.servletContext.contextPath }/">
                            <img class="header-logo" src="${ pageContext.servletContext.contextPath }/resources/images/common/logo.png" alt="멍개상점">
                        </a>
                    </div>
                    <ul class="header-link-comm-store header-comm-store-hover">
                        <li class="header-community-button"><button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/community/main'"  style="color: #f5742f">커뮤니티</button></li>
                        <li class="header-store-button on"><button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/'">스토어</button></li>
                    </ul>
                    <form name="header-top-search-form" action="${ pageContext.servletContext.contextPath }/search/result?page=1&search=">
                        <div class="header-search-bar">
                            <label class="header-search-box">
                                <input type="text" name="header-search" id="header-search" placeholder="멍개상점 통합검색">
                            </label>
                        </div>
                        <button type="button" class="header-search-icon">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/common/search.svg" alt="검색하기">
                        </button>
                    </form>
                    
                    <!-- 비로그인 -->
                    <c:if test="${ empty sessionScope.loginUser }">
                    <div class="header-button-box">
                    	<!-- 환영 메시지 -->
                        <div class="header-welcome">
                            <span class="header-message">365일 24시간, 여기가 
                            <b class="flipeffect" style="color: #f5742f;">
	                            <span style="--i:1">멍</span>
	                            <span style="--i:2">~</span>
	                            <span style="--i:3">개</span>
                            </b>
                            </span>
                        </div>
                    	<!-- 장바구니/로그인/회원가입 -->
	                    <div class="header-line"><span> | </span></div>
	                    <a href="${ pageContext.servletContext.contextPath }/user/login">
	                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/common/cart.svg" alt="장바구니">
	                    </a>
	                    <div class="header-line"><span> | </span></div>
	                    <button class="login" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/login">로그인</a>
	                    </button>
	                    <div class="header-line"><span> | </span></div>
	                    <button class="regist" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/regist">회원가입</a>
	                    </button>
	                </div>
                    </c:if>
                    
                    <!-- 로그인(회원) -->
                    <c:if test="${ !empty sessionScope.loginUser && sessionScope.loginUser.role == '회원' }">
                    <div class="header-button-box">
                    	<!-- 환영 메시지 -->
                        <div class="header-welcome">
                            <span class="header-message">
                            <b class="flipeffect" style="color: #f5742f;">
	                            <span style="--i:1">${ sessionScope.loginUser.nickname }</span>
                            </b>
                             님 안녕하세요!
                            </span>
                        </div>
                    	<!-- 장바구니/마이페이지/로그아웃 -->
	                    <div class="header-line"><span> | </span></div>
	                    <a href="${ pageContext.servletContext.contextPath }/user/cart">
	                    	<img src="${ pageContext.servletContext.contextPath }/resources/images/common/cart.svg" alt="장바구니">
	                    </a>
	                    <div class="header-line"><span> | </span></div>
	                    <button class="mypage" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/mypage">마이페이지</a>
	                    	<div class="mypage-content"><a href="${ pageContext.servletContext.contextPath }/myshopping/wishList">마이쇼핑</a></div>
	                    </button>
	                    <div class="header-line"><span> | </span></div>
	                    <button class="regist" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/logout">로그아웃</a>
	                    </button>
	                </div>
                    </c:if>
                    
                    <!-- 로그인(관리자) -->
                    <c:if test="${ !empty sessionScope.loginUser && sessionScope.loginUser.role == '관리자' }">
                    <div class="header-button-box">
                    	<!-- 환영 메시지 -->
                        <div class="header-welcome">
                            <span class="header-message">
                            <b class="flipeffect">
	                            <span style="--i:1">관리자</span>
                            </b>
                            로 로그인 중입니다
                            </span>
                        </div>
                    	<!-- 관리자페이지/로그아웃 -->
	                    <div class="header-line"><span> | </span></div>
	                    <button class="admin" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/adminmain">관리자페이지</a>
	                    </button>
	                    <div class="header-line"><span> | </span></div>
	                    <button class="logout" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/logout">로그아웃</a>
	                    </button>
	                </div>
                    </c:if>
                </div>
            </div>
            <!-- 서브 헤더(스토어는 상세 카테고리 포함) -->
            <div class="header-sub" id="store-sub">
                <div class="header-menu">
                    <div class="header-title">
                    	<button class="show-all-list" type="button">
	                    	<!-- 커뮤니티 -->
	                    	<img class="header-category-icon freeboard" src="${ pageContext.servletContext.contextPath }/resources/images/common/comm-list.png" alt="자유게시판">
	                    	<div class="header-all-category-title" href="${ pageContext.servletContext.contextPath }/community/main">자유게시판</a></div>
	                    	<!-- 스토어 -->
	                    	<img style="display: none" class="header-category-icon category" src="${ pageContext.servletContext.contextPath }/resources/images/common/store-list.svg" alt="카테고리">
	                    	<div style="display: none" class="header-all-category-title">카테고리</div>
	                        <ul style="display: none" class="header-all-category">
	                            <li class="header-all-category-container">
	                                <div class="header-all-list-contents">
	                                    <div class="header-all-list" style="width: 1230px; background: rgba(255, 255, 255, 0.8);">
	                                        <h2>ALL CATEGORY</h2>
	                                        <ul class="header-inner-list">
	                                            <li>
	                                                <h3>사료</h3>
	                                                <ul>
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 어덜트(1~7세)</a></li>
	                                                    <li><a>- 시니어(7세 이상)</a></li>
	                                                    <li><a>- 전연령</a></li>
	                                                    <li><a>- 건식</a></li>
	                                                    <li><a>- 습식/소프트</a></li>
	                                                    <li><a>- 에어/동결</a></li>
	                                                    <li><a>- 자연식/화식</a></li>
	                                                </ul>
	                                            </li>
	                                            <li class="menu-line"></li>
	                                            <li>
	                                                <h3>간식</h3>
	                                                <ul>                                    
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 껌</a></li>
	                                                    <li><a>- 동결/건조</a></li>
	                                                    <li><a>- 사사미/육포</a></li>
	                                                    <li><a>- 수제간식</a></li>
	                                                    <li><a>- 캔/파우치</a></li>
	                                                    <li><a>- 비스킷/빵/케이크</a></li>
	                                                    <li><a>- 기타간식</a></li>
	                                                </ul>    
	                                            </li>
	                                            <li class="menu-line"></li>
	                                            <li>
	                                                <h3>케어</h3>
	                                                <ul>                                    
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 영양제</a></li>
	                                                    <li><a>- 위생</a></li>
	                                                    <li><a>- 미용/목욕/칫솔</a></li>
	                                                    <li><a>- 배변</a></li>
	                                                    <li><a>- 눈/귀 관리</a></li>
	                                                </ul>    
	                                            </li>
	                                            <li class="menu-line"></li>
	                                            <li>
	                                                <h3>리빙</h3>
	                                                <ul>                                    
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 안전문/울타리</a></li>
	                                                    <li><a>- 하우스/방석</a></li>
	                                                    <li><a>- 급식기/급수기</a></li>
	                                                </ul>    
	                                            </li>
	                                            <li class="menu-line"></li>
	                                            <li>
	                                                <h3>외출</h3>
	                                                <ul>                                    
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 이동장/유아차</a></li>
	                                                    <li><a>- 가방/카시트</a></li>
	                                                    <li><a>- 가슴줄/리드줄/하네스</a></li>
	                                                </ul>    
	                                            </li>
	                                            <li class="menu-line"></li>
	                                            <li>
	                                                <h3>장난감</h3>
	                                                <ul>                                    
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 노즈워크</a></li>
	                                                    <li><a>- 장난감</a></li>
	                                                </ul>    
	                                            </li>
	                                            <li class="menu-line"></li>
	                                            <li>
	                                                <h3>패션</h3>
	                                                <ul>                                    
	                                                    <li><a>- 전체</a></li>
	                                                    <li><a>- 의류</a></li>
	                                                    <li><a>- 악세사리</a></li>
	                                                </ul>    
	                                            </li>
	                                        </ul>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>    
                    	</button>
		                <nav id="header-nav" class="header-nav">
		                	<ul>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/feed/all">사료</a></li>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/dessert/all">간식</a></li>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/care/all">케어</a></li>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/living/all">리빙</a></li>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/outside/all">외출</a></li>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/toy/all">장난감</a></li>
		                	<li class="header-item store" style="display: none"><a href="${ pageContext.servletContext.contextPath }/product/list/fashion/all">패션</a></li>
		                	<li class="header-item comm"><a href="${ pageContext.servletContext.contextPath }/community/daily">멍개일상</a></li>
		                	<li class="header-item comm"><a href="${ pageContext.servletContext.contextPath }/event/main">이벤트</a></li>
		                	</ul>
		                </nav>
                </div>
            </div>
        </div>
    </header>
</body>
</html>