<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 메인 게시글</title>
<!-- 외부 스타일 시트 -->
<link href=${ pageContext.servletContext.contextPath }/resources/css/event/eventinfo.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	
	<div class="group"> 
	<jsp:include page="../common/header.jsp"/>
	
	 <!-- content 전체 범위 -->
	 <form method="post" action="${ pageContext.servletContext.contextPath }/event/detail" enctype="multipart/form-data">
    <div class="content-body">
        <div class="container-wrapper notice-container"> <!-- 위트참고 --> </div>
            <div class="main-content">
                <div class="side-title">
                    <p><span>이벤트게시판</span></p>
                    <h2>[댓글이벤트] 3월 멍개상점 베스트 어워드 ${ event.category.name }
                                        <span>진행중</span>
                            </h2>
                    <ul>
                        <li class="none-bar">
                            <img src="${ pageContext.servletContext.contextPath } alt=""><span>2022.03.07 ~ 2022.03.25</span>
                        </li>
                        <li class="right-block">
                            <img src="../EVENT/resources/images/ico_watching.png" alt=""><span>330</span>
                        </li>
                    </ul>
                </div><!--side-title-->
                <div class="image-section">
                    <img src="resources/images/event_picture.png" usemap="#eventmap">
                    <map name="eventmap" class="eve-content-section">
                        <ul>
                            <li>
                                     <area shape="rect" coords="" href="https://shop.witkorea.kr/promotion/bestaward">
                                     <!-- ★ 이벤트 진행할 상품페이지 url 작성 ★-->
                                    <a href="https://shop.witkorea.kr/goods/view?no=4744">
                                        <img src="../EVENT/resources/images/event-banner-btn-orange.png">
                                    </a>
                        </ul>
                    </map>
                </div>
                <div class="sub-section full-size">
                    <div class="text-section">
                        
                    </div>
                </div>
                <div class="sub-section full-size">
                    <div class="report-section">
                        <div class="btn-wrap">
                            <!-- 관리자용 게시글 수정 / 삭제 버튼 --> <!-- ※ href 수정 : 이벤트 수정 페이지 -->
                            <button type="button" class="eve-modify-btn" onClick="location.href='http://192.168.35.52:5500/EVENT/3.eve_mng.html'">수정</button>
                            <!-- 관리자용 게시글 삭제 -->
                            <button type="button" class="eve-delete-btn"  onclick="button_event();">삭제</button>
                        </div>
                    </div>
                </div>
    	</form> <!-- 이벤트 게시글 post로 보내기 -->
	</div><!-- group -->
</body>
</html>