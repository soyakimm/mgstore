<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>멍개상점</title>
	<!-- 외부 스타일 시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/main/main-style.css" rel="stylesheet">
	<!-- 구글 웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
    <style type="text/css">
    	ul { padding-inline-start: 0px; }
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
	        <!-- 스토어메인 슬라이드 -->
	        <div class="slide-container">
	            <div class="slide-button" style="width:100%">
	                <div class="slide-prev" onclick="plusDivs(-1)"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/prev.png"></div>
	                <div class="slide-next" onclick="plusDivs(1)"><img src="${ pageContext.servletContext.contextPath }/resources/images/main/next.png"></div>
	            </div>
	            <div class="slide-option" style="width: fit-content">
	                <span class="slide-turn slide-pick slide-border picked" onclick="currentDiv(1)"></span>
	                <span class="slide-turn slide-pick slide-border" onclick="currentDiv(2)"></span>
	                <span class="slide-turn slide-pick slide-border" onclick="currentDiv(3)"></span>
	            </div>
	            <div class="slide-content">
	                <img class="slides" src="${ pageContext.servletContext.contextPath }/resources/images/main/slide001.png">
	                <img class="slides" src="${ pageContext.servletContext.contextPath }/resources/images/main/slide002.png">
	                <img class="slides" src="${ pageContext.servletContext.contextPath }/resources/images/main/slide003.png">
	            </div>
	        </div>
	        <div class="main-cate-title">
	            <h1>베스트 상품</h1>
	            <div class="cut-in-title"><h4>BEST SELLING</h4></div>
	        </div>
	        <!-- 베스트 상품 -->
	        <div class="best-selling">
	            <c:forEach var="best" items="${ best }">
	            	<a href="#">
	            		<div class="best-prod-wrap">
	            			<div class="prod-img">
	            			</div>
	            		</div>
	            	</a>
	            </c:forEach>
	        </div>
	        <!-- 새 상품 -->
	    </div>
	</body>
	<!-- 슬라이드 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	    let index = 1;
	    showDivs(index);
	
	    function plusDivs(n) {
	    	showDivs(index += n);
	    }
	
	    function currentDiv(n) {
	    	showDivs(index = n);
	    }
	
	    function showDivs(n) {
		    let i;
		    let x = document.querySelectorAll(".slides");
		    let dots = document.querySelectorAll(".slide-pick");
		    if (n > x.length) {index = 1}
		    if (n < 1) {index = x.length}
		    for (i = 0; i < x.length; i++) {
		        x[i].style.display = "none";  
		    }
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" picked", "");
		    }
		    x[index-1].style.display = "block";  
		    dots[index-1].className += " picked";
	    }
	</script>
</html>