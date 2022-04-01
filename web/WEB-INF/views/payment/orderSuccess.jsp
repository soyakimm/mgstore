<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 주문/결제</title>
<link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
<!--제이쿼리 CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style type="text/css">
.back-main-text {
	padding-left: 46%;
	padding-button: 20%;
}

h1 {
	padding-top: 10%;
    padding-button: 10%;
}
</style>
</head>
	<jsp:include page="../common/header.jsp" />
<body>
	<h1 align="center">결제 완료</h1>
	
	<div class="back-main-text">
	<button type="button" class="back-main" onclick="backMain()" id="back-main" >
    	홈으로 돌아가기
    </button>
    </div>
    
    <script type="text/javascript">
    function backMain(){
    	location.href="${ pageContext.servletContext.contextPath }/";
    };
    </script>
</body>
	<jsp:include page="../common/footer.jsp"/>
</html>