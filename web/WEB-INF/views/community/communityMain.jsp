<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>communityMain</title>
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="${ pageContext.servletContext.contextPath }/resources/css/community/communityMain.css" rel="stylesheet">
		<link href="${ pageContext.servletContext.contextPath }/resources/images/community" rel="stylesheet">


<style>
.screen {
height: 800px;
padding : 60px 0px 0px 0px;
}

.overlap-group5 {
position: relative;
bottom : 230px;
right : 580px;
}

.flex-row {
position: relative;
left : 70px
}

.text-container {
position: relative;
left : 70px
}

.text-container-1 {
position: relative;
left : 2px
}

.text-container-2 {
position: relative;
left : 67px
}

.jin {
position: relative;
left : 5px;
bottom : 34px;
width : 30px;
height : 30px;: 
}

.write_btn {
position: relative;
right : 240px;
}

.hu {
position: relative;
bottom : 45px;
left : 2px
}

.overlap-group3 {
position : relative;
left : 30px;
}



.eee {
position : relative;
bottom : 38px;
}

.rectangle-15 {
 background-repeat: no-repeat;
  background-size: cover;
  width : 327px;
height : 340px;
}


</style>

</head>
<body>
<jsp:include page="../common/header-comm.jsp"/>
	<div class="group">
  <div class="frame-1 screen">
   
     <img class="frame-1 screen" src="${ pageContext.servletContext.contextPath }/resources/images/community/dog-ge71586665_1920.jpg">
    <!--View Detail 버튼-->
    <a href="#">
      <div class="overlap-group5">
        <div class="view-detail web-font1" href="${ pageContext.servletContext.contextPath }/community/freelist">View Detail</div>
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
            <div class="text-11 web-font7">멍개일상</div>
          </div>
          <div class="overlap-group8">
            <!--멍개 노하우 1번-->
            <!-- thumbnailList란 서블렛에서 받아왔던 변수명이다. thumbnailList[0] 첫번째 게시물을 의미한다.
            postImgList란 사진의 묶음이다. 이 이름을 정확히 써주지 않았을 때 CommunityWriteDTO에 해당 값이 없다고 떴다. thumbnailList는 CommunityWriteDTO 타입을 변수명을 통해서 담은 것이다.
            그러므로 postImgList는 CommunityWriteDTO에서 사진 테이블인 CommunityPostImageDTO를 선언한 필드 이름이어야 한다. 그래야 CommunityWriteDTO에서 담아올 수 있다.
             thumbnailList[0].postImgList[0]이란 첫번째 게시글에서 처음으로 저장한 사진이다.
            thumbnailList[0].postImgList[1]이란 첫번째 게시글에서 두번째로 저장한 사진이다. -->
            <a href="#"  onclick="detailView(${ thumbnailList[0].postId });"><img  class="rectangle-15" src="${ pageContext.servletContext.contextPath }${ thumbnailList[0].postImgList[0].thumbnailPath }"></a>
            <div class="rectangle-2"></div>
            <div class="number gmarketsansttf-medium-white-16px web-font11">1</div>
            <div class="rectangle-29"></div>
            <div class="text_label-2 gmarketsansttf-medium-elf-green-14px">
              ${ thumbnailList[0].header.headerName }
            </div>
         
            <div class="text-12 gmarketsansttf-medium-black-18px web-font10">
              ${ thumbnailList[0].title }
            </div>
           
          </div>
        </div>
        <div class="flex-col-2">
          <div class="overlap-group-container">
            <div class="overlap-group">
              <!--멍개 노하우 2번-->
              <a href="#" onclick="detailView(${ thumbnailList[1].postId });"><img  class="rectangle-2-1" src="${ pageContext.servletContext.contextPath }${ thumbnailList[1].postImgList[0].thumbnailPath }"></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">2</div>
            </div>
            <div class="overlap-group-1">
              <!--멍개 노하우 3번-->
              <a href="#" onclick="detailView(${ thumbnailList[2].postId });"><img  class="rectangle-2-1" src="${ pageContext.servletContext.contextPath }${ thumbnailList[2].postImgList[0].thumbnailPath }"></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">3</div>
            </div>
          </div>
          <div class="text-container-3">
            <div class="text_label gmarketsansttf-medium-elf-green-14px web-font8">
               ${ thumbnailList[1].header.headerName }
            </div>
            <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
              ${ thumbnailList[1].title }
            </div>
            <div class="text_label-1 gmarketsansttf-medium-elf-green-14px web-font8">
              ${ thumbnailList[2].header.headerName }
            </div>
            <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
              ${ thumbnailList[2].title }
            </div>
          </div>
          <div class="overlap-group-container-1">
            <div class="overlap-group">
              <!--멍개 노하우 4번-->
              <a href="#" onclick="detailView(${ thumbnailList[3].postId });"><img  class="rectangle-2-1" src="${ pageContext.servletContext.contextPath }${ thumbnailList[3].postImgList[0].thumbnailPath }"></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">4</div>
            </div>
            <div class="overlap-group-1">
              <!--멍개 노하우 5번-->
              <a href="#" onclick="detailView(${ thumbnailList[4].postId });"><img  class="rectangle-2-1" src="${ pageContext.servletContext.contextPath }${ thumbnailList[4].postImgList[0].thumbnailPath }"></a>
              <div class="rectangle-2"></div>
              <div class="number gmarketsansttf-medium-white-16px web-font11">5</div>
            </div>
          </div>
        </div>
      </div>
      <div class="text-container-4">
        <div class="text_label gmarketsansttf-medium-elf-green-14px web-font8">
          ${ thumbnailList[3].header.headerName }
        </div>
        <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
           ${ thumbnailList[3].title }
        </div>
        <div class="text_label-1 gmarketsansttf-medium-elf-green-14px web-font8">
          ${ thumbnailList[4].header.headerName }
        </div>
        <div class="text-1 gmarketsansttf-medium-black-18px web-font10">
          ${ thumbnailList[4].title }
        </div>
      </div>
    </div>
<!--글쓰기 버튼-->

<a href="${ pageContext.servletContext.contextPath }/community/insert"><div class="write_btn_wrap" >
<div class="write_btn"><img class="jin" src="${ pageContext.servletContext.contextPath }/resources/images/community/writing.png"><p class="hu">글쓰기</p></div>
</div></a>
    <!--이벤트-->
    <div class="overlap-group3">
      <img
        class="image-9"
        src=""
      />
      <!--이벤트 왼쪽, 오른쪽 이동-->
      <a href="#"><div class="ellipse-26 border-1px-celeste"><p class="eee">&lt;</p></div></a>
      <a href="#"><div class="ellipse-27 border-1px-celeste"><p class="eee">&gt;</p></div></a>
    </div>
    
    <div class="text"></div>
  </div>
</div> 

<!-- 해당 게시글 클릭했을 때 게시글 번호 넘어가서 해당 게시글 볼 수 있음 -->
	<script>
			function detailView(postId){
				location.href = '${ pageContext.servletContext.contextPath }/thumbnail/detail?postId=' + postId;
			}
	</script>
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>