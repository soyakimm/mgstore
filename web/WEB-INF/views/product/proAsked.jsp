<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>proAsked</title>
   <!-- 웹 폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   <!-- 스타일 시트 -->
   <link href="${ pageContext.servletContext.contextPath }/resources/css/product/proEtc.css" rel="stylesheet">
   <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>

<div class="proAsked-page">
    <div class="proAsked-page-header">
        <div class="proHeader-title"><h3>상품문의</h3></div>
        <div class="asked-write">
            <input type="askBtn" value="상품문의 쓰기" class="askBtn" onclick="showPopup();" />
            <script>
            function showPopup() { window.open("${ pageContext.servletContext.contextPath }/product/asked/user", "a", "width=400, height=600, left=100, top=50"); }
            </script>
        </div>
    </div>
    <div class="proAsked-page-body">
        <div class="pro-asked">
            <div class="user-asked">
                <div class="user-asked-header">
                    <div class="header-left">
                        <div class="user-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/sarang.jpg">
                        </div>
                        <div class="user-info">
                            <div class="user-title">
                                <div class="user-name">렛서판다</div>
                            </div>
                            <div class="pet-info">
                                <span class="pet-name">이사랑</span>
                                <span>|</span>
                                <span class="pet-type">믹스견</span>
                            </div>
                        </div>
                    </div>
                    <div class="header-right">
                        <div class="sysdate">
                            2022.03.22
                        </div>
                    </div>
                </div>
                <div class="user-asked-body">
                    <div class="asked-content">
                        <div class="que">
                            <span class="Q">Q. &nbsp</span>사람 생일선물로 줘도 좋아할까요?
                        </div>
                        <div class="ans">
                            <span class="A">A. &nbsp</span>공격성을 드러내지 않는 성격이라면 괜찮을 것 같습니다. 감사합니다.
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="pro-asked">
            <div class="user-asked">
                <div class="user-asked-header">
                    <div class="header-left">
                        <div class="user-img">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/meongae_logo.PNG">
                        </div>
                        <div class="user-info">
                            <div class="user-title">
                                <div class="user-name">말미잘</div>
                            </div>
                            <div class="pet-info">
                                <span class="pet-name">해삼</span>
                                <span>|</span>
                                <span class="pet-type">믹스견</span>
                            </div>
                        </div>
                    </div>
                    <div class="header-right">
                        <div class="sysdate">
                            2022.03.29
                        </div>
                    </div>
                </div>
                <div class="user-asked-body">
                    <div class="review-content">
                        <div class="que">
                            <span class="Q">Q. &nbsp</span>뒤에 있는 가랜드도 상품구성에 포함된 건가요?
                        </div>
                    </div>
                </div>
            </div>
          </div>
    </div>
</div>

</body>

</html>