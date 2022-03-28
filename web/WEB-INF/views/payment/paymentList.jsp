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
	<div class="payment wrapper">
		<h1>주문/결제</h1>
		<div class="payment-detail">
			<div class="detail-name">
				<span>주문상품</span>
				<hr>
				<table>
				<c:forEach var="pay" items="${ paymentList }">
					<tr>
						<td class="table-img">
						<img src="../resource/로고_주황.png">
						</td>
						<td class="table-img-pro">
							<div>강아지 뇸뇸</div>
							<li>수량 1개</li>
							<div>30,000원</div>
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
						<td>김멍개</td>
						<!-- 회원 이름 -->
					</tr>
					<tr>
						<td>010-7777-8888</td>
						<!-- 회원 번호 -->
					</tr>
					<tr>
						<td>kimmg@greedy.com</td>
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
							주소<span>*</span>
						</td>
						<td>
							<input type="text" class="input-layer1" id="postalcode" name="postalcode" readonly
								placeholder="우편번호"></input>
						</td>
						<td>
							<input type="submit" class="input-button" onclick="DaumPostcode()"
								value="주소검색"></input>
						</td>
					</tr>
					<tr>
						<td class="table-row"></td>
						<td colspan="2"><input type="text" class="input-layer2"
							id="address" name="address" readonly placeholder="주소"></input></td>
					</tr>
					<tr>
						<td class="table-row"></td>
						<td colspan="2"><input type="text" class="input-layer2"
							id="details" name="details" placeholder="나머지주소"></input></td>
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
			<div class="detail-name">
				<span>적립금</span>
				<hr>
				<table>
					<tr>
						<td class="table-row">보유 포인트(원)</td>
						<td class="input-layer3">1,234</td>
						<!--회원 보유포인트 보여주기-->
					</tr>
					<tr>
						<td class="table-row">사용 포인트(원)</td>
						<td><input type="text" class="input-layer1" name="" value=""
							placeholder="1,000"></input></td>
					</tr>
				</table>
			</div>
			<div class="detail-name">
				<span>최종 결제금액</span>
				<hr>
				<table>
					<tr>
						<td class="table-row">총 상품 금액</td>
						<td class="input-layer4">39,900원</td>
					</tr>
					<tr>
						<td class="table-row">배송비</td>
						<td class="input-layer4">2,500원</td>
					</tr>
					<tr>
						<td class="table-row">사용 포인트</td>
						<td class="input-layer4">1,000원</td>
					</tr>
					<tr>
						<td class="table-row">총 결제금액</td>
						<td class="input-layer4"><b>41,400원</b></td>
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
			<button type="button" class="pay-request" onclick="" id="pay-request">
				<div class="pay-request-text">주문하기</div>
			</button>
		</div>
	</div>
</body>

<!-- 주소 API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function DaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    document.getElementById('postalcode').value = data.zonecode;
                    document.getElementById('address').value = data.roadAddress;
                }
            }).open();
        }
    </script>

</html>