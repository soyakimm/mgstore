<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍개상점 고객센터</title>
<!-- 외부 스타일 시트 -->
<link href="notices.css" rel="stylesheet">
<style>
button {
  background-color: white;
  border-style: none;
  cursor: pointer;
}
</style>
</head>
<body>
  <div class="main">
    <h1 class="title-bg">고객센터</h1>
    <div class="title-mid">
      <div class="title-mid-1">
        자주 묻는 질문
      </div>
      <div class="title-mid-1">
      <a href="02_일대일문의.html">1:1 문의</a>
      </div>
    </div>
    <form method="get" action="${ pageContext.servletContext.contextPath }/asked/list">
    <div class="category-min">
      <div class="overlap-min-group">
        <button class="category-min-1" id="searchCondition" value="all">
          전체
        </button>
      </div>
      <div class="overlap-min-group">
        <button class="category-min-1" id="searchCondition" value="service">
          이용문의
        </button>
      </div>
      <div class="overlap-min-group">
        <button class="category-min-1" id="searchCondition" value="order">
          구매문의
        </button>
      </div>
      <div class="overlap-min-group">
        <button class="category-min-1" id="searchCondition" value="delivery">
          배송문의
        </button>
      </div>
      <div class="overlap-min-group">
        <div class="category-min-1" id="searchCondition" value="etc">
          기타
        </div>
      </div>
    </div>
    </form>
    <div id="Accordion_wrap">
      <div class="que">
        <span>여기는 멍개상점 자주 묻는 질문 게시판 입니다.</span>
        <spna class="que-date">2022-09-19 01:12</spna>
      </div>
      <div class="anw">
        <span>글작성/삭제/수정 기능은 관리자에게만 부여!</span>
        <!-- anw-btn-mng : 관리자용 버튼
             anw-btn-mem : 회원용 버튼
        -->
        <div class="anw-btn-mng">
          <button>수정</button>
          <button>삭제</button>
        </div>
      </div>
      <c:forEach var="asked" items="${ askedList }">
       <div class="que">
        <span>${ asked.title }</span>
        <spna class="que-date">${ asked.createDate }</spna>
      </div>
      <div class="anw">
        <span>${ asked.contents }</span>
        <div class="anw-btn-mng">
          <button>수정</button>
          <button>삭제</button>
        </div>
      </div>
      </c:forEach>
    </div>

    <script>
      /* 아코디언 게시판*/
      $(".que").click(function() {
      $(this).next(".anw").stop().slideToggle(300);
      $(this).toggleClass('on').siblings().removeClass('on');
      $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
      });
    </script>

    <!--관리자만 볼 수 있는 버튼으로 만들기!!-->
    <button type="button" class="regist-bord" onclick="location.href='10_자주묻는질문_글작성.html'" id="regist-button">
      <div class="regist-bord-text">게시글 등록</div>
  </button>
  </div>
  
  
</body>
</body>
</html>