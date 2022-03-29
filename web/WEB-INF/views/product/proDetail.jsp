<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품명 | 멍개상점</title>
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
                            <a href="${ pageContext.servletContext.contextPath }/product/list/toy/all" class="category1">장난감</a>
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/next.png">
                            <a href="${ pageContext.servletContext.contextPath }/product/list/toy/toy" class="category2">장난감</a>
                        </div>
                        <div class="thumbnail-img"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/상품설명 썸네일.jpg"></div>
                    </div>
                    <div class="pro-detail-right">
                        <div class="pro-title"><p>줄무늬 코끼리 삑삑이 장난감</p></div>
                        <div class="pro-rating">
                            <span class="goods-stars" role="image" aria-label="#">
                                <span class="goods-star">
                                    <svg class="star" focusable="false" viewBox="0 0 48 48" aria-hidden="true" role="img"><path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path></svg>
                                    <path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path>
                                </span>
                                <span class="goods-star">
                                    <svg class="star" focusable="false" viewBox="0 0 48 48" aria-hidden="true" role="img"><path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path></svg>
                                    <path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path>
                                </span>
                                <span class="goods-star">
                                    <svg class="star" focusable="false" viewBox="0 0 48 48" aria-hidden="true" role="img"><path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path></svg>
                                    <path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path>
                                </span>
                                <span class="goods-star">
                                    <svg class="star" focusable="false" viewBox="0 0 48 48" aria-hidden="true" role="img"><path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path></svg>
                                    <path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path>
                                </span>
                                <span class="goods-star">
                                    <svg class="star" focusable="false" viewBox="0 0 48 48" aria-hidden="true" role="img"><path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path></svg>
                                    <path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path>
                                </span>
                            </span>
                        </div>
                        <div class="pro-price-point">
                            <div class="pro-price"><span class="price">1,000</span>원</div>
                            <div class="pro-point"><span class="point">10p</span>&nbsp적립예정</div>
                        </div>
                        <div class="pro-fee">
                            <div class="delivery">배송</div>
                            <div class="fee">택배(주문 시 결제)<br>2,500원(50,000원 이상 무료)/추가배송비 5,500원(지역별)</div>
                        </div>
                        <div class="pro-option-box">
                        <!-- 옵션의 개수에 따라 유동적으로 표시되도록 후처리 -->
                            <div class="option-select">
                                <select name="option1">
                                    <option>사이즈 선택</option>
                                    <option value="S">S</option>
                                    <option value="M">M</option>
                                    <option value="L">L</option>
                                </select>
                            </div>
                            <div class="option-select">
                                <select name="option2">
                                    <option>색상 선택</option>
                                    <option value="gray">gray</option>
                                    <option value="yellow">yellow</option>
                                    <option value="blue">blue</option>
                                </select>
                            </div>
                        </div>
                        <div class="pro-price-info">
                            <div class="price-p">총 상품금액</div>
                            <div class="price-num"><span class="num">5,500</span>원</div>
                        </div>
                        <div class="pro-button-wrapper">
                            <div class="likeBtn" onclick="link">
                                <img src="${ pageContext.servletContext.contextPath }/resources/images/product/emptyHeart.png"></div>
                            <div class="cart">
                                <button class="cartBtn" onclick="link">장바구니</button>
                            </div>
                            <div class="order">
                                <button class="orderBtn" onclick="link">구매하기</button>
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
            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/상품설명 이미지.jpg">
        </div>
        <div class="product-detail-hide">
            <button type="button" onclick="link">상품 상세 접기</button>
            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/show.png" class="hide-button">
        </div>
    </div>
    
</body>

<jsp:include page="proAsked.jsp"/>

<jsp:include page="proReview.jsp"/>

<jsp:include page="proFooter.jsp"/>

</html>