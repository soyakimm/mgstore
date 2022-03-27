<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 1:1 문의사항</title>
<!--제이쿼리 CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 외부 스타일 시트 -->
<link
   href="${ pageContext.servletContext.contextPath }/resources/css/notice/notice.css"
   rel="stylesheet">
</head>
<body>
   <div class="main">
      <h1 class="title-bg">고객센터</h1>
      <div class="title-mid">
         <div class="title-mid-1">
            <a href="${ pageContext.servletContext.contextPath }/asked/list">자주묻는질문</a>
         </div>
         <div class="title-mid-1">
            <a href="${ pageContext.servletContext.contextPath }/inq/list">1:1 문의</a>
         </div>
      </div>
      <form method="post" action="${ pageContext.servletContext.contextPath }/inq/update">
      <input type="hidden" name="inqId" value="${ inqQue.inqId }">
      <div class="overlap-group2">
         <div class="text-top">
         문의 사항 수정페이지
         </div>
         <div>
            <input type="text" class="asked-title-w" name="inqTitle" value="${ inqQue.inqTitle }" required> <!-- required : 입력값 필수! -->
         </div>
            <textarea class="aked-contents-w notosans-15px-b" name="inqContents" required>${ inqQue.inqContents }</textarea>
         <div class="asked-under">
         <!-- 파일첨부 기능 보류.. -->
            <div class="file-add notosans-15px-b">파일첨부</div>
            <div class="file-layout-container">
               <div>
                  <input class="file-layout" value="파일을 첨부해주세요." disabled="disabled">
               </div>
               <div class="asked-submit">
                  <button type="submit">문의사항 수정</button>
               </div>
            </div>
            <label class="file-upload" for="input-file"> 파일찾기 </label> <input
               type="file" id="input-file">
         </div>
      </div>
      </form>
   </div>

</body>
</html>