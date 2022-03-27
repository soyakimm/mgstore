<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 자주묻는질문</title>
<!--제이쿼리 CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 외부 스타일 시트 -->
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/notice/notice.css"
	rel="stylesheet">
</head>
<body>
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
		<form method="post" action="${ pageContext.servletContext.contextPath }/asked/insert">
        <div class="overlap-group2">
            <div class="text-top">
            자주 묻는 질문 등록
            </div>
            <div>
                <input type="text" class="asked-title-w" name="askTitle" placeholder="제목을 입력해주세요" required> <!-- required : 입력값 필수! -->
            </div>
                <div>
                    <select class="asked-category-w text-8" name="category">
                        <option value="1">이용문의</option>
                        <option value="2">구매문의</option>
                        <option value="3">배송문의</option>
                        <option value="4">기타</option>
                    </select>
                </div>
                <textarea class="aked-contents-w notosans-15px-b" name="askContents" placeholder="게시글을 작성해주세요" required></textarea>
              <div class="asked-under">
              <!-- 파일첨부 db를 안만들어서 아마 제거될 예정 ^^.. -->
                <div class="file-add notosans-15px-b">파일첨부</div>
                <div class="file-layout-container">
                  <div>
                    <input class="file-layout" value="파일을 첨부해주세요." disabled="disabled">
                  </div>
                  <div class="asked-submit">
                    <button type="submit">게시글 작성</button>
                  </div>
                </div>
                <label class="file-upload" for="input-file">
                  파일찾기
                </label>
                <input type="file" id="input-file">
              </div>
        </div>
        </form>
    </div>
</body>
</body>

</html>