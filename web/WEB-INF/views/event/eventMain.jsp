<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트메인</title>
	<!-- 외부 스타일 시트 -->
 	<link href=${ pageContext.servletContext.contextPath }/resources/css/event/eventmain.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<div class="group">
	<jsp:include page="../common/header.jsp"/>
	
	<!-- 이벤트 메인 전체 적용  -->
    <div class="content-body">
        <div class="event-container">
            <div class="main-container">
                <div class="block-title">
                    <h2>멍개이벤트</h2>
                </div><!-- block-title -->
            </div> <!--main container-->
        </div> <!-- container -->
    </div><!-- content-body -->
	
	<c:forEach var="thumbnail" items="${ eventList }">
	 <!-- 배너 파트 (1) -->
	
	<div class="box" onclick="detailView(${ thumbnail.eveId });">
    <div class="banner-wrap" onclick="location.href='${ pageContext.servletContext.contextPath }/event/main'">
        <div class="banner-content"></div>
            <a>
                <!-- 배너 사진 첨부 -->                                       <!-- event 첨부파일 루트 확인하기... -->
                <img src="${ pageContext.servletContext.contextPath }${ thumbnail.attachmentList[0].evethumbNailPath }">
            </a>
        </div><!--banner-content-->
       </div>
       
        <!-- 배너 하단 제목 부분-->
        <div class="clearfix2">
            <div class="banner-etc">
                <div class="banner-subject fix">
                    <!-- keeping : 진행중 -->  <!-- thumbnail.name : 진행중 혹은 종료 분류 -->
                    <div class="keeping-box kepping"><span>${ thumbnail.category }</span></div>
                <span>${ thumbnail.eveTitle }</span>
                </div>
            </div>
        </div> <!--banner-fix--> 
        
        <div class="banner-date">
            <span>${ event.evecreate }</span> <!-- 이벤트 작성일 (mng에서반영) -->
            <div class="banner-watch">
            		<!-- 이벤트 조회수 (클릭시 반영) -->
                <img src="${ pageContext.servletContext.contextPath }/resources/images/admin/adm_img/ico_watching.png" alt="이벤트조회눈"><span>${ thumbnail.eveCount }</span>
            </div>
        </div>
        </c:forEach>
    </div> <!-- gorup -->
    
   <script>
			function detailView(eveId){
				location.href = '${ pageContext.servletContext.contextPath }/event/detail?eveId=' + eveId;
			}
	</script>
    
    
<!-- 무한스크롤 스크립트 -->
<script>
	var scrollPosition = $(window).scrollTop();

	$(window).scroll(function() {
		var scroll = Math.round($(window).scrollTop());
		if(scroll == $(document).height() - $(window).height()) {
			if(!pageEvent._config.check) {
				pageEvent._config.check = true;
				pageEvent.getEventComponent();
			}
		}
	});
</script>
</body>
</html>