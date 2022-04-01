<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문배송 상세내역</title>
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/myshopping/orderHistoryDetail.css"
	rel="stylesheet">
<link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
<!--제이쿼리 CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
	<jsp:include page="../common/header.jsp" />
<body>
	<div class="wish-main">
		<h1 class="title-bg">주문상세내역</h1>
		<div class="wish wrapper">
		<script>
		</script>
<!-- 			<div> -->
<!-- 				<aside class="sb-tilte-box"> -->
<!-- 					<h3 class="sub-title">나의 쇼핑</h3> -->
<!-- 					<ul class="sub-menu"> -->
<!-- 						<li class="sub-menu-li"><a -->
<%-- 							href="${ pageContext.servletContext.contextPath }/myshopping/orderHistory">주문/배송</a></li> --%>
<!-- 						<li class="sub-menu-li"><a -->
<%-- 							href="${ pageContext.servletContext.contextPath }/myshopping/wishList">위시리스트</a></li> --%>
<!-- 					</ul> -->
<!-- 				</aside> -->
<!-- 			</div> -->
			<div class="order-detail">
				<div class="detail-name">
					<sapn>주문상품</sapn>
					<hr>
					<table>
						<tr>
							<td class="table-img"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/해피멍스데이.jpg"></td>
							<td class="table-img-pro">
								<div>${ ordDetail.proName }</div>
								<li>수량 ${ ordDetail.ordQty }개</li>
								<div>33,000원</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="detail-name">
					<span>주문자</span>
					<hr>
					<table>
						<tr>
							<td>${ ordDetail.userName }</td>
							<!-- 회원 이름 -->
						</tr>
						<tr>
							<td>${ ordDetail.userPhone }</td>
							<!-- 회원 번호 -->
						</tr>
						<tr>
							<td>${ ordDetail.userEmail }</td>
							<!-- 회원 이메일 -->
						</tr>
					</table>
				</div>
				<div class="detail-name">
					<span>배송지</span>
					<hr>
					<table>
						<tr>
							<td class="table-row">받는 사람</td>
							<td>${ ordDetail.ordName }</td>
						</tr>
						<tr>
							<td class="table-row">휴대전화</td>
							<td>${ ordDetail.ordPhone }</td>
						</tr>
						<tr>
							<td class="table-row">배송주소</td>
							<td>${ ordDetail.address } ${ ordDetail.adrDetail }</td>
						</tr>
						<tr>
							<td class="table-row">배송 요청사항</td>
							<td>로켓보다 빠르게 와주세요</td>
						</tr>
					</table>
				</div>
				<div class="detail-name">
					<span>최종 결제금액</span>
					<hr>
					<table>
						<tr>
							<td class="table-row">총 상품 금액</td>
							<td>33,000원</td>
						</tr>
						<tr>
							<td class="table-row">배송비</td>
							<th>2,500원</th>
						</tr>
						<tr>
							<td class="table-row"><b>결제 금액</b></td>
							<th><fmt:formatNumber value="${ ordDetail.payAmount }" type="number"/>원</th>
						</tr>
					</table>
				</div>
				<div class="detail-name">
					<span>결제수단</span>
					<hr>
					<div class="payment">카카오페이</div>
				</div>
				<button type="button" class="order-back" onclick="orderBack()"
					id="order-back">
					<div class="order-back-text">돌아가기</div>
				</button>
			</div>
		</div>
	</div>
	<script>
        function orderBack(){
            location.href = "${ pageContext.servletContext.contextPath }/myshopping/orderHistory";
        };
    </script>
</body>
<%-- 	<jsp:include page="../common/footer.jsp"/> --%>
</html>