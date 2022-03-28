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
			case "updateAsked" :
				successMessage = "자주묻는질문 수정에 성공하였습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/asked/list";
				break;
			case "deleteAsked" :
				successMessage = "자주묻는질문 삭제에 성공하였습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/asked/list";
				break;
			case "insertInq" :
				successMessage = "1:1 문의 등록이 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/inq/list";
				break;
			case "updateAsked" :
				successMessage = "1:1 문의 수정이 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/inq/list";
				break;
			case "deleteInq" :
				successMessage = "1:1 문의 삭제가 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/inq/list";
				break;
			case "insertAns" :
				successMessage = "1:1 문의 답변등록이 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/inq/list";
				break;
			case "updateAns" :
				successMessage = "1:1 문의 답변수정이 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/inq/list";
				break;
			case "deleteAns" :
				successMessage = "1:1 문의 답변삭제가 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/inq/list";
				break;
			case "deleteWishList" :
				successMessage = "상품 삭제가 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/myshopping/wishList";
				break;

			case "insertWrite" :
				successMessage = "게시판 등록이 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/community/main";
				break;


			

			case "insertThumbnail" : 
				successMessage = "이벤트 썸네일 게시판 등록 성공! ";
				movePath = "${ pageContext.servletContext.contextPath }/event/main";
				break;

		}

		alert(successMessage);
		
		location.replace(movePath);
	})();
	</script>
</body>
</html>