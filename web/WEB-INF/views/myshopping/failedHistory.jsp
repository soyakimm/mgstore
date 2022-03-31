<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문배송 상세내역</title>
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/myshopping/orderHistory.css"
	rel="stylesheet">
<!--제이쿼리 CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<jsp:include page="../common/header.jsp" />
<body>
	<div class="order-main">
		<h1 class="title-bg">주문/배송 내역</h1>
		<div class="order wrapper">
			<div>
				<aside class="sb-tilte-box">
					<h3 class="sub-title">나의 쇼핑</h3>
					<ul class="sub-menu">
						<li class="sub-menu-li"><a href="${ pageContext.servletContext.contextPath }/myshopping/orderHistory">주문/배송</a></li>
						<li class="sub-menu-li"><a href="${ pageContext.servletContext.contextPath }/myshopping/wishList">위시리스트</a></li>
					</ul>
				</aside>
			</div>
			<table class="order-table">
				<tr>
					<td><select class="search-day">
							<option value="all">전체</option>
							<option value="one-week">1주</option>
							<option value="two-week">2주</option>
							<option value="three-week">3주</option>
							<option value="one-month">1달</option>
							<option value="two-month">2달</option>
							<option value="three-month">3달</option>
							<option value="sef">직접입력</option>
					</select></td>
				</tr>
				<tr>
					<th class="table-col-name">주문일자</th>
					<th class="table-col-name">주문번호</th>
					<th colspan="2" class="table-col-name">상품</th>
					<th class="table-col-name">수량</th>
					<th class="table-col-name">주문금액</th>
					<th class="table-col-name">상태</th>
				</tr>
				<tr>
					<h1>조회된 내용이 없습니다.</h1>
				</tr>
			</table>
		</div>
	</div>
</body>
	<jsp:include page="../common/footer.jsp"/>
</html>