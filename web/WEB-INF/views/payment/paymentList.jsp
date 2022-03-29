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
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<form name="paymentForm" method="post" action="${ pageContext.servletContext.contextPath }/payment/list">
	<div class="payment wrapper">
		<h1>주문/결제</h1>
		<div class="payment-detail">
			<div class="detail-name">
				<span>주문상품</span>
				<hr>
				<table>
				<c:forEach var="pay" items='${ paymentList }'>
					<tr>
						<td class="table-img">
						<img src="../resource/로고_주황.png">
						</td>
						<td class="table-img-pro">
							<div>${ pay.proTitle }</div>
							<li>수량 1개</li>
							<div>${ pay.price }원</div>
						</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			<div class="detail-name">
				<span>주문자</span>
				<hr>
				<table>
					<tr>
						<td>${ loginUser.userName }</td>
						<!-- 회원 이름 -->
					</tr>
					<tr>
						<td>${ loginUser.phone }</td>
						<!-- 회원 번호 -->
					</tr>
					<tr>
						<td>${ loginUser.email }</td>
						<!-- 회원 이메일 -->
					</tr>
				</table>
			</div>
			<div class="detail-name">
				<span>배송지</span>
				<hr>
				<table>
					<tr>
						<td class="table-row">
						이름<span>*</span>
						</td>
						<td>
						<input type="text" class="input-layer1" name="" value=""></input>
						</td>
					</tr>
					<tr>
						<td class="table-row">
							우편번호<span>*</span>
						</td>
						<td>
							<input type="text" class="postcodify_postcode5" name="zipCode"
								readonly></input>
						</td>
						<td>
							<button type="button" class="input-button" id="postcodify_search_button"
								value="주소검색">주소검색</button>
						</td>
					</tr>
					<tr>
						<td class="table-row">
						도로명주소
						</td>
						<td colspan="2"><input type="text" class="postcodify_address"
							id="address1" name="address1" readonly></input></td>
					</tr>
					<tr>
						<td class="table-row">
						상세주소
						</td>
						<td colspan="2"><input type="text" class="postcodify_details"
						name="address2"></input></td>
					</tr>
					<tr>
						<td class="table-row">연락처1<span>*</span></td>
						<td><input type="text" class="input-layer1" name="" value=""
							placeholder="연락처1"></input></td>
					</tr>
					<tr>
						<td class="table-row">연락처2</td>
						<td><input type="text" class="input-layer1" name="" value=""
							placeholder="연락처2"></input></td>
					</tr>
					<tr>
						<td class="table-row">배송 요청사항</td>
						<td><input type="text" class="input-layer1" name="" value=""
							placeholder="배송시 요청사항을 입력해주세요 :)"></input></td>
					</tr>
				</table>
			</div>
			<!-- 보유 포인트 부분 보류....
			<div class="detail-name">
				<span>적립금</span>
				<hr>
				<table>
					<tr>
						<td class="table-row">보유 포인트(원)</td>
						<td class="input-layer3">1,234</td>
					</tr>
					<tr>
						<td class="table-row">사용 포인트(원)</td>
						<td><input type="text" class="input-layer1" name="" value=""
							placeholder="0"></input></td>
					</tr>
				</table>  
			</div>
			-->
			<div class="detail-name">
				<span>최종 결제금액</span>
				<hr>
				<table>
					<tr>
						<td class="table-row">총 상품 금액</td>
						<td class="input-layer4">원</td>
					</tr>
					<tr>
						<td class="table-row">배송비</td>
						<c:choose>
						<c:when test=" eq '0'">
						<td class="input-layer4">0원</td>
						</c:when>
						<c:otherwise>
						<td class="input-layer4">원</td>
						</c:otherwise>
						</c:choose>
					</tr>
					<!--  포인트 보류
					<tr>
						<td class="table-row">사용 포인트</td>
						<td class="input-layer4">1,000원</td>
					</tr>-->
					<tr>
						<td class="table-row">총 결제금액</td>
						<td class="input-layer4"><b>원</b></td>
					</tr>
				</table>
			</div>
			<div class="detail-name">
				<span>최종 결제금액</span>
				<hr>
				<table>
					<tr>
						<td><button type="button" class="pay-method" onclick=""
								id="pay-method-kko">카카오페이</button></td>
					</tr>
					<tr>
						<td><button type="button" class="pay-method" onclick=""
								id="pay-method-crd">신용카드</button></td>
					</tr>
				</table>
			</div>
			<div class="pay-inf">위 주문 내용을 확인하였으며 결제에 동의합니다.</div>
			<input type="button" class="pay-request pay-request-text" id="pay-request" value="주문하기">
				
		</div>
	</div>
	</form>
</body>

<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

</html>