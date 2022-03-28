<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>freeTalk</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ pageContext.servletContext.contextPath }/resources/css/community/freeTalk.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	 <div class="group">
        
        <div class="frame-4 screen">
            <div class="flex-col">
              <div class="flex-col-1">
                <div class="flex-col-2">
                  <div class="flex-col-3">
                    <div class="flex-col-4">
                      <div class="overlap-group-container">
                        <div class="overlap-group2">
                          <a href="../글작성/write.html"><div class="create-new-post">Create New Post</div></a>
                        </div>
                        <a href="#"><div class="overlap-group1 border-1px-fuscous-gray">
                          <div class="text notosanskr-medium-fuscous-gray-15px">
                            댓글순
                          </div></a>
                        </div>
                        <a href="#"><div class="overlap-group border-1px-fuscous-gray">
                          <div class="text notosanskr-medium-fuscous-gray-15px">
                            최신순
                          </div>
                        </div></a>
                      </div>
                      <img
                        class="line-1-2"
                        src="../free/image/자유게시판라인1.png"
                      />
                      
                      <!--전체 게시물 시작-->
                      <div class="yuyu">
						
						
						
						<!-- forEach 작성해야함!!!!!!!!!!! -->
                      <!--게시물 첫번째 시작-->
                      <c:forEach var="community" items="${ communityList }">
                      <div class="flex-row">
                        <div class="rectangle"></div>
                        <div class="text-container">
                          <div class="text-1 gmarketsansttf-bold-black-18px web-font48">
                            ${ community.title }
                          </div>
                          <p class="text-2 notosanskr-medium-black-16px web-font49">
                            ${ community.text }
                          </p>
                        </div>
                      </div>
                       <!--게시물 첫번째 끝-->
                       </c:forEach>
                      </div>
                      <!--전체 게시물 끝-->
                  	
                  	<!-- 페이징 처리!!!!!!!! -->
                  	<jsp:include page="../common/paging.jsp"/>
				
	
                    </div>
                   
          </div>
          
    </div>
  </div>
</div>
</div>
</body>
</html>