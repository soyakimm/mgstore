<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 | 멍개상점</title>
   <!-- 웹 폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   <!-- 스타일 시트 -->
   <link href="${ pageContext.servletContext.contextPath }/resources/css/product/proDetail.css" rel="stylesheet">
   <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<jsp:include page="../common/header.jsp"/>

<body>

    <div class="proDetail-page">
        <div class="proDetail-header">
            <div class="product-header-wrapper">
                <div class="pro-detail-wrapper">
                    <div class="pro-detail-left">
                        <div class="pro-category">
                            <a href="${ pageContext.servletContext.contextPath }/product/list" class="category1">장난감</a>
                        </div>
                        <div class="thumbnail-img"><img src="${ pageContext.servletContext.contextPath }${ product.proImgList[0].proThumbnailPath }" ></div>
                    </div>
                    <div class="pro-detail-right">
                        <div class="pro-title"><p>${ product.proTitle }</p></div>
                        <div class="pro-rating">
                            <span class="goods-stars" role="image" aria-label="#">
                                <span>${ product.proContent }</span>
                            </span>
                        </div>
                        <div class="pro-price-point">
                            <div class="pro-price"><span class="price">${ product.price }</span>원</div>
                        </div>
                        <div class="pro-fee">
                            <div class="delivery">배송</div>
                            <div class="fee">택배(주문 시 결제)<br>2,500원(50,000원 이상 무료)/추가배송비 5,500원(지역별)</div>
                        </div>

                        <div class="pro-price-info">
                            <div class="price-p">총 상품금액</div>
                            <div class="price-num"><span class="num">${ (product.price+2500) }</span>원</div>
                        </div>
                        <div class="pro-button-wrapper">
                            <div class="likeBtn" onclick="link">
                                <img src="${ pageContext.servletContext.contextPath }/resources/images/product/emptyHeart.png"></div>
                            <div class="cart">
                            <form name="cartButton" method="get" action="${ pageContext.servletContext.contextPath }/cart">
                            	<input type="hidden" name="proId" value="${ product.proId }">
                                <button type="submit" class="cartBtn" id="cartBtn">장바구니</button>
                            </form>
                            </div>
                            <div class="order">
<%--                             <form name="orderButton" method="post" action="${ pageContext.servletContext.contextPath}/payment/orderList"> --%>
<%--                             	<input type="hidden" name="proId" value="${ product.proId }"> --%>
                                <a href="${ pageContext.servletContext.contextPath }/payment/orderList"><button type="submit" class="orderBtn" id="orderBtn">구매하기</button></a>
<!--                              </form> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="proDetail-body">
            <div class="body-page-block">
                <div class="block-detail"><a href="#"><p>상세설명</p></a></div>
                <div class="block-review"><a href="#"><p>상품후기</p></a></div>
                <div class="block-detail"><a href="#"><p>상품문의</p></a></div>
                <div class="block-detail"><a href="#"><p>교환/반품/배송</p></a></div>
            </div>
        </div>
        <div class="product-detail-desc">
           <img src="${ pageContext.servletContext.contextPath }/resources/upload/original/product/${ product.proImgList[1].proImgSvrName }">
        </div>
        <div class="product-detail-hide">
            <button type="button" onclick="link">상품 상세 접기</button>
            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/show.png" class="hide-button">
            
        </div>
    </div>
    
    <div class="productBtn">
    	<c:if test="${ sessionScope.loginUser.role eq '관리자' }">
			<button type="button" id="modifyBtn" onclick="updateProductView(${ product.proId })">수정하기</button>
			<button type="button" id="deleteBtn" onclick="deleteProduct()">삭제하기</button>
			<form name="productForm" method="post">
				<input type="hidden" name="id" value="${ product.proId }">
			</form>
			<script>
			function updateProductView(id){
					location.href = "${ pageContext.servletContext.contextPath }/product/update?id="+id;
			}
			function deleteProduct(){
					if(confirm('이 게시글을 삭제하시겠습니까?')){
							document.forms.productForm.action = "${ pageContext.servletContext.contextPath }/product/delete";
							document.forms.productForm.submit();
					}
			}
			</script>
	</c:if>
	</div>
    
    
</body>

<%-- <jsp:include page="proAsked.jsp"/> --%>

<%-- <jsp:include page="proReview.jsp"/> --%>

<jsp:include page="proFooter.jsp"/>

<script>
	
</script>

</html>