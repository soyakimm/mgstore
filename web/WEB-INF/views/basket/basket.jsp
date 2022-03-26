<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니 | 멍개상점</title>
    
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- 스타일 시트 -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/basket/basket.css" rel="stylesheet">
    <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>

    <div class="basket-page">

        <!-- 장바구니 헤더 영역-->
        <div class="basket-header">
            <div class="basket-title">
                <span class=title1><h2>장바구니</h2></sp>
            </div>
        </div>

        <div class="basket-body">

             <!-- 장바구니 상품 목록 -->
             <div class = "basket-product-wrapper">
                <div class="basket-product-header">
                    <div class="check-all-product">
                        <input type="image" name="allCheckBtn" class="all-check-button" src="../images/basket_check.png">
                        <span><p>전체선택</p></span>
                    </div>
                    <div class="delete-product">
                        <button class="deleteBtn" onclick="link">선택삭제</button>
                    </div>
                </div>
                <div class="basket-product-container">
                    <div class="product-list">
                        <div class="product-info">
                            <div class="product-detail">
                                <input type="image" name="checkBtn" class="check-button" src="../images/basket_check.png">
                                <div class="goods-thumbnail">
                                    <a href="#"><img src="../images/goods.png" ></a>
                                </div>
                                <div class="name-num">
                                    <div class="goods-desc-name">
                                        <a href="#"><p>멍개상점 상품명</p></a>
                                    </div>
                                    <div class="product-num">
                                        <div class="downBtn-box" id="downBtn-box"><span>-</span></div>
                                        <div class="pro-num" id="pro-num">1</div>
                                        <div class="upBtn-box" id="upBtn-box"><span>+</span></div>
                                    </div>
                                </div>
                                <div class="goods-desc-price">
                                    <span class="num">1,000</span>원
                                </div>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-detail">
                                <input type="image" name="checkBtn" class="check-button" src="../images/basket_check.png">
                                <div class="goods-thumbnail">
                                    <a href="#"><img src="../images/goods.png" ></a>
                                </div>
                                <div class="name-num">
                                    <div class="goods-desc-name">
                                        <a href="#"><p>멍개상점 상품명</p></a>
                                    </div>
                                    <div class="product-num">
                                        <div class="downBtn-box"><span>-</span></div>
                                        <div class="pro-num">1</div>
                                        <div class="upBtn-box"><span>+</span></div>
                                    </div>
                                </div>
                                <div class="goods-desc-price">
                                    <span class="num">1,000</span>원
                                </div>
                            </div>
                        </div>
                        <div class="product-info">
                            <div class="product-detail">
                                <input type="image" name="checkBtn" class="check-button" src="../images/basket_check.png">
                                <div class="goods-thumbnail">
                                    <a href="#"><img src="../images/goods.png" ></a>
                                </div>
                                <div class="name-num">
                                    <div class="goods-desc-name">
                                        <a href="#"><p>멍개상점 상품명</p></a>
                                    </div>
                                    <div class="product-num">
                                        <div class="downBtn-box"><span>-</span></div>
                                        <div class="pro-num">1</div>
                                        <div class="upBtn-box"><span>+</span></div>
                                    </div>
                                </div>
                                <div class="goods-desc-price">
                                    <span class="num">1,000</span>원
                                </div>
                            </div>
                        </div>
                        <!-- 버튼 수량 조절 (맨 위에 있는 것만 조절 가능)-->
                        <script>
                            $(function() {
                                $('#downBtn-box').click(function(e) {
                                e.preventDefault();
                                var stat = $('#pro-num').text();
                                var num = parseInt(stat, 10);
                                num--;
                                if (num <= 0) {
                                 alert('상품은 최소 1개 이상 담겨있어야 합니다.');
                                num = 1;
                                }
                                $('#pro-num').text(num);
                                });
                                $('#upBtn-box').click(function(e) {
                                e.preventDefault();
                                var stat = $('#pro-num').text();
                                var num = parseInt(stat, 10);
                                num++;
                                $('#pro-num').text(num);
                                });
                                            });
                        </script>    
                    </div>
                </div>
            </div>

            <!-- 선택상품 픽스 영역 -->
            <div class="order-box-wrapper">
                <div class="fix-box">
                    <div class="order-title"><h3>선택상품</h3></div>    
                    <div class="order-all-price">
                        <div class="order-price">
                            <div class="all-price">총 상품금액</div>
                            <div class="all-price-num"><span class="price-num">3,000</span>원</div>
                        </div>
                        <div class="order-fee">
                            <div class="all-fee">총 배송비</div>
                            <div class="all-fee-num"><span class="fee-num">2,500</span>원</div>
                        </div>
                    </div>
                    <div class="final-order-price">
                        <div class="final-price">총 결제금액</div>
                        <div class="final-price-num"><span class="final-num">5,500</span>원</div>
                    </div>
                    <div class="order">
                        <button class="orderBtn" onclick="link">주문하기</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    
</body>
</html>