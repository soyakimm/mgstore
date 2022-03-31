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
                            <li><button type="button" onclick="${ pageContext.servletContext.contextPath }/product/list">- 전체</button></li>
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
                    
                    <c:if test="${ sessionScope.loginUser.role == '관리자' }">
						<div class="proAdminUrl">
	                        <button class="proAdmin" onclick="location.href='${ pageContext.servletContext.contextPath }/product/admin/add'">상품추가</button>
	                    </div>
					</c:if>
                    
                
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
            	<c:forEach var="product" items="${ productList }">
                <div class="goods-grid-item" >
                    <div class="goods-thumbnail" onclick="detailView(${ product.proId });">
                        <a href=#><img src="${ pageContext.servletContext.contextPath }${ product.proImgList[0].proThumbnailPath }" ></a>
                    </div>
                    <div class="goods-desc-category">
                        <a href="#"><h4> ${ product.category.pCateName } </h4></a>
                    </div>
                    <div class="goods-desc-name" onclick="detailView(${ product.proId });">
                        <a href=#><h3>${ product.proTitle }</h3></a>
                    </div>
                    <div class="goods-desc-price">
                        <span class="num">${ product.price }</span>원
                    </div>
                    <div class="goods-desc-rank">
                        <span class="goods-stars" role="image" aria-label="#">
                            <span class="goods-star">
                                <span>${ product.proContent }</span>
                            </span>
                        </span>
                    </div>
                </div>
                </c:forEach>
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
		
		
		function detailView(id){
			location.href = '${ pageContext.servletContext.contextPath }/product/detail?id=' + id;
		}

	</script>
	

</body>

<jsp:include page="../common/footer.jsp"/>
</html>