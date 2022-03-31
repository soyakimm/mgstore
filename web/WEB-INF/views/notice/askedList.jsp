<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 고객센터</title>
<!-- 외부 스타일 시트 -->
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/notice/notice.css"
	rel="stylesheet">
<!--제이쿼리 CDN-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
button {
	background-color: white;
	border-style: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div class="main">
		<h1 class="title-bg">고객센터</h1>
		<div class="title-mid">
			<div class="title-mid-1">
				자주 묻는 질문
			</div>
			<div class="title-mid-1">
				<a href="${ pageContext.servletContext.contextPath }/inq/list">1:1 문의</a>
			</div>
		</div>
		<form name="askedForm" method="get" action="${ pageContext.servletContext.contextPath }/asked/list">
			<div class="category-min">
				<div class="overlap-min-group">
					<button type="submit" class="category-min-1" name="searchCondition" value="all">
						전체
					</button>
				</div>
				<div class="overlap-min-group">
					<button type="submit" class="category-min-1" name="searchCondition" value="이용문의">
						이용문의
					</button>
				</div>
				<div class="overlap-min-group">
					<button type="submit" class="category-min-1" name="searchCondition" value="구매문의">
						구매문의
					</button>
				</div>
				<div class="overlap-min-group">
					<button type="submit" class="category-min-1" name="searchCondition" value="배송문의">
						배송문의
					</button>
				</div>
				<div class="overlap-min-group">
					<button type="submit" class="category-min-1" name="searchCondition" value="기타">
						기타
					</button>
				</div>
			</div>
		</form>
		<div id="Accordion_wrap">
			<c:forEach var="asked" items="${ askedList }">
				<div class="que">
					<span>${ asked.askTitle }</span> 
					<span class="que-date"><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${ asked.createdDate }"/></span>
				</div>
				<div class="anw">
					<span>${ asked.askContents }</span>
					<!-- 관리자만 확인 가능한 버튼 -->
					<c:if test="${ sessionScope.loginUser.role eq '관리자' }">
					<div class="anw-btn-mng">
						<button type="button" onclick="updateAskedView(${ asked.askId })">수정</button>
						<button type="button" onclick="deleteAskedView(${ asked.askId })">삭제</button>
					</div>
					</c:if>
				</div>
			</c:forEach>
		</div>

	<script>
      /* 아코디언 게시판*/
      $(".que").click(function() {
      $(this).next(".anw").stop().slideToggle(300);
      $(this).toggleClass('on').siblings().removeClass('on');
      $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
      });
      
      /* 게시글 수정 이동 함수*/
      function updateAskedView(askId){
    	  location.href = "${ pageContext.servletContext.contextPath }/asked/update?askId="+ askId;
      }
      
      /* 게시글 삭제 이동 함수*/
      function deleteAskedView(askId){
    	  if(confirm('이 게시글을 삭제하시겠습니까?')){
    		  location.href = "${ pageContext.servletContext.contextPath }/asked/delete?askId="+ askId;
    	  }
      }
      
    </script>

		<!--관리자만 볼 수 있는 버튼으로 만들기!!-->
		<c:if test="${ sessionScope.loginUser.role eq '관리자' }">
		<button type="button" class="regist-bord"
			onclick="location.href='${ pageContext.servletContext.contextPath }/asked/insert'" id="regist-button">
			<div class="regist-bord-text">게시글 등록</div>
		</button>
		</c:if>
	</div>


</body>
</html>