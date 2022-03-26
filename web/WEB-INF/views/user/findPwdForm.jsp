<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기 | 멍개상점</title>
	<!-- 외부 스타일 시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/findPwdForm-style.css" rel="stylesheet">
    <!-- 구글 웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
        <div class="page-title">
            <h1>비밀번호 찾기</h1>
        </div>
        <div class="find-table">
            <form name="info-form" action="${ pageContext.servletContext.contextPath }/user/findPwdResult.jsp" method="post">
            	<ul class="info-area">
            		<ul class="required">
	                    <li class="th"><p>아이디</p>
	                    <li class="td">
	                        <b>*</b>
	                        <input type="text" id="userId" name="userId" required>
	                    </li>
	                </ul>
	            	<ul class="required">
	                    <li class="th"><p>이름</p>
	                    <li class="td">
	                        <b>*</b>
	                        <input type="text" id="userName" name="userName" required>
	                    </li>
	                </ul>
	                <ul class="required">
	                    <li class="th"><p>이메일</p>
	                    <li class="td">
	                        <b>*</b>
	                        <input type="email" id="email" name="email" required>
	                    </li>
	                </ul>
	                <button type="submit" class="find-button">
	                	<span>FIND PASSWORD</span>
	                </button>
            	</ul>
            </form>
            <div class="button-box">
                <button class="regist" type="button">
                    <a href="${ pageContext.servletContext.contextPath }/user/regist">회원가입</a>
                </button>
                <div class="line"><span> | </span></div>
                <button class="findId" type="button">
                    <a href="${ pageContext.servletContext.contextPath }/user/findid">아이디 찾기</a>
                </button>
            </div>
        </div>
    </div>
</body>
</html>