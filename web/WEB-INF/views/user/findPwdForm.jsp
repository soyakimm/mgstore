<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Random"%>
<%! 
	public String randomCode(){
		String temp = "";
		char[] carr = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
		String arr[] = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
		Random random = new Random();
		for(int i=0; i <= 6; i++) {
			temp += carr[random.nextInt(26)];
		}
		return temp.toString();
	}
 %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>비밀번호 찾기 | 멍개상점</title>
	<!-- favicon -->
    <link href="${ pageContext.servletContext.contextPath }/resources/images/common/favicon.ico" rel="shortcut icon"/>
	<!-- 외부 스타일 시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/user/findPwdForm-style.css" rel="stylesheet">
    <!-- 구글 웹폰트 -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div class="wrapper">
        <div class="page-title">
            <h1>비밀번호 찾기</h1>
        </div>
        <div class="find-table">
            <form name="info-form" action="${ pageContext.servletContext.contextPath }/user/findPwdResultForm.jsp" method="post">
            	<ul class="info-area">
            		<ul class="required">
	                    <li class="th"><p>아이디</p>
	                    <li class="td">
	                        <b>*</b>
	                        <input type="text" id="userId" name="userId" required>
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
	                    <li class="th"><p>이메일</p>
	                    <li class="td">
	                        <b>*</b>
	                        <input type="email" id="email" name="email" required>
	                    </li>
	                </ul>
	                <ul class="temp required" style="display: none;">
                    <li class="th"><p>임시 비밀번호</p>
                    <li class="td">
                        <b>*</b>
                        <input type="text" id="temp" name="temp" value="<%=randomCode()%>" autocomplete="off" readonly>
                    </li>
                	</ul>
	                <button onclick="verifyEmail()" type="button" id="find" class="find-button">
	                	<span>FIND PASSWORD</span>
	                </button>
            	</ul>
            </form>
            <div class="button-box">
                <button class="regist" type="button">
                    <a href="${ pageContext.servletContext.contextPath }/user/regist">회원가입</a>
                </button>
                <div class="line"><span> | </span></div>
                <button class="findId" type="button">
                    <a href="${ pageContext.servletContext.contextPath }/user/findid">아이디 찾기</a>
                </button>
            </div>
        </div>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
    	$(document).ready(function(){
    		$("#find").click(function(){
        		
        		if(confirm("이 이메일로 임시 비밀번호를 발송하시겠습니까?")) {
        			$("#email").attr('readonly', true);
        			$("#email").css({"background": "#E5E5E5", "color": "#767676"});
        			
        			var url = "${ pageContext.servletContext.contextPath }/user/resetpwd";
        			$.ajax({
        				type : "post",
        				url : url,
        				dataType : "html",
        				data : { 
        					userId : $("#userId").val(),
        					userName : $("#userName").val(),
        					email : $("#email").val(),
        					code : $("#temp").val()
        				},
        				success : function(data){
        					alert("임시 비밀번호 안내 메일이 발송되었습니다. 이메일을 확인해 주세요.");
        					location.href="${ pageContext.servletContext.contextPath }/user/login";
        				},
        				error : function(){ alert("시스템에 문제가 발생했습니다. 다시 시도해 주세요."); }
        			});
        			return;
        		} else {
        			$("#email").attr('readonly', false);
        			$("#email").css({"background": "transparent", "color": "#767676"});
        			$("#temp").css("display", "none");
        			$("#email").focus();
        		}
        	});
        });
    </script>
</body>
</html>