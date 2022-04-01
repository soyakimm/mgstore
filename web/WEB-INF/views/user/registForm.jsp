<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
	public String randomCode(){
		StringBuffer sb = new StringBuffer();
		for(int i=0; i <= 6; i++) {
			int n = (int)(Math.random() * 10);
			sb.append(n);
		}
		return sb.toString();
	}
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 | 멍개상점</title>
	<!-- favicon -->
    <link href="${ pageContext.servletContext.contextPath }/resources/images/common/favicon.ico" rel="shortcut icon"/>
	<!-- 스타일시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/user/registForm-style.css" rel="stylesheet">
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
            <form id="regist-form" name="regist" action="${ pageContext.servletContext.contextPath }/user/regist" method="post">
                <ul class="required">
                    <li class="th"><p>아이디</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="userId" name="userId" placeholder="공백 없는 영문/숫자 조합 6-20자" autocomplete="off" required>
                    </li>
                </ul>
                <div id="checkIdMsg"></div>
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
                <div id="checkEnteredPwdMsg"></div>
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
                <div id="checkConfirmedPwdMsg"></div>
                <ul class="required">
                    <li class="th"><p>이름</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="userName" name="userName" autocomplete="off" required>
                    </li>
                </ul>
                <div id="checkNameMsg"></div>
                <ul class="required">
                    <li class="th"><p>닉네임</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="nickname" name="nickname" placeholder="공백 없는 문자 최대 6자" autocomplete="off" required>
                    </li>
                </ul>
                <div id="checkNicknameMsg"></div>
                <ul class="required">
                    <li class="th"><p>이메일</p>
                    <li class="td">
                        <b>*</b>
                        <input type="email" id="email" name="email" onkeyup="autoDomain('email', this.value)" autocomplete="off" required>
                        <button onclick="verifyEmail()" type="button" class="check" id="sendemail" style="background: #E5E5E5; border: 1px solid #E5E5E5;" disabled><span>인증메일발송</span></button>
                    </li>
                </ul>
                <div id="checkEmailMsg"></div>
                <ul class="verifycode required" style="display: none;">
                    <li class="th"><p>인증코드 입력</p>
                    <li class="td">
                        <b>*</b>
                        <input type="hidden" id="verifycode" name="verifycode" value="<%=randomCode()%>" autocomplete="off" readonly>
                        <input type="text" id="inputcode" name="inputcode" onkeyup="checkCode()" autocomplete="off" placeholder="이메일 인증코드 입력" required>
                    </li>
                </ul>
                <div id="checkCodeMsg"></div>
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
                        <button type="button" class="searchPostal check" style="background: #E5E5E5; border: 1px solid #E5E5E5;" onclick="DaumPostcode()"><span>우편번호검색</span></button>
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
                    <button type="button" id="regist-button" class="regist-button" disabled>
                        <span>SIGN UP</span>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- 1. 아이디 유효성 검사 및 중복 확인 -->
    <script>
    $(document).ready(function(){
    	$("#userId").keyup(function(){
    		const regexId = /^[A-Za-z0-9]{6,20}$/;
    		const userId = $("[name=userId]");
    		
    		$.ajax({
    			url : '${pageContext.request.contextPath}/user/checkid',
    			type: 'post',
    			data : { userId : userId.val() },
    			success : function(result){
    				console.log(result);
		    		if(result == "fail") {
		    			$("#checkIdMsg").text("이미 사용 중인 아이디입니다.");
		    			$("#checkIdMsg").css("color", "red");
		    			$("#userId").css({"background-color": "transparent", "color": "#767676"});
		    			$("#regist-button").attr("disabled", true);
		    		} else {
		    			
			    		if(!regexId.test(userId.val()) || userId.val().length < 6) {
			    			$("#checkIdMsg").text("아이디는 영문/숫자 조합의 6~20자리여야 합니다.");
			    			$("#checkIdMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			    			$("#userId").css({"background-color": "transparent", "color": "#767676"});
			    			$("#regist-button").attr("disabled", true);
			    		} else if(userId == "") {
			    			$("#checkIdMsg").text("아이디를 입력해 주세요.");
			    			$("#checkIdMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			    			$("#userId").css({"background-color": "transparent", "color": "#767676"});
			    			$("#regist-button").attr("disabled", true);
			    		} else {
			    			$("#checkIdMsg").text("");
			    			$("#userId").css({"background-color": "#f5742f", "color": "#fff"});
			    			$("#regist-button").attr("disabled", false);
			    			$("#regist-button").attr("type", "submit");
			    		}
		    		}
    			},
    			error : function(){ alert("시스템에 문제가 발생했습니다. 다시 시도해 주세요."); }
    		});
    	});
    });
    </script>
    
    <!-- 2. 비밀번호 유효성 검사 및 일치 확인 -->
    <script>
    $(document).ready(function(){
    	$("#userPwd").keyup(function(){
    		/* 2-1. 영문, 숫자, 특수기호 포함 여부 검사 */
    		const regexPwd = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?]).{8,16}$/;
    		
    		if(!regexPwd.test($("#userPwd").val())) {
    			console.log('false');
    			$("#checkEnteredPwdMsg").text("비밀번호는 영문 대소문자, 숫자, 특수기호가 포함된 8~16자리여야 합니다.");
    			$("#checkEnteredPwdMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
    			$("#regist-button").attr("disabled", true);
    		} else {
    			console.log('true');
    			$("#checkEnteredPwdMsg").text("");
    			$("#regist-button").attr("disabled", false);
    		}
    		
    		/* 2-2. 아이디와 연속 일치 여부 검사 */
    		if(isValidPwd()) {
    			$("#checkEnteredPwdMsg").text("아이디와 연속 3자리 이상 일치하는 비밀번호는 사용할 수 없습니다.");
    			$("#checkEnteredPwdMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
    			$("#regist-button").attr("disabled", true);
    		}
    		
    	});
    	
    	$("#confirmed").keyup(function(){
    		/* 2-3. 비밀번호 입력란과 확인란 일치 여부 확인 */
    		if($("#userPwd").val() != $(this).val()) {
    			$("#checkConfirmedPwdMsg").text("비밀번호가 일치하지 않습니다. 다시 입력해 주세요.");
    			$("#checkConfirmedPwdMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
    			$("#regist-button").attr("disabled", true);
    		} else {
    			$("#checkConfirmedPwdMsg").text("");
    			$("#regist-button").attr("disabled", false);
    		}
    	});
    });
    
    function isValidPwd() {
    	let validId = $("#userId").val();
    	let validPwd = $("#userPwd").val();
    	
    	let temp = "";
    	let count = 0;
    	
    	for(i=0; i < validId.length - 2; i++) {
    		temp = validId.charAt(i) + validId.charAt(i + 1) + validId.charAt(i + 2);
    		if(validPwd.indexOf(temp) > -1) { count = count + 1 };
    	}
    	return count > 0 ? true : false;    	
    }
    </script>
    
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
    
    <!-- 3. 이름 유효성 검사 -->
    <script>
    $(document).ready(function(){
    	$("#userName").keyup(function(){
    		const regexName = /^[가-힣]{2,6}$/;
    		
    		if(!regexName.test($("#userName").val())) {
    			console.log('false');
    			$("#checkNameMsg").text("한글 이름을 입력해 주세요.");
    			$("#checkNameMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
    			$("#regist-button").attr("disabled", true);
    		} else {
    			console.log('true');
    			$("#checkNameMsg").text("");
    			$("#regist-button").attr("disabled", false);
    		}
    	});
    });
    </script>
    
    <!-- 4. 닉네임 유효성 검사 및 중복 확인 -->
    <script>
    $(document).ready(function(){
    	$("#nickname").keyup(function(){
    		const regexNickname = /^[가-힣a-zA-Z0-9]{2,6}$/;
    		const nickname = $("[name=nickname]");
    		
    		if(!regexNickname.test($("#nickname").val())) {
    			console.log('false');
    			$("#checkNicknameMsg").text("닉네임은 2~6자의 한글/영문 대소문자/숫자 사용 가능합니다.");
    			$("#checkNicknameMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
    			$("#regist-button").attr("disabled", true);
    		} else {
    			console.log('true');
    			$("#checkNicknameMsg").text("");
    			$("#regist-button").attr("disabled", false);
    		}
    		
    		$.ajax({
    			url : '${pageContext.request.contextPath}/user/checknickname',
    			type: 'post',
    			data : { nickname : nickname.val() },
    			success : function(result){
    				console.log(result);
		    		if(result == "fail") {
		    			$("#checkNicknameMsg").text("이미 사용 중인 닉네임입니다.");
		    			$("#checkNicknameMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
		    			$("#nickname").css({"background-color": "transparent", "color": "#767676"});
		    			$("#regist-button").attr("disabled", true);
		    		} else {
		    			
			    		if(!regexNickname.test(nickname.val()) || nickname.val().length < 2) {
			    			$("#checkNicknameMsg").text("닉네임은 2~6자의 한글/영문 대소문자/숫자 사용 가능합니다.");
			    			$("#checkNicknameMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			    			$("#nickname").css({"background-color": "transparent", "color": "#767676"});
			    			$("#regist-button").attr("disabled", true);
			    		} else if(nickname == "") {
			    			$("#checkNicknameMsg").text("닉네임을 입력해 주세요.");
			    			$("#checkNicknameMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			    			$("#nickname").css({"background-color": "transparent", "color": "#767676"});
			    			$("#regist-button").attr("disabled", true);
			    		} else {
			    			$("#checkNicknameMsg").text("");
			    			$("#nickname").css({"background-color": "#f5742f", "color": "#fff"});
			    			$("#regist-button").attr("disabled", false);
			    		}
		    		}
    			},
    			error : function(){ alert("시스템에 문제가 발생했습니다. 다시 시도해 주세요."); }
    		});
    	});
    });
    </script>
    <!-- 5. 이메일 인증 -->
    <!-- 5-1. 이미 가입된 이메일 여부 확인 -->
    <!-- 5-2. 인증코드 확인 -->
    <script>
    $(document).ready(function(){
    	const regexEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
    	const email = $("[name=email]");
    	$("#email").blur(function(){
    		
    		if(!regexEmail.test($("#email").val())) {
    			console.log('false');
    			$("#checkEmailMsg").text("이메일 형식이 올바르지 않습니다.");
    			$("#checkEmailMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
    			$("#sendemail").attr("disabled", true);
    			$("#regist-button").attr("disabled", true);
    		} else {
    			console.log('true');
    			$("#checkEmailMsg").text("");
    			$("#sendemail").attr("disabled", false);
    			$("#regist-button").attr("disabled", false);
    		}
    		
    		$.ajax({
    			url : '${pageContext.request.contextPath}/user/checkemail',
    			type: 'post',
    			data : { email : email.val() },
    			success : function(result){
    				console.log(result);
		    		if(result == "fail") {
		    			$("#checkEmailMsg").text("이미 가입된 이메일입니다.");
		    			$("#checkEmailMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
		    			$("#email").css({"background-color": "transparent", "color": "#767676"});
		    			$("#sendemail").attr("disabled", true);
		    			$("#regist-button").attr("disabled", true);
		    		} else {
		    			
		    			if(!email.indexOf("@") > -1) {
		    				$("#checkEmailMsg").text("이메일 형식이 올바르지 않습니다.");
		        			$("#checkEmailMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
		        			$("#sendemail").attr("disabled", true);
		        			$("#regist-button").attr("disabled", true);
		    			} else if(email == "") {
			    			$("#checkEmailMsg").text("이메일을 입력해 주세요.");
			    			$("#checkEmailMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			    			$("#email").css({"background-color": "transparent", "color": "#767676"});
			    			$("#sendemail").attr("disabled", true);
			    			$("#regist-button").attr("disabled", true);
			    		} else {
			    			$("#checkEmailMsg").text("인증메일발송 통해 이메일을 인증해 주세요.");
			    			$("#checkEmailMsg").css({"color": "#0D9572", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			    			$("#sendemail").attr("disabled", false);
			    			$("#regist-button").attr("disabled", false);
			    			
			    		}
		    		}
    			},
    			error : function(){ alert("시스템에 문제가 발생했습니다. 다시 시도해 주세요."); }
    		});
    	});
		
    	$("#sendemail").click(function(){
    		
    		if(confirm("이 이메일로 인증 메일을 발송하시겠습니까?")) {
    			$(email).attr('readonly', true);
    			$(email).css({"background": "#E5E5E5", "color": "#767676"});
    			$(".verifycode").css("display", "flex");
    			$("#sendemail").css({"border": "3px solid #757575", "background": "#757575", "color": "#fff"});
    			
    			var url = "${ pageContext.servletContext.contextPath }/user/sendemail";
    			$.ajax({
    				type : "post",
    				url : url,
    				dataType : "html",
    				data : { 
    					email : $("#email").val(), 
    					code : $("#verifycode").val() 
    				},
    				success : function(data){
    					alert("인증 메일이 발송되었습니다. 이메일을 확인해 주세요!");
    				},
    				error : function(){ alert("시스템에 문제가 발생했습니다. 다시 시도해 주세요."); }
    			});
    			return;
    		} else {
    			$(email).attr('readonly', false);
    			$(email).css({"background": "transparent", "color": "#767676"});
    			$(".verifycode").css("display", "none");
    			$(email).focus();
    		}
    		
    	});
    	
    });
    </script>
    <!-- 5-2. 이메일 인증 -->
    <script>
    function checkCode(){
    	let codeA = document.getElementById('inputcode').value;
    	let codeB = document.getElementById('verifycode').value;
    	if(codeA != codeB) {
    		$("#checkCodeMsg").text("인증코드가 일치하지 않습니다.");
			$("#checkCodeMsg").css({"color": "#ff0000", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			$("#regist-button").attr("disabled", true);
    	} else {
    		$("#checkCodeMsg").text("이메일 인증이 완료되었습니다! 회원가입을 계속 진행하세요.");
    		$("#checkCodeMsg").css({"color": "#0D9572", "font-size": "small", "font-family": "'Noto Sans KR', sans-serif", "margin-left": "108px"});
			$("#regist-button").attr("disabled", false);
    	}
    };
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
    <!-- 주소 입력 완료 후 버튼 효과 -->
    <script>
    $(document).ready(function(){
    	$(".searchPostal").blur(function(){
	    	if($("#postalcode").val().length > 0) {
	    		$(".searchPostal").css({"border": "3px solid #757575", "background": "#757575", "color": "#fff"});
	    	} else {
	    		
	    	}
    	});
    });
    </script>
</body>
</html>