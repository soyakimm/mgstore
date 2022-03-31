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
            <!-- <button class="askBtn" onclick="link">상품문의 쓰기</button> -->
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
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/product/meongae_logo.PNG">
                        </div>
                        <div class="user-info">
                            <div class="user-title">
                                <div class="user-name">닉네임</div>
                            </div>
                            <div class="pet-info">
                                <span class="pet-name">강아지</span>
                                <span>|</span>
                                <span class="pet-type">타입</span>
                            </div>
                        </div>
                    </div>
                    <div class="header-right">
                        <div class="sysdate">
                            2022.03.02
                        </div>
                    </div>
                </div>
                <div class="user-asked-body">
                    <div class="asked-content">
                        <div class="que">
                            <span class="Q">Q. &nbsp</span>문의 내용입니다.<br>답변이 완료된 문의입니다.
                        </div>
                        <div class="ans">
                            <span class="A">A. &nbsp</span>답변 내용입니다.<br>관리자만 답변을 작성할 수 있습니다.
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
                                <div class="user-name">닉네임</div>
                            </div>
                            <div class="pet-info">
                                <span class="pet-name">강아지</span>
                                <span>|</span>
                                <span class="pet-type">타입</span>
                            </div>
                        </div>
                    </div>
                    <div class="header-right">
                        <div class="sysdate">
                            2022.03.02
                        </div>
                    </div>
                </div>
                <div class="user-asked-body">
                    <div class="review-content">
                        <div class="que">
                            <span class="Q">Q. &nbsp</span>문의 내용입니다.<br>답변이 아직 작성되지 않았습니다.
                        </div>
                    </div>
                </div>
            </div>
    </div>
</div>

</body>

</html>