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
<link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
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
	<jsp:include page="../common/header.jsp" />
<body>
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
			<c:forEach var="inq" items="${ inqList }">
			<div class="que">
				<span>${ inq.inqTitle }</span> 
				<span class="que-status">${ inq.inqCategoryName.inqCategoryName }</span>
				<span class="que-date"><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${ inq.inqDate }"/></span>
			</div>
			<div class="anw">
				<p class="que-contents">${ inq.inqContents }</p>
				<div class="anw-btn-mem">
					<!-- 본인게시글만 볼수있음! -->
					<c:if test="${ sessionScope.loginUser.userId eq '${ inq.inqId }'}">
					<button type="button" onclick="updateInqView(${ inq.inqId })">수정</button>
					<button type="button" onclick="deleteInqView(${ inq.inqId })">삭제</button>
					</c:if>
					<!-- 답변은 관리자만 볼 수 있다 -->
					<c:if test="${ sessionScope.loginUser.role eq '관리자' }">
					<button type="button" onclick="insertAns(${ inq.inqId })">답변등록</button>
					</c:if>
				</div>
				<br>
				<br>
				<hr width=95%>
				<c:if test="${ inq.inqCategoryId eq 10}">
				<p class="anw-title">
				${ inq.ansContents }
				</p>
				<div class="anw-date"><fmt:formatDate pattern="yyyy-MM-dd hh:mm" value="${ inq.ansDate }"/></div>
				<div class="anw-btn-mng">
				<c:if test="${ sessionScope.loginUser.role eq '관리자' }">
					<button type="button" onclick="updateAnsView(${ inq.inqId })">수정</button>
					<button type="button" onclick="deleteAnsView(${ inq.inqId })">삭제</button>
				</c:if>
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
      
      /* 답변글 등록 이동 (inq update로 inq 아이디 가지고 이동해서 내용 수정하기로 진행)*/
      function insertAns(inqId){
    	  location.href = "${ pageContext.servletContext.contextPath }/inq/ans?inqId="+ inqId;
      }
      
      /* 답변 수정*/
      function updateAnsView(inqId) {
    	  location.href = "${ pageContext.servletContext.contextPath }/inq/ansUpdate?inqId="+ inqId;
		
	  }
      
      /* 문의글 삭제 이동 함수*/
      function deleteAnsView(inqId){
    	  if(confirm('이 답글을 삭제하시겠습니까?')){
    		  location.href = "${ pageContext.servletContext.contextPath }/inq/ansDelete?inqId="+ inqId;
    	  }
      }
      

    </script>

		<button type="button" class="regist-bord"
			onclick="registInq()" id="regist-button" >
			<div class="regist-bord-text">문의글 등록</div>
		</button>
	</div>
	
	<script type="text/javascript">
	
	function registInq(){
  	  location.href = "${ pageContext.servletContext.contextPath }/inq/insert";
    }
	
	</script>

</body>
<jsp:include page="../common/footer.jsp"/>
</html>