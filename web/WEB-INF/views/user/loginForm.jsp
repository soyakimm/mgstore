<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>로그인 | 멍개상점</title>
	<!-- 외부 스타일 시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/loginForm-style.css" rel="stylesheet">
	<!-- 구글 웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
        <div class="page-title">
            <h1>로그인</h1>
        </div>
        <div class="login-table">
            <form name="login-form" action="${ pageContext.servletContext.contextPath }/user/login" method="post">
                <ul class="login-area">
                    <li class="input-area">
                        <input type="text" id="userId" name="userId" class="box-id" placeholder="아이디를 입력해 주세요." required>
                        <input type="password" id="userPwd" name="userPwd" class="box-pwd" placeholder="비밀번호를 입력해 주세요." required>
                    
                    </li>
                    <li>
                        <label class="save-id">
                            <input type="checkbox" id="saveId" name="saveId" style="background: url(${ pageContext.servletContext.contextPath }/resources/images/common/checkbox.png) no-repeat;">
                            <span>아이디 저장</span>
                        </label>
                    </li>
                    <li>
                        <button type="submit" class="login-button">
                            <span>LOGIN</span>
                        </button>
                    </li>
                </ul>
            </form>
            <div class="button-box">
                <button class="login" type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/user/findid'">
                    <a href="#">아이디 찾기</a>
                </button>
                <div class="line"><span> | </span></div>
                <button class="regist" type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/user/findpwd'">
                    <a href="#">비밀번호 찾기</a>
                </button>
            </div>
        </div>
    </div>
    
    <!-- 아이디 저장 -->
    <script src="${ pageContext.servletContext.contextPath }/resources/js/saveId.js"></script>
</body>
</html>