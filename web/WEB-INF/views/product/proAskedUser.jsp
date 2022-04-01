<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기 | 멍개상점</title>
   <link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
   <!-- 웹 폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   <!-- 스타일 시트 -->
   <link href="${ pageContext.servletContext.contextPath }/resources/css/product/proEtc.css" rel="stylesheet">   
   <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body onload="window.resizeTo(700, 700)" class="proAskedUser-body">

    <div class="asked-user-page">
        <div class="asked-header-wrapper">
            <div class="asked-header">
                <h3>상품 Q&A 작성하기</h3>
                <div class="close">
                    <input type="image" src="${ pageContext.servletContext.contextPath }/resources/images/product/cancle-white.png" onclick="self.close();">
                </div>
            </div>
        </div>
        <div class="asked-body">
        <form action="${ pageContext.servletContext.contextPath }/proAsk/insert" method="post">
            <div class="body-area">  
                    <textarea name="proQuestion" maxlength="1000" placeholder="문의하실 내용을 입력하세요.(0/1000)"></textarea>
                <div class="lock-area">
                    <input type="checkbox" value="비공개" id="lock" name="proStatus">
                    <label for="lock" class="label-lock">비공개</label>
                </div>
                <div class="button-area">
                    <input type="button" class="closeBtn" value="취소" onclick="self.close();" />
                    <input type="submit" class="inputBtn" value="등록" onclick="inputClose();" />
                </div>
                <script>

                    //등록 버튼 submit으로 지정해줘야함 

                    $('textBox').keyup(function(e){
                        let content = $(this).val();
                        //글자수 제한
                        if(content.length > 1000){
                            $(this).val($(this).val().substring(0,1000));
                        };
                    });

                </script>
            </div>
            </form>
        </div>
        <div class="asked-footer">
            <div class="asked-footer-notice">
                <p class="notice-title"> 상품 Q&A 작성 유의사항</p>
                <p class="notice-content">- 상품 Q&A는 상품에 대해 판매자에게 문의하는 게시판입니다.<br>
                    - 상품 및 상품 구매 과정과 관련 없는 비방/욕설/명예훼손성 게시글 및 상품과 관련 없는 광고글 등 부적절한 게시글 등록 시 글쓰기 제한 및 게시글이 삭제 조치 될 수 있습니다.<br>
                    - 전화번호, 이메일 등 개인 정보가 포함된 글 작성이 필요한 경우 판매자만 볼 수 있도록 비밀글로 문의해 주시기 바랍니다.<br>
                    - 상품에 대한 이용 후기는 리뷰에 남겨 주세요.<br>
                </p>
            </div>
        </div>

    </div>

</body>


</html>