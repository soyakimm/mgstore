<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의쇼핑 위시리스트</title>
<!-- 외부 스타일 시트 -->
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/myshopping/wishList.css"
	rel="stylesheet">
<!--제이쿼리 CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
	
<jsp:include page="../common/header.jsp" />

<body>
	<div class="wish-main">
		<h1 class="title-bg">위시리스트</h1>
		<div class="wish wrapper">
			<div>
				<aside class="sb-tilte-box">
					<h3 class="sub-title">나의 쇼핑</h3>
					<ul class="sub-menu">
						<li class="sub-menu-li"><a href="">주문/배송</a></li>
						<li class="sub-menu-li"><a href="">취소내역</a></li>
						<li class="sub-menu-li"><a href="">위시리스트</a></li>
					</ul>
				</aside>
			</div>
			<div class="wish-product">
				<div>
					<label> 
					<input type="checkbox" value="selectAll" name="wishProduct1" onclick='selectAll(this)'> 
					<span class="check-text">전체선택</span>
					</label>
					<button type="button" class="check-btn" id="delBtn">선택삭제</button>
					<hr>
				</div>
				<!-- 위시리스트 본인 아이디만 조회 가능 -->
				<div class="wish-list">
					<ul>
						<!-- 예시 -->
						<li class="wish-pro">
							<div class="img-area">
								<img src="../resource/로고_주황.png">
							</div>
							<ul>
								<li>
									<input type="checkbox" name="wishProduct" value="producDetail"> 
									상품명
								</li>
								<li class="pro-price">
									상품가격
								</li>
								<li>
									<button class="basket">장바구니 담기</button>
									<button class="whis-del">삭제</button>
								</li>
							</ul>
						</li>
						<!-- --------- -->
						
						<c:forEach var="wishList" items="${ wishList }">
						<li class="wish-pro">
							<div class="img-area">
								<img src="${ pageContext.servletContext.contextPath }/resources/images/product/상품설명 썸네일.jpg">
							</div>
							<ul>
								<li>
									<input type="checkbox" name="wishProduct" value="producDetail"> 
									${ wishList.product.proTitle  }
								</li>
								<li class="pro-price">
									${ wishList.product.price }
								</li>
								<li>
									<button class="basket" onclick="basketUpdate(${ wishList.proId })">장바구니 담기</button>
									<!-- 삭제 진행시에 Cause: java.sql.SQLException: 부적합한 열 유형: 1111 오류가난다 -->
									<button class="whis-del" onclick="wishDelView(${ wishList.proId },'${ wishList.userId}')">삭제</button>
								</li>
							</ul>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<script>
                function selectAll(selectAll) {
                    const checkboxes
                        = document.getElementsByName('wishProduct'); 
                    
                        checkboxes.forEach((checkbox) => {
                            checkbox.checked = selectAll.checked;
                        });
                      
                };
            </script>
			<script>
                $('#delBtn').click(function(){
                    if ($("input:checkbox[name='wishProduct']:checked").length ===0) {
                        alert("삭제할 항목을 선택해 주세요.");
                        return; 
                    }   

                    $("input:checkbox[name='wishProduct']:checked").each(function(key,value){
                        console.log("value ::", value.parentElement.parentElement.parentElement);
                        let del = value.parentElement.parentElement.parentElement;
                        $(del).remove(); // 근데 새로고침 하면 다시 생김 (동적쿼리 필요해보임)
                    });
                
                });
				
                function wishDelView(proId, userId) {
                	if(confirm('이 게시글을 삭제하시겠습니까?')){
              		  location.href = "${ pageContext.servletContext.contextPath }/myshopping/wishListDel?proId="+ proId +"&userId="+ userId;
              	  }																													
				}
                
            </script>
		</div>

	</div>
</body>

</html>