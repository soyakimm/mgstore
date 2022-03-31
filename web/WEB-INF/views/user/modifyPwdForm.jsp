<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 재설정</title>
	<link href="${ pageContext.servletContext.contextPath }/resources/css/user/findPwdForm-style.css" rel="stylesheet">
    <!-- 구글 웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
        <div class="page-title">
            <h1>비밀번호 재설정</h1>
        </div>
        <div class="find-table">
            <form name="info-form" action="${ pageContext.servletContext.contextPath }/user/login.jsp" method="post">
            	<ul class="info-area">
            		<ul class="required">
                    <li class="th"><p>현재 비밀번호</p>
                    <li class="td enter-pwd">
                        <b>*</b>
                        <input type="password" id="currPwd" name="currPwd" required>
                        <button type="button" class="closed-icon">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/common/closed.png" alt="숨기기">
                        </button>
                    </li>
                </ul>
            	<ul class="info-area">
            		<ul class="required">
                    <li class="th"><p>새 비밀번호</p>
                    <li class="td enter-pwd">
                        <b>*</b>
                        <input type="password" id="userPwd" name="userPwd" placeholder="영문 대소문자, 숫자, 특수기호 포함 8~16자" required>
                        <button type="button" class="closed-icon">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/common/closed.png" alt="숨기기">
                        </button>
                    </li>
                </ul>
                <div id="checkEnteredPwdMsg"></div>
                <ul class="required">
                    <li class="th"><p>새 비밀번호 확인</p>
                    <li class="td confirm-pwd">
                        <b>*</b>
                        <input type="password" id="confirmed" name="confirmed" required>
                        <button type="button" class="closed-icon">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/common/closed.png" alt="숨기기">
                        </button>
                    </li>
                </ul>
                <div id="checkConfirmedPwdMsg"></div>
	                <button onclick="verifyEmail()" type="button" id="find" class="find-button">
	                	<span>FIND PASSWORD</span>
	                </button>
            	</ul>
            </form>
        </div>
    </div>
</body>
</html>