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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
</head>
	<jsp:include page="../common/header.jsp" />
<body>
	<form name="paymentForm" method="post" action="${ pageContext.servletContext.contextPath }/payment/orderlist">
	<div class="payment wrapper">
		<h1>주문/결제</h1>
		<div class="payment-detail">
			<div class="detail-name">
				<span>주문상품</span>
				<hr>
				<table id="proTable">
				<!-- productDTO로 데이터 넘겨받기 -->
					<tr>
						<td class="table-img">
						<img src="${ pageContext.servletContext.contextPath }/resources/images/product/HBD.jpg">
						</td>
						<td class="table-img-pro">
							<div><input type="hidden" name="productId" value=1></div>							
							<div><input type="hidden" name="productName" value="멍멍이풍선껌">해피멍스데이 세트</div><!-- 값받아야됨 / value="${ pay.proName } -->
							<li><input type="hidden" name="amount" value="1">1개</li>
							<div><input type="hidden" name="price" value="33000">
							<fmt:formatNumber value="33000" type="number" />원
							</div><!-- 값받아야됨 / value="${ pay.proPrice } -->
						</td>
					</tr>
				</table>
			</div>
			<div class="detail-name">
				<span>주문자</span>
				<input type="hidden" name="userId" value="${ loginUser.userId }">
				<hr>
				<table>
					<tr>
						<td>${loginUser.userName}</td>
						<!-- 회원 이름 -->
					</tr>
					<tr>
						<td>${loginUser.phone}</td>
						<!-- 회원 번호 -->
					</tr>
					<tr>
						<td>${loginUser.email}</td>
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
						<input type="text" class="input-layer1" name="ordName"></input>
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
							<button type="button" class="input-button" id="postcodify_search_button">
								주소검색
							</button>
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
						<td><input type="text" class="input-layer1" name="phone1" value="${ loginUser.phone }"
							placeholder="연락처1"></input></td>
					</tr>
					<tr>
						<td class="table-row">연락처2</td>
						<td><input type="text" class="input-layer1" name="phone2"
							placeholder="연락처2"></input></td>
					</tr>
					<tr>
						<td class="table-row">배송 요청사항</td>
						<td><input type="text" class="input-layer1" name="deliveryReq"
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
						<td class="input-layer4">
							<fmt:formatNumber value="10000" type="number" />원<!-- fmt이용해서 ##,###,### 바꾹 -->
							<input type="hidden" name="proTotal" value="10000">
						</td> 
					</tr>
					<tr>
						<td class="table-row">배송비</td>
						<td class="input-layer4">
							<fmt:formatNumber value="0" type="number" />원<!-- fmt이용해서 ##,###,### 바꾹 -->
							<input type="hidden" name="deliveryFee" value="0">
						</td>
					</tr>
					<!--  포인트 보류
					<tr>
						<td class="table-row">사용 포인트</td>
						<td class="input-layer4">1,000원</td>
					</tr>-->
					<tr>
						<td class="table-row">총 결제금액</td>
						<td class="input-layer4">
							<b><fmt:formatNumber value="10000" type="number" />원</b>
							<input type="hidden" name="orderTotal" value="18500">
						</td>
					</tr>
				</table>
			</div>
			<div class="pay-inf">위 주문 내용을 확인하였으며 결제에 동의합니다.</div>
			<div class="detail-name">
				<span>결제 방식</span>
				<hr>
				<table>
					<tr>
						<td>
							<button type="button" class="pay-method" id="pay-method-kko" 
								onclick="payApi('kakaopay');">카카오페이로 주문하기</button>
						</td>
					</tr>
					<tr>
						<td><button type="button" class="pay-method" onclick="payApi('inicis');"
								id="pay-method-crd">신용카드로 주문하기</button></td>
					</tr>
				</table>
			</div>
			<!--  
			<div class="pay-inf">위 주문 내용을 확인하였으며 결제에 동의합니다.</div>
			<input type="button" class="pay-request pay-request-text" id="pay-request" value="주문하기">
			-->
		</div>
	</div>
	</form>
	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<script> 
	$(function() { $("#postcodify_search_button").postcodifyPopUp(); }); 
</script> 

<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>	
	function payApi(payType){
		var IMP = window.IMP; // 생략가능
        IMP.init('imp75129533'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
        	 pg : payType,
             pay_method : 'card',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : '멍개상점 결제',
             amount : 300,	//결제 최총 금액
             buyer_email : 'tgtg5174@gmail.com',
             buyer_name : '${loginUser.userName}',
             buyer_tel : $('[name=phone1]').val(),
             buyer_addr : $('[name=address1]').val(), 
             buyer_postcode : $('[name=zipCode]').val()
        }, function(rsp) {
        	console.log(rsp.success);
            if ( rsp.success ) {
            	console.log(rsp);
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                 jQuery.ajax({
                    url: "${ pageContext.servletContext.contextPath }/payment/orderList", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid,
                        buyer_email : 'tgtg5174@gmail.com',
                        buyer_name : '${loginUser.userName}',
                        buyer_tel : $('[name=phone1]').val(),
                        buyer_addr : $('[name=address1]').val(), 
                        buyer_postcode : $('[name=zipCode]').val(),
                        buyer_addr2 : $('[name=address2]').val(),
                        delivery_user : $('[name=ordName]').val(),
                        buyer_tel2 : $('[name=phone2]').val(),
                        deliveryReq : $('[name=deliveryReq]').val(),
                        productName : "멍멍이풍선껌", /*값 고치기*/
                        productQty : 1, /*값 고치기*/
                        productPrice : 10000, /*값 고치기*/
                        proId : 10, /*값 고치기*/
                        proTotal : 10000 //상품 총 금액 (배송비 포함된)
                        //userId : '${loginUser.userId}', //세션에 있어서 보낼필요 없음>>세션에서 꺼내쓰는걸로 jsp만들어야됨! / ''빼먹으면 오류
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        alert("결제 실패")
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
                location.href="${ pageContext.servletContext.contextPath }/payment/orderSuccess";
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="${ pageContext.servletContext.contextPath }/payment/orderList";
                alert(msg);
            } 
          
        });
	}
 
</script>
</body>
	<jsp:include page="../common/footer.jsp"/>
</html>