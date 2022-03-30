<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 주문/결제</title>
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/payment/payment.css"
	rel="stylesheet">
<!--제이쿼리 CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<h1>결제 완료</h1>
	<button type="button" class="back-main" onclick="backMain()" id="back-main">
    	<div class="back-main-text">홈으로 돌아가기</div>
    </button>
    
    <script type="text/javascript">
    function orderBack(){
        location.replace("../main/main.jsp");
    };
    </script>
</body>
	
</html>