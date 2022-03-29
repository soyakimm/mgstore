<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록 | 멍개상점</title>
   <!-- 웹 폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   <!-- 스타일 시트 -->
   <link href="${ pageContext.servletContext.contextPath }/resources/css/product/proList.css" rel="stylesheet">
   <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<jsp:include page="../common/header.jsp"/>

<body>
	
	<div class="proList-page">
    <!-- 카테고리 사이드바 -->
    <aside>
        <div class="store-list-wrapper">
            <div class="fix-box">
                <div class="all-select"><a href="${ pageContext.servletContext.contextPath }/product/list">전체</a></div>
                <ul>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">사료</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/adult">- 어덜트 (1~7세)</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/senior">- 시니어 (7세 이상)</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/allAges">- 전연령</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/soft">- 습식/소프트</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/air">- 에어/동결</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/feed/natural">- 자연식/화식</button></li>
                      </ul>
                    </li>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">간식</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/gum">- 껌</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/dry">- 동결/건조</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/meat">- 사사미/육포</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/homeMade">- 수제간식</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/can">- 캔/파우치</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/bread">- 비스킷/빵/케이크</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/dessert/etcDessert">- 기타간식</button></li>
                        </ul>
                    </li>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">케어</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/care/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/care/nutrition">- 영양제</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/care/clean">- 위생</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/care/treatment">- 미용/목욕/칫솔</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/care/bowel">- 배변</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/care/see">- 눈/귀 관리</button></li>
                        </ul>
                    </li>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">리빙</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/living/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/living/door">- 안전문/울타리</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/living/house">- 하우스/방석</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/living/water">- 급식기/급수기</button></li>
                        </ul>
                    </li>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">외출</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/outside/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/outside/moving">- 이동장/유아차</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/outside/bag">- 가방/카시트</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/outside/string">- 가슴줄/리드줄/하네스</button></li>
                        </ul>
                    </li>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">장난감</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/toy/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/toy/nosewalk">- 노즈워크</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/toy/toy">- 장난감</button></li>
                        </ul>
                    </li>
                    <li>
                        <div class="category-name">
                            <button type="button" class="menu-slide">패션</button>
                            <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                        </div>
                        <ul class="sub-select">
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/fashion/all">- 전체</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/fashion/clothes">- 의류</button></li>
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list/fashion/accessory">- 악세사리</button></li>
                        </ul>
                    </li>
                    
<%-- 관리자 테스트 가능한 경우 실행하기 -->            
<%--                     <c:if test="${ sessionScope.loginMember.role eq 'ADMIN' }"> --%>
						<div class="proAdminUrl">
	                        <button class="proAdmin" onclick="location.href='${ pageContext.servletContext.contextPath }/product/admin'">상품관리</button>
	                    </div>
<%-- 					</c:if> --%>
                    
                
                </ul>
            </div>  
        </div>
    </aside>

    <div class="catalog" id="catalog">
        <!-- 상품 목록 헤더 -->
        <div id="catalog-page" class="catalog-page">
            <div class="catalog-title">
                <span class=title1><h3>스토어</h3></span>
                <div class="catalog-sort-name">
                    <div class="sort-name-show">
                        <button type="button" onclick="link">정렬</button>
                        <img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/>
                    </div>
                    <ul class="sort-select" id="sort-select">
                        <li><button type="button" onclick="link">인기순</button></li>
                        <li><button type="button" onclick="link">최근 등록순</button></li>
                        <li><button type="button" onclick="link">가격 낮은순</button></li>
                        <li><button type="button" onclick="link">가격 높은순</button></li>
                    </ul>
                </div>
            </div>
            <!-- 상품 정렬 -->
        </div>

        <!-- 상품 리스트 -->
        <div class="goods" id="goods">
            <div class="goods-grid-list">
                <div class="goods-grid-item">
                    <div class="goods-thumbnail">
                        <a href="${ pageContext.servletContext.contextPath }/product/detail"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/goods.png" ></a>
                    </div>
                    <div class="goods-desc-category">
                        <a href="#"><h4>소카테고리명</h4></a>
                    </div>
                    <div class="goods-desc-name">
                        <a href="${ pageContext.servletContext.contextPath }/product/detail"><h3>멍개상점 상품명</h3></a>
                    </div>
                    <div class="goods-desc-price">
                        <span class="num">1,000</span>원
                    </div>
                    <div class="goods-desc-rank">
                        <!-- area-label이 뭔지 모르겠다. 4.5처럼 별점 표시하는 것 같음 -->
                        <span class="goods-stars" role="image" aria-label="#">
                            <span class="goods-star">
                                <!-- 별 도형 -->
                                <svg class="star" focusable="false" viewBox="0 0 48 48" aria-hidden="true" role="img"><path fill="#c4c4c6" fill-rule="evenodd" d="M35.236 44c-.325 0-.65-.092-.94-.275L24 37.214l-10.297 6.511c-.624.396-1.415.362-2.008-.09-.592-.45-.868-1.227-.702-1.973l2.732-12.27-9.098-8.257c-.552-.5-.764-1.3-.538-2.03.226-.727.846-1.242 1.575-1.308l11.98-1.065 4.681-11.57C22.611 4.457 23.27 4 24 4c.73 0 1.39.457 1.675 1.162l4.682 11.57 11.979 1.065c.729.066 1.35.58 1.575 1.309.226.728.014 1.528-.538 2.029l-9.098 8.257 2.732 12.27c.166.746-.11 1.523-.702 1.974-.317.242-.693.363-1.07.363"></path></svg>
                                <!-- 숫자가 반올림 이상이면 채우는 코드인 것 같음 -->
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
                </div>
                

    </div>
</div>

	<!-- 페이징 삽입 -->
	<jsp:include page="../common/paging.jsp"/>
	
	<!-- 상품 카테고리 토글 -->
	<script>
		//상품 카테고리 토글
		$(".category-name").click(function() {
			//한 개씩 펼치게 하기
			$(".sub-select").slideUp(300);
			$(this).next(".sub-select").stop().slideToggle(300);
		});
	</script>
	<!-- 상품 정렬 토글 -->
	<script>
		$(".sort-name-show").click(function() {
			$(".sort-select").slideUp(300);
			$(this).next(".sort-select").stop().slideToggle(0);
		});
	</script>
	

</body>
</html>