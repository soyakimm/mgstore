<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 | 멍개상점</title>
	<!-- 스타일시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/registForm-style.css" rel="stylesheet">
	<!-- 웹폰트 -->
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
        <div class="page-title">
            <h1>회원정보입력</h1>
        </div>
        <div class="regist-table">
            <form id="regist-form" action="${ pageContext.servletContext.contextPath }/user/regist" method="post">
                <ul class="required">
                    <li class="th"><p>아이디</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="userId" name="userId" oninput="isValidId()" placeholder="공백 없는 영문/숫자 포함 6-20자" required>
                        <button type="button" class="check" id="checkId"><span>중복확인</span></button>
                        <div id="checkIdMsg"></div>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>비밀번호</p>
                    <li class="td enter-pwd">
                        <b>*</b>
                        <input type="password" id="userPwd" name="userPwd" placeholder="영문 대소문자, 숫자, 특수기호 포함 8~16자" required>
                        <button type="button" class="closed-icon">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/common/closed.png" alt="숨기기">
                        </button>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>비밀번호 확인</p>
                    <li class="td confirm-pwd">
                        <b>*</b>
                        <input type="password" id="confirmed" name="confirmed" required>
                        <button type="button" class="closed-icon">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/common/closed.png" alt="숨기기">
                        </button>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>이름</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="userName" name="userName" required>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>닉네임</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="nickname" name="nickname" placeholder="공백 없는 문자 최대 6자" required>
                        <button type="button" class="check" id="checkNickname"><span>중복확인</span></button>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>이메일</p>
                    <li class="td">
                        <b>*</b>
                        <input type="email" id="email" name="email" onkeyup="autoDomain('email', this.value)" autocomplete="off" required>
                        <!--
                        <span class="at">@</span>
                        <select class="email-domain">
                            <option disabled selected>선택하세요</option>
                            <option value="gmail.com" id="gmail.com">gmail.com</option>
                            <option value="naver.com" id="naver.com">naver.com</option>
                            <option value="daum.net" id="daum.net">daum.net</option>
                            <option value="kakao.com" id="kakao.com">kakao.com</option>
                            <option value="outlook.com" id="outlook.com">outlook.com</option>
                            <option>직접 입력</option>
                        </select>
                        -->
                        <button type="button" class="check" id="checkEmail"><span>메일인증</span></button>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>핸드폰 번호</p>
                    <li class="td">
                        <b>*</b>
                        <input type="tel" id="phoneA" name="phoneA" maxlength="3" required>
                        <span class="dash">-</span>
                        <input type="tel" id="phoneB" name="phoneB" maxlength="4" required>
                        <span class="dash">-</span>
                        <input type="tel" id="phoneC" name="phoneC" maxlength="4" required>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>우편번호</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="postalcode" name="postalcode" readonly>
                        <button type="button" class="check" onclick="DaumPostcode()"><span>우편번호검색</span></button>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>주소</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="address" name="address" readonly>
                    </li>
                </ul>
                <ul class="required">
                    <li class="th"><p>상세주소</p>
                    <li class="td">
                        <b style="color: transparent;">*</b>
                        <input type="text" id="details" name="details">
                    </li>
                </ul>
                <div>
                    <button type="submit" id="regist-button" class="regist-button">
                        <span>SIGN UP</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 유효성 검사 -->
    <!-- 1. 아이디 -->
    <script>
    //1-1. 타이핑하는 동안 실시간으로 안내 문구 뜨기
    
    //1-2. 중복확인 버튼 클릭 시 사용 확인 / 사용 취소 / 중복 안내
    	
    </script>
    <!-- 2. 비밀번호 -->
    <!-- 3. 닉네임 -->
    <!-- 4. 이메일 -->
    <!-- 4-1. 이미 가입된 이메일입니다 
        
        /* 아이디 중복확인 */
        /* 닉네임 중복확인 */
        /* 이메일 인증 */
    
    -->
    <!-- 비밀번호 숨기기/보이기 -->
    <script>
    $(document).ready(function(){
        $('.enter-pwd .closed-icon').on('click',function(){
            $('.enter-pwd input').toggleClass('active');
            if($('.enter-pwd input').hasClass('active')){
                $(this).prev('input').attr('type',"text");
                $('.enter-pwd img').attr('src', '${ pageContext.servletContext.contextPath }/resources/images/common/open.png');
            }else{
                $(this).prev('input').attr('type','password');
                $('.enter-pwd img').attr('src','${ pageContext.servletContext.contextPath }/resources/images/common/closed.png');
            }
        });
    });
    $(document).ready(function(){
        $('.confirm-pwd .closed-icon').on('click',function(){
            $('.confirm-pwd input').toggleClass('active');
            if($('.confirm-pwd input').hasClass('active')){
                $(this).prev('input').attr('type',"text");
                $('.confirm-pwd img').attr('src', '${ pageContext.servletContext.contextPath }/resources/images/common/open.png');
            }else{
                $(this).prev('input').attr('type','password');
                $('.confirm-pwd img').attr('src','${ pageContext.servletContext.contextPath }/resources/images/common/closed.png');
            }
        });
    });
    </script>

    <!-- 이메일 자동완성 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <script>
        function autoDomain(email, value){
            let emailId = value.split('@');
            let domainList = ['naver.com','gmail.com','daum.net','hanmail.net','kakao.com'];
            let availableBox = new Array; // 자동완성 키워드 리스트
            for(let i=0; i < domainList.length; i++ ){
                availableBox.push( emailId[0] +'@'+ domainList[i] );
            }
            $("#"+email).autocomplete({
                source: availableBox,
                focus: function(event, ui) {
                    return false;
                }
            });
        }
    </script>

    <!-- 주소 API -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function DaumPostcode() {
            new daum.Postcode({
                oncomplete: function(data) {
                    document.getElementById('postalcode').value = data.zonecode;
                    document.getElementById('address').value = data.roadAddress;
                }
            }).open();
        }
    </script>
</body>
</html>