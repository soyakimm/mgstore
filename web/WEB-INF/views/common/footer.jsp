<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>footer</title>
	<!-- 스타일시트 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/common/footer-style.css" rel="stylesheet">
    <!-- 웹폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<footer id="footer">
        <div class="footer-wrapper">
            <div class="footer-layout">
                <!-- 메인 푸터 -->
                <div class="footer-main">
                    <div class="footer-logo-box">
                        <a href="#">
                            <img class="footer-logo" src="${ pageContext.servletContext.contextPath }/resources/images/common/footerlogo.png" alt="멍개상점">
                        </a>
                    </div>
                    <nav id="footer-nav">
                        <ul>
                            <li class="footer-item"><a href="#">멍개소개</a></li>
                            <li class="footer-item"><a href="#">이용약관</a></li>
                            <li class="footer-item"><a href="#">개인정보취급방침</a></li>
                            <li class="footer-item"><a href="${ pageContext.servletContext.contextPath }/asked/list">고객센터</a></li>
                        </ul>
                    </nav>
                    <div class="info-box">
                        <p>
                            고객센터 2022-0401 | admin@mungae.co.kr<br>
                            (주)멍개상점 | 대표 김멍개 | 주소 서울특별시 강남구 테헤란로14길 6 멍개빌딩<br>
                            사업자등록번호 121-52-02109 | 통신판매업신고번호 2021-서울강남L-0918<br>
                        </p>
                        <p>
                            &copy; 2022. MungaeStore. All rights reserved
                        </p>
                    </div>
                </div>
                <!-- 사이드 푸터 -->
                <div class="footer-sub">
                    <div class="footer-chat-box">
                        <a href="#">
                            <img class="chat-img" src="${ pageContext.servletContext.contextPath }/resources/images/common/chat.png" alt="채팅문의">
                        </a>
                    </div>
                    <div class="sub-menu">
                        <div class="mg-tel">
                            <p>2022-0401</p>
                        </div>
                        <!-- <button type="button" class="chat-button">
                            <span>채팅문의</span>
                        </button> -->
                    </div>
                    <div class="hours-box">
                        <p>
                            평일 09:00~18:00 (점심시간 12:00~13:00)<br>
                            토/일요일, 공휴일 휴무<br>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>