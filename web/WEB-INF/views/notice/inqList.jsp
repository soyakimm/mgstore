<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../resource/CSS/01_고객센터.css" rel="stylesheet"type="text/css">
<!--제이쿼리 CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class="main">
		<h1 class="title-bg">고객센터</h1>
		<div class="title-mid">
			<div class="title-mid-1">
				<a href="01_자주묻는질문.html">자주 묻는 질문</a>
			</div>
			<div class="title-mid-1">1:1 문의</div>
		</div>
		<div class="category-min-ask">
			<div class="overlap-min-group-ask">
				<div class="category-min-ask-1">답변완료</div>
			</div>
			<div class="overlap-min-group-ask">
				<div class="category-min-ask-1">답변대기</div>
			</div>
		</div>
		<div id="Accordion_wrap">
			<div class="que">
				<span>여기는 1:1 문의 게시판 입니다. </span> <span class="que-status">답변완료</span>
				<spna class="que-date">2022-09-19 01:12</spna>
			</div>
			<div class="anw">
				<span class="que-contents"> 회원이 남긴 질문이 나옵니다. </span>
				<!-- anw-btn-mng : 관리자용 버튼
             		 anw-btn-mem : 회원용 버튼
        		 -->
				<div class="anw-btn-mem">
					<button>수정</button>
					<button>삭제</button>
				</div>
				<br>
				<br>
				<hr width=95%>
				<span class="anw-title">관리자 답변 </span>
				<div class="anw-date">2022-09-22 13:53</div>
				<div class="anw-btn-mng">
					<button>수정</button>
					<button>삭제</button>
				</div>
			</div>
			<div class="que">
				<span>임연유가 너무 귀여워서 현기증이 나는데 어떻게 하나요?</span> <span class="que-status">답변완료</span>
				<spna class="que-date">2022-05-26 22:03</spna>
			</div>
			<div class="anw">
				<span class="que-contents"> 회원이 남긴 질문이 나옵니다. </span>
				<div class="anw-btn-mem">
					<button>수정</button>
					<button>삭제</button>
				</div>
				<br>
				<br>
				<hr width=95%>
				<span class="anw-title">관리자 답변 </span>
				<div class="anw-date">2022-09-22 13:53</div>
				<div class="anw-btn-mng">
					<button>수정</button>
					<button>삭제</button>
				</div>
			</div>
			<div class="que">
				<span>내일 점심 뭐먹을까요?</span> <span class="que-status">답변대기</span>
				<spna class="que-date">2022-04-01 02:05</spna>
			</div>
			<div class="anw">
				<span class="que-contents"> 회원이 남긴 질문이 나옵니다. </span>
				<div class="anw-btn-mem">
					<button>수정</button>
					<button>삭제</button>
				</div>
				<br>
				<br>
				<hr width=95%>
				<span class="anw-title">관리자 답변 </span>
				<div class="anw-date">2022-09-22 13:53</div>
				<div class="anw-btn-mng">
					<button>수정</button>
					<button>삭제</button>
				</div>
			</div>
		</div>

		<script>
      /* 아코디언 게시판*/
      $(".que").click(function() {
      $(this).next(".anw").stop().slideToggle(300);
      $(this).toggleClass('on').siblings().removeClass('on');
      $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
      });
    </script>


		<button type="button" class="regist-bord"
			onclick="location.href='11_일대일문의_글작성.html'" id="regist-button">
			<div class="regist-bord-text">문의글 등록</div>
		</button>
	</div>





</body>
</html>