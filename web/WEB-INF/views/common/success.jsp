<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success</title>
</head>
<body>
	<script>
	(function(){
		const successCode = "${ requestScope.successCode }";
		
		let successMessage = "";
		let movePath = "";
		
		switch(successCode){
			case "insertUser" : 
				successMessage = "신규 가입을 환영합니다!";
				movePath = "${ pageContext.servletContext.contextPath }/user/login";
				break;
			case "insertAsked" :
				successMessage = "자주묻는질문 등록에 성공하였습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/asked/list";
				break;
		}

		alert(successMessage);
		
		location.replace(movePath);
	})();
	</script>
</body>
</html>