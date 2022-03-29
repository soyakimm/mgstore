<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main community</title>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
	<!-- jQuery로 id 접근시 $(“#id”) , ex) $(“#header_area”)
          class로 접근시 $(“.class”), ex) $(“.section_nav”)
          
          name으로 접근시 개체[name=개체 이름] 형태로 접근합니다.
          name으로 접근시 $(tag_name[name=name]), ex) $(“input[name=search_value]“) -->

	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ pageContext.servletContext.contextPath }/resources/css/maincomm.css" rel="stylesheet">
	<link href="${ pageContext.servletContext.contextPath }/resources/images/community" rel="stylesheet">

	<div class="group">
  <div class="frame-1 screen">
    <div class="overlap-group1">
    <!--View Detail 버튼-->
    <a href="#">
      <div class="overlap-group5">
        <div class="view-detail web-font1">View Detail</div>
      </div>
    </a>

    </div>
    <div class="text-container">
      <div class="text-1-1 web-font2">내가 좋아요&nbsp;&nbsp;누른 페이지</div>
      <!--전체보기 누르면 마이페이지로 이동-->
      <a href="#"><div class="text-2 web-font4">전체 보기</div></a>
    </div>
    <!--내가 좋아요 누른 페이지 추후에 onclick 기능 추가-->
    <div class="flex-row">
      <img
        class="rectangle-4"
        src=""
      /><img
        class="rectangle-1"
        src=""
      /><img
        class="rectangle-1"
        src=""
      />
      <img
        class="rectangle-1"
        src=""
      />
    </div>
    <div class="text-container-1">
      <div class="text-3 gmarketsansttf-medium-elf-green-14px web-font3">건강관리</div>
      <div class="text-5 gmarketsansttf-medium-elf-green-14px web-font3">급여/식이</div>
      <div class="text-7 gmarketsansttf-medium-elf-green-14px web-font3">놀이</div>
      <div class="text-9 gmarketsansttf-medium-elf-green-14px web-font3">여행</div>
    </div>
    <!--누르면 해당 글 상세 페이지로 이동-->
    <div class="text-container-2">
      <a href="#"><div class="text-4 gmarketsansttf-medium-black-18px web-font5">
        강아지 겨울철 건강관리
      </div></a>
      <a href="#"><div class="text-6 gmarketsansttf-medium-black-18px web-font5">
        반려견에게 절대 주면 안되는 10 ···
      </div></a>
      <a href="#"><div class="text-8 gmarketsansttf-medium-black-18px web-font5">
        강아지 노즈워크!
      </div></a>
      <a href="#"><div class="text-10 gmarketsansttf-medium-black-18px web-font5">
        반려견과 함께 갈 수 있는 카페
      </div></a>
    </div>
    <div class="flex-col">
      <div class="flex-row-1">
        <div class="flex-row-2">
          <div class="flex-col-1">
            <h1 class="surname web-font6">BEST</h1>
            <div class="text-11 web-font7">멍개 노하우</div>
          </div>
          <div class="overlap-group8">
            <!--멍개 노하우 1번-->
            <a href="#"><div class="rectangle-15"></div></a>
            <div class="rectangle-2"></div>
            <div class="number gmarketsansttf-medium-white-16px web-font11">1</div>
            <div class="rectangle-29"></div>
            <div class="text_label-2 gmarketsansttf-medium-elf-green-14px">
              건강관리
            </div>
            <div class="text-12 gmarketsansttf-medium-black-18px web-font10">
              강아지 겨울철 건강관리
            </div>
          </div>
        </div>
        <div class="flex-col-2">
          <div class="overlap-group-container">
            <div class="overlap-group">
              <!--멍개 노하우 2번-->
              <a href="#"><div class="rectangle-2-1"></div></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">2</div>
            </div>
            <div class="overlap-group-1">
              <!--멍개 노하우 3번-->
              <a href="#"><div class="rectangle-2-1"></div></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">3</div>
            </div>
          </div>
          <div class="text-container-3">
            <div class="text_label gmarketsansttf-medium-elf-green-14px web-font8">
              건강관리
            </div>
            <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
              강아지 겨울철 건강관리
            </div>
            <div class="text_label-1 gmarketsansttf-medium-elf-green-14px web-font8">
              건강관리
            </div>
            <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
              강아지 겨울철 건강관리
            </div>
          </div>
          <div class="overlap-group-container-1">
            <div class="overlap-group">
              <!--멍개 노하우 4번-->
              <a href="#"><div class="rectangle-2-1"></div></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">4</div>
            </div>
            <div class="overlap-group-1">
              <!--멍개 노하우 5번-->
              <a href="#"><div class="rectangle-2-1"></div></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">5</div>
            </div>
          </div>
        </div>
      </div>
      <div class="text-container-4">
        <div class="text_label gmarketsansttf-medium-elf-green-14px web-font8">
          건강관리
        </div>
        <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
          강아지 겨울철 건강관리
        </div>
        <div class="text_label-1 gmarketsansttf-medium-elf-green-14px web-font8">
          건강관리
        </div>
        <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
          강아지 겨울철 건강관리
        </div>
      </div>
    </div>
<!--글쓰기 버튼-->

<a href="../글작성/write.html"><div class="write_btn_wrap" >
<div class="write_btn">글쓰기</div>
</div></a>
    <!--이벤트-->
    <div class="overlap-group3">
      <img
        class="image-9"
        src=""
      />
      <!--이벤트 왼쪽, 오른쪽 이동-->
      <a href="#"><div class="ellipse-26 border-1px-celeste">&lt;</div></a>
      <a href="#"><div class="ellipse-27 border-1px-celeste">&gt;</div></a>
    </div>
    
    <div class="text"></div>
  </div>
</div>    

</body>
</html>