<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoImageInsert</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ pageContext.servletContext.contextPath }/resources/css/community/insertForms.css" rel="stylesheet">

<style>
.outer {
	width: 800px;
	margin: auto;
}

.wrap {
	width: 780px;
	margin: 100px auto;
}

.board_title {
	border-bottom: 1px solid #282A35;
}

.board_content {
	padding: 0px 20px;
}

.board_content .content {
	margin-bottom: 30px;
}

.input_area {
	border: solid 1px #dadada;
	padding: 10px 10px 14px 10px;
	background: white;
}


.input_area select {
	width: 150px;
	height: 30px;
	border: 0px;
}


.input_area input {
	width: 700px;
	height: 30px;
	border: 0px;
}

.input_area input:focus,
.input_area select:focus {
	outline: none;
}


.textarea {
	resize: none;
	border: solid 1px #dadada;
}

.textarea:focus {
	outline: none;
}

.title_span {
	background-color: #282A35;
}

.board_area button {
	width: 100px;
	height: 35px;
	border: 0px;
	color: white;
	background: #282A35;
	margin: 5px;
	cursor : pointer;
}

.btn_area {
	text-align: center;
	border-top: 1px solid #282A35;
	padding: 30px;
}

select option[value=""][disabled] {
	display: none;
}
</style>

</head>
<body>
<jsp:include page="../common/header-comm.jsp"/>

	<div class="outer">
		<div class="wrap">
			<div class="board_area">
				<div class="board_title">
					<h1>게시글 작성</h1>
				</div>
				<div class="board_content">
					<form method="post" action="${ pageContext.servletContext.contextPath }/community/insert">
						<div class="content">
							<h4>
								<span class="title_span">&nbsp;</span> 분류
							</h4>
							<span class="input_area"> 
							<select name="category">
                                <option value="50" selected>자유게시판</option>
							</select>
							
						<!--  <select name="header">
							<option value="" selected>말머리 선택</option>
                                <option value="1">건강관리(멍개노하우)</option>
                                <option value="2">급여/식이(멍개노하우)</option>
                                <option value="3">꿀팁(멍개노하우)</option>
                                <option value="4">놀이(멍개노하우)</option>
                                <option value="5">여행(멍개노하우)</option>
                                <option value="6">기타(멍개노하우)</option>
                                <option value="7">진행 중(멍개메이트)</option>
                                <option value="8">완료(멍개메이트)</option>
							</select>-->	
							
							</span>
							<h4>
								<span class="title_span">&nbsp;</span> 제목
							</h4>
							<span class="input_area"> <input type="text" name="title"
								required>
							</span>

							<h4>
								<span class="title_span">&nbsp;</span> 내용
							</h4>
							<textarea class="textarea" rows="20" cols="100" name="text"
								required></textarea>
						</div>
						<div class="btn_area">
							<button type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/community/main'">목록으로</button>
							<button type="submit">작성하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="${ pageContext.servletContext.contextPath }/resources/js/community/imagePreview.js"></script>
</body>
</html>