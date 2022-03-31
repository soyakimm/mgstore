<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
 <link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
<meta charset="UTF-8">
<title>이벤트수정</title>
<!-- 외부 스타일 시트 -->
<link href="${ pageContext.servletContext.contextPath }/resources/css/event/eventmng.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
	<jsp:include page="../common/header-comm.jsp"/>
<body>

	<div class="group">

	<form action="${ pageContext.servletContext.contextPath }/event/update" method="post" enctype="multipart/form-data">
			<h2>이벤트 소개</h2>
			<hr>
			<div class="eve-info">
					<!-- 이벤트 이름-->
					<div class="eve name">
						<p id="title">이벤트제목</p> 
						<input type="text" id="text" name="eveTitle" value="${ thumbnail.eveTitle}" placeholder="이벤트 제목을 설정해주세요." required/>
					</div>
			</div>

			<!-- 옵션 기능 -->
			<div class="event hosing">
				<!-- 이벤트 진행 상황 -->
				<span class="span1">
					<p id="title">이벤트 진행 상황</p> <b id="sub">진행중 혹은 종료</b>
					<div style="padding-top: 1%;">
						<select name="category">
							<option class="option" value="" selected disabled>진행상황 선택</option>
							<option class="option" value="1">진행중</option>
							<option class="option" value="2">종료</option>
						</select>


						<!-- 날짜 선택 -->
						<div class="eve-date">
							<p id="title">이벤트 기간 설정</p>
							<b id="sub" style="font-size: 14px;"> 왼쪽은 이벤트 시작기간
								 <br> 오른쪽은 이벤트 종료기간입니다. <br>
							</b>
							<input type="date" name="eveStart" value="${ thumbnail.eveStart }">  <!-- 선생님은 다 옳은 말씀만해.. 다 내 좔못이야.. -->
							<input type="date" name="eveEnd" value="${ thumbnail.eveEnd }"> 
						</div>



						<!-- 배너 등록 --><br><br><br><br><br><br><br><br><br>
						<div class="eve img"></div>
							<p id="title">이벤트 배너 이미지 등록</p>
							<b id="sub" style="font-size: 14px;"> 이벤트 배너이미지는 1200 × 150
								px 을 넘지않아야합니다. <br> 최대한 사이즈를 지켜서 업로드 해주세요. <br>
							</b>
							<!-- 배너이미지 -->
							<div id="imgSection">
								<button id="imgBtn">배너이미지</button>
								<input type="file" name="thumbnail" id="file"  value="${ thumbnail.eveTitle } accept="image/gif,image/jpeg,image/png" required>
							</div>
							

							<!--배너게시글설명이미지-->
							<div id="imgSection"></div>
								<span class="eveImg">
									<button id="imgBtn">설명이미지</button> 
									<input type="file" name="evecontent" id="file" value="${ thumbnail.eveTitle }" required>
								</span>
								
										<br>
										<br> <br>
										<br>
										<br>
											<button id="appBtn" type="submit">수정하기</button><br>
										<br>
										<br>
							
						</div>
					</form> <!-- 무조건 처리 필요한 enctype -->
			</div><!--group-->
		</body>		
	
	<script>
			function detailView(eveId){
				location.href = '${ pageContext.servletContext.contextPath }/event/update?eveId=' + eveId;
			}
	</script>
	
	<!-- <script src="${ pageContext.servletContext.contextPath }/resources/js/event/EventImagePreview.js"></script> -->
	
	</body>
		<jsp:include page="../common/footer.jsp"/>
</html>