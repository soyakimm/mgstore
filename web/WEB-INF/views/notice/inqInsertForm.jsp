<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 자주묻는질문</title>
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/notice/notice.css"
	rel="stylesheet">
<!--제이쿼리 CDN-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

	<jsp:include page="../common/header.jsp" />
	
	<div class="main">
		<h1 class="title-bg">고객센터</h1>
		<div class="title-mid">
			<div class="title-mid-1">
				<a href='${ pageContext.servletContext.contextPath }/asked/list'>자주묻는질문</a>
			</div>
			<div class="title-mid-1">
				<a href='${ pageContext.servletContext.contextPath }/inq/list'>1:1 문의</a>
			</div>
		</div>
		<form method="post" action="${ pageContext.servletContext.contextPath }/inq/insert">
		<div class="overlap-group2">
			<div class="text-top">
			고객님의 문의 사항을 해결해드리겠습니다.
			</div>
			<div>
				<input type="text" class="asked-title-w" name="inqTitle" placeholder="제목을 입력해주세요">
			</div>
				<textarea class="aked-contents-w notosans-15px-b" name="inqContents" placeholder="게시글을 작성해주세요"></textarea>
			<div class="asked-under">
			<!-- 역시나 db를 안만들어서 제거 예정 ㅠㅠ -->
				<div class="file-add notosans-15px-b">파일첨부</div>
				<div class="file-layout-container">
					<div>
						<input class="file-layout" value="파일을 첨부해주세요." disabled="disabled">
					</div>
					<div class="asked-submit">
						<button type="submit">문의하기</button>
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
	<script>


    </script>

</body>
</html>