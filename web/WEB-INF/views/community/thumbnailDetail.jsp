<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
	<link href="${ pageContext.servletContext.contextPath }/resources/css/community/thumbnailDetail.css" rel="stylesheet">
	<link href="${ pageContext.servletContext.contextPath }/resources/images/community" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.dkkk {
	position : relative;
right : 430px;
margin-top : 20px;
}

.heart {
	position : relative;
	left : 2px;
}
</style>
</head>
<body>
<jsp:include page="../common/header-comm.jsp"/>	
	 <div class="group">
    <div class="frame-3 screen">
        <div class="flex-col">
          <div class="flex-row">
            <div class="text-container">
              <div class="text-1-1 web-font42">${ thumbnail.header.headerName }</div>
              <h1 class="text-2 web-font43">${ thumbnail.title }</h1>
            </div>
            
            <!--게시글 날짜, 조회수, 하트수, 댓글 수-->
            <div class="other">
            <div class="date notosanskr-medium-black-11px web-font46">${ thumbnail.date }</div>
            <div class="juju" hidden> ${ thumbnail.postId } </div>
            <img
              class="visibility"
             src="${ pageContext.servletContext.contextPath }/resources/images/community/visibility.png"
            />
            <div class="number notosanskr-medium-black-11px web-font46">${ thumbnail.views }</div>
            <img
              class="heart"
              src="${ pageContext.servletContext.contextPath }/resources/images/community/heart.png"
            />
            <div class="number-1 notosanskr-medium-black-11px web-font46">7</div>
            <img
              class="comment"
              src="${ pageContext.servletContext.contextPath }/resources/images/community/comment.png"
            />
            <div class="number-2 notosanskr-medium-black-11px web-font46">0</div>
          </div>
          </div>


            <!--회원 이름-->
            <div class="text-3 web-font44">${ thumbnail.user.nickname }</div>
            
            
            <img class="lline" src="${ pageContext.servletContext.contextPath }/resources/images/community/게시글%20라인4.png">
          
          <!-- 사진 들어가는 공간 -->
          <c:forEach items="${ thumbnail.postImgList }" var="postImgList">
          <img class="rectangle-51" src="${ pageContext.servletContext.contextPath }${ postImgList.thumbnailPath }">
          </c:forEach>
          
          
          <span class="dkkk web-font47">
            ${ thumbnail.text }
          </span>
          <div class="flex-row-1">
            <div class="overlap-group1 border-1px-star-dust">
              <!--키워드-->
              <div class="text-1 notosanskr-medium-fuscous-gray-15px">
                #강아지감기
              </div>
            </div>
            <div class="overlap-group3 border-1px-star-dust">
              <div class="text-1 notosanskr-medium-fuscous-gray-15px">
                #강아지건강
              </div>
            </div>
          </div>
            
          <!--신고-->
          <a href="#"><div class="sir"><img
              class="x1"
             src="${ pageContext.servletContext.contextPath }/resources/images/community/siren.png"
            />
            <div class="text-15 notosanskr-medium-fuscous-gray-15px">신고</div>
          </div></a>
          
          <img
            class="line-3"
            src="${ pageContext.servletContext.contextPath }/resources/images/community/게시글 라인4.png"
          />
          <div class="text-16">
            <span class="span0">0</span><span class="span1">개의 댓글</span>
          </div>
          <div class="overlap-group2">
            <div class="text-17 notosanskr-medium-fuscous-gray-15px web-font48">
              댓글을 입력하세요.
            </div>
            <div class="overlap-group6">
              <img
                class="landscape-1"
                src="${ pageContext.servletContext.contextPath }/resources/images/community/landscape.png"
              />
            </div>
            <div class="overlap-group5"><div class="text-18">등록</div></div>
          </div>
          <div class="text-4"></div>
        </div>
        <div class="overlap-group4 border-1px-star-dust">
          <img
            class="heart-1"
           src="${ pageContext.servletContext.contextPath }/resources/images/community/heart.png"
          />
        </div>
      </div>
      <!--수정하기, 삭제하기 버튼-->
      <button type="button" class="rere" onclick="dailyModifyView(${ thumbnail.postId })">수정하기</button>
			<button type="button" class="rere" onclick="deleteWrite()">삭제하기</button>
	
	<form name="writeForm" method="post">
            <input type="hidden" name="postId" value="${ thumbnail.postId }">
            </form>
	
      <!--좋아요 누르기 시작-->
      
        <!--좋아요 누르기 끝-->

        <!--댓글 시작-->

        <!--댓글 끝-->
    </div>
	
	<!-- 수정하기 버튼 눌렀을 때 게시글 번호 말머리, 제목, 내용, 사진 넘어가서 해당 게시글 수정 
	daily/modify?postId 이건 해당 서블릿으로 게시판 번호값을 넘겨주는 것이다 -->
	<script>
			function dailyModifyView(postId){
				location.href = '${ pageContext.servletContext.contextPath }/daily/modify?postId=' + postId;
			}
			
			function deleteWrite(){
				/*YES를 눌렀을 경우*/
				/*위에서 폼으로 name 지어둔 것 */
				if(confirm('이 게시글을 삭제하시겠습니까?')){
					document.forms.writeForm.action = "${ pageContext.servletContext.contextPath }/thumbnail/delete";
					document.forms.writeForm.submit();
				}
			}
	</script>
	
	<jsp:include page="../common/footer.jsp"/>
	
	
</body>
</html>