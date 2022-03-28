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
    <!-- 스타일시트 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/header-style.css" rel="stylesheet">
    <!-- 웹폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
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
                        <li><button class="header-community-button" type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/community/main'">커뮤니티</button></li>
                        <li><button class="header-store-button" type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/'" style="color: #f5742f">스토어</button></li>
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
	                    <button class="login" type="button">
	                    	<a href="${ pageContext.servletContext.contextPath }/user/mypage">마이페이지</a>
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
            <div class="header-sub">
                <div class="header-menu on">
                    <div class="header-title">
                    	<button class="show-all-list" type="button">
                        	<img class="header-category-icon" src="${ pageContext.servletContext.contextPath }/resources/images/common/store-list.svg" alt="카테고리">
                            <div class="header-all-category-title">카테고리</div>
	                        <ul class="header-all-category">
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
                    <nav id="header-nav">
                        <ul>
                            <li class="header-item"><a href="#">사료</a></li>
                            <li class="header-item"><a href="#">간식</a></li>
                            <li class="header-item"><a href="#">케어</a></li>
                            <li class="header-item"><a href="#">리빙</a></li>
                            <li class="header-item"><a href="#">외출</a></li>
                            <li class="header-item"><a href="#">장난감</a></li>
                            <li class="header-item"><a href="#">패션</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
</body>
</html>