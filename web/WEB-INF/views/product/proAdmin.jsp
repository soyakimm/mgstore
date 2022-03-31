<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품관리 | 멍개상점</title>
   <!-- 웹 폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   <!-- 스타일 시트 -->
   <link href="${ pageContext.servletContext.contextPath }/resources/css/product/proAdmin.css" rel="stylesheet">
   <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<jsp:include page="../common/header.jsp"/>

<body>
	
   <div class="proAdmin-page">
        <div class="proAdmin-header">
            <div class="proAdmin-title"><h3>상품 관리</h3></div>
            <div class="proAdmin-button">
                <button class="proAddBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/product/admin/add'">추가</button>
                <button class="proModifyBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/product/admin/modify'">수정</button>
                <button class="proDelBtn" onclick="link">삭제</button>
                <button type="submit" class="proapplyBtn">적용하기</button>
            </div>
        </div>
        <div class="proAdmin-body">
            <div class="side-box">
                <div class="side-header">
                    <div class="side-header-button">
                        <div class="button-area1">
                            <button class="bigCateBtn" onclick="link">대분류 추가</button>
                            <button class="smallCateBtn" onclick="link">소분류 추가</button>
                        </div>
                        <div class="button-area2">
                            <button class="delCateBtn" onclick="link"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/cancle-orange.png">삭제</button>
                        </div>
                    </div>
                </div>
                <div class="side-body">
                    <ul>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">사료</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 어덜트 (1~7세)</button></li>
                                <li><button type="button" onclick="link">- 시니어 (7세 이상)</button></li>
                                <li><button type="button" onclick="link">- 전연령</button></li>
                                <li><button type="button" onclick="link">- 습식/소프트</button></li>
                                <li><button type="button" onclick="link">- 에어/동결</button></li>
                                <li><button type="button" onclick="link">- 자연식/화식</button></li>
                          </ul>
                        </li>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">간식</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 껌</button></li>
                                <li><button type="button" onclick="link">- 동결/건조</button></li>
                                <li><button type="button" onclick="link">- 사사미/육포</button></li>
                                <li><button type="button" onclick="link">- 수제간식</button></li>
                                <li><button type="button" onclick="link">- 캔/파우치</button></li>
                                <li><button type="button" onclick="link">- 비스킷/빵/케이크</button></li>
                                <li><button type="button" onclick="link">- 기타간식</button></li>
                            </ul>
                        </li>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">케어</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 영양제</button></li>
                                <li><button type="button" onclick="link">- 위생</button></li>
                                <li><button type="button" onclick="link">- 미용/목욕/칫솔</button></li>
                                <li><button type="button" onclick="link">- 배변</button></li>
                                <li><button type="button" onclick="link">- 눈/귀 관리</button></li>
                            </ul>
                        </li>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">리빙</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 안전문/울타리</button></li>
                                <li><button type="button" onclick="link">- 하우스/방석</button></li>
                                <li><button type="button" onclick="link">- 급식기/급수기</button></li>
                            </ul>
                        </li>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">외출</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 이동장/유아차</button></li>
                                <li><button type="button" onclick="link">- 가방/카시트</button></li>
                                <li><button type="button" onclick="link">- 가슴줄/리드줄/하네스</button></li>
                            </ul>
                        </li>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">장난감</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 노즈워크</button></li>
                                <li><button type="button" onclick="link">- 장난감</button></li>
                            </ul>
                        </li>
                        <li>
                            <div class="category-name">
                                <button type="button" class="menu-slide"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/folder.png">패션</button>
                                <a><img src="${ pageContext.servletContext.contextPath }/resources/images/product/hide.png" alt="토글이미지" class="hide-button"/></a>
                            </div>
                            <ul class="sub-select">
                                <li><button type="button" onclick="link">- 전체</button></li>
                                <li><button type="button" onclick="link">- 의류</button></li>
                                <li><button type="button" onclick="link">- 악세사리</button></li>
                            </ul>
                        </li>
                        <script>
                            $(".category-name").click(function() {
                                $(this).next(".sub-select").slideToggle(1);
                             });
                        </script>
                    </ul>
                </div>
            </div>
            <div class="proAdmin-list-page">
                <div class="proAdmin-list-header">
                    <div class="list-header-box">
                        <div class="list-checkbox">
                            <input type="checkbox" onclick="link" class="checkBtn">
                            <label for="checkbox"></label>
                        </div>
                        <div class="list-content">
                            <div class="list-desc">
                                <span>분류</span>
                                <span>제품명</span>
                                <span>가격</span>
                                <span>상태</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="proAdmin-list-body">
                    <div class="pro-content-box">
                        <!-- 상품 목록 영역 -->
                        <c:forEach var="product" items="${ productList }">
                        <div class="pro-content">
                            <div class="pro-checkbox">
                                <input type="checkbox" onclick="link" class="checkBtn">
                                <label for="checkbox"></label>
                            </div>
                            <div class="pro-img"><img src="${ pageContext.servletContext.contextPath }/resources/images/product/goods.png"></div>
                            <div class="pro-content-desc">
                                <div class="pcd-cate"><span>${ product.category.pCateName }</span></div>
                                <div class="pcd-name"><span>${ product.proTitle }</span></div>
                                <div class="pcd-price"><span>${ product.price }원</span></div>
                                <div class="pcd-display">
                                    <div class="pcd-show">
                                        <input type="radio" name="display" value="게시함" id="show" checked="checked">
                                        <label for="show" class="label-show">게시함</label>
                                    </div>
                                    <div class="pcd-hide">
                                        <input type="radio" name="display" value="비공개" id="hide" >
                                        <label for="hide" class="label-hide">게시안함</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
  <jsp:include page="../common/footer.jsp"/>
</html>