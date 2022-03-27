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
				<a href='${ pageContext.servletContext.contextPath }/asked/list'>자주 묻는 질문</a>
			</div>
			<div class="title-mid-1">1:1 문의</div>
		</div>
		<form method="get" action="${ pageContext.servletContext.contextPath }/inq/list">
		<div class="category-min-ask">
			<div class="overlap-min-group-ask">
				<button type="submit" class="category-min-ask-1" name="searchCondition" value="전체">
				전체
				</button>
			</div>
			<div class="overlap-min-group-ask">
				<button type="submit" class="category-min-ask-1" name="searchCondition" value="답변완료">
				답변완료
				</button>
			</div>
			<div class="overlap-min-group-ask">
				<button type="submit" class="category-min-ask-1" name="searchCondition" value="답변미완료">
				답변미완료
				</button>
			</div>
		</div>
		</form>
		<div id="Accordion_wrap">
			<div class="que">
				<span>여기는 1:1 문의 게시판 입니다. </span> <span class="que-status">답변완료</span>
				<span class="que-date">2022-09-19 01:12</span>
			</div>
			<div class="anw">
				<span class="que-contents"> 회원이 남긴 질문이 나옵니다. </span>
				<!-- anw-btn-mng : 관리자용 버튼
             		 anw-btn-mem : 회원용 버튼
        		 -->
				<div class="anw-btn-mem">
					<button>수정</button>
					<button>삭제</button>
				</div>
				<br>
				<br>
				<hr width=95%>
				<span class="anw-title">관리자 답변 </span>
				<div class="anw-date">2022-09-22 13:53</div>
				<div class="anw-btn-mng">
					<button>수정</button>
					<button>삭제</button>
				</div>
			</div>
			<c:forEach var="inq" items="${ inqList }">
			<div class="que">
				<span>${ inq.inqTitle }</span> 
				<span class="que-status">${ inq.inqCategoryName.inqCategoryName }</span>
				<span class="que-date"><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${ inq.inqDate }"/></span>
			</div>
			<div class="anw">
				<span class="que-contents">${ inq.inqContents }</span>
				<div class="anw-btn-mem">
					<button type="button" onclick="updateInqView(${ inq.inqId })">수정</button>
					<button type="button" onclick="deleteInqView(${ inq.inqId })">삭제</button>
				</div>
				<br>
				<br>
				<hr width=95%>
				<span class="anw-title">
				<c:if test="inq.perAnw != 'NO DATA'">
				${ inq.perAnw }
				</span>
				<div class="anw-date"><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${ inq.perAnwDate }"/></div>
				<div class="anw-btn-mng">
					<button>수정</button>
					<button>삭제</button>
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
      
      /* 문의글 수정 이동 함수*/
      function updateInqView(inqId){
    	  location.href = "${ pageContext.servletContext.contextPath }/inq/update?inqId="+ inqId;
      }
      
      /* 문의글 삭제 이동 함수*/
      function deleteInqView(inqId){
    	  if(confirm('이 게시글을 삭제하시겠습니까?')){
    		  location.href = "${ pageContext.servletContext.contextPath }/inq/delete?inqId="+ inqId;
    	  }
      }
    </script>


		<button type="button" class="regist-bord"
			onclick="location.href='${ pageContext.servletContext.contextPath }/inq/insert'" id="regist-button">
			<div class="regist-bord-text">문의글 등록</div>
		</button>
	</div>





</body>
</html>