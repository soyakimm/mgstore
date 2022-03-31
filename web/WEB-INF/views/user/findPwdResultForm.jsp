<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기 결과 | 멍개상점</title>
	<!-- 외부 스타일 시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/user/findPwdResultForm-style.css" rel="stylesheet">
    <!-- 구글 웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
		<div class="page-title">
			<h1>비밀번호 찾기 결과</h1>
		</div>
        <div class="result-table">
        	<ul>
        	<c:choose>
        		<c:when test="${ requestScope.userId != null }">
        			<h3>${ requestScope.userName } 님의 이메일로 임시 비밀번호가 발송되었습니다. 메일을 확인해 주세요.</h3>
        			<ul class="button-box">
		            	<button type="button" class="login-button" onclick="location.href='${ pageContext.servletContext.contextPath }/user/login';">
		                	<span>로그인</span>
		                </button>
		            </ul>
        		</c:when>
        		<c:when test="${ requestScope.userId == null }">
        			<h3>일치하는 회원 정보가 없습니다</h3>
        			<ul class="button-box">
		            	<button type="button" class="tryagain-button" onclick="location.href='${ pageContext.servletContext.contextPath }/user/findPwd';">
		                	<span>다시 찾기</span>
		                </button>
		                <button type="button" class="regist-button" onclick="location.href='${ pageContext.servletContext.contextPath }/user/regist';">
		                	<span>회원가입</span>
		                </button>
		            </ul>
		        </c:when>
			</c:choose>
			</ul>
        </div>
    </div>
</body>
</html>