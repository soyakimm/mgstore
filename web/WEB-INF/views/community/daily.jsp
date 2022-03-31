<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개일상</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
	<link href="${ pageContext.servletContext.contextPath }/resources/css/community/daily.css" rel="stylesheet">
	<link href="${ pageContext.servletContext.contextPath }/resources/images/community" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.setting {
 background-repeat: no-repeat;
  background-size: cover;
  width : 511px;
height : 387px;
}

.gygy {
width : 511px;
height : 484px;
}

.ellipse {
background-repeat: no-repeat;
background-size: cover;
border-radius: 0;
background-color: #ffffff;
width : 44px;
height : 44px;


}


</style>

</head>
<body>
<jsp:include page="../common/header-comm.jsp"/>

 <div class="group">
        <div class="frame-7 screen">
            <div class="overlap-group6">
            <!--스토어 랜덤 사진-->
             <div class="view"></div>
              <div class="rectangle-83"></div>
              <h1 class="lets-shopping web-font21">Let’s Shopping</h1>
              <!--스토어 버튼-->
              <a href="#"><div class="rectangle-84 store"></div></a>
              <!--스토어 글씨-->
              <a href="#"><div class="store">STORE</div></a>
              <div class="text-15 valign-text-middle"><p class="web-font22">줄무늬 코끼리 삑삑이 장난감</p></div>
            </div>
            <div class="overlap-group-container-1">
              <!--글쓰기 버튼-->
                
                <a href="${ pageContext.servletContext.contextPath }/thumbnail/insert"><div class="overlap-group3">
                <div class="create-new-post">Create New Post</div>
              </div></a>
             <!-- 조회순 조회 -->
              <a href="${ pageContext.servletContext.contextPath }/thumbnail/list">
              <div class="overlap-group2 border-1px-fuscous-gray">
                <div class="text notosanskr-medium-fuscous-gray-15px">조회수순</div>
              </div></a>
              <a href="#"><div class="overlap-group7 border-1px-fuscous-gray">
                <div class="text notosanskr-medium-fuscous-gray-15px">최신순</div>
              </div></a>
            </div>
            <img
              class="line-1"
               src="${ pageContext.servletContext.contextPath }/resources/images/community/멍개일상라인1.png"
            />
            <c:forEach var="thumbnail" items="${ thumbnailList }"> 
            <!--게시글 전체 시작-->
            <div class="uiui">
            <!--첫번째 게시글 시작-->
            <div class="overlap-group">
            <div class="rectangle" onclick="detailView(${ thumbnail.postId });">
            <img
                  class="rectangle-1"
                  src="${ pageContext.servletContext.contextPath }/resources/images/community/멍개일상%20사각형.png"
                />
                <div class="gygy">
                <img class="setting" src="${ pageContext.servletContext.contextPath }${ thumbnail.postImgList[0].thumbnailPath }">
                </div>
                <img class="ellipse" src="${ pageContext.servletContext.contextPath }/resources/images/community/favicon.ico">
                <div class="text-1 gmarketsansttf-medium-black-8px web-font23">${ thumbnail.user.nickname }</div>
                <p class="text-2 gmarketsansttf-medium-black-14px web-font24">
                  ${ thumbnail.title }
                </p>
                <div class="juju" hidden> ${ thumbnail.postId } </div>
                <div class="date notosanskr-medium-black-7px web-font25">${ thumbnail.date }</div>
              </div>
              <!--첫번째 게시글 끝-->
                   
                          
            </div>
             <!--게시글 전체 끝-->
              </c:forEach>
	
	<!-- 페이징 처리중인데 안뜨는중 -->
	<jsp:include page="../common/paging.jsp"/>
	
	
	<!-- 해당 게시글 클릭했을 때 게시글 번호 넘어가서 해당 게시글 볼 수 있음 -->
	<script>
			function detailView(postId){
				location.href = '${ pageContext.servletContext.contextPath }/thumbnail/detail?postId=' + postId;
			}
	</script>
</body>
</html>