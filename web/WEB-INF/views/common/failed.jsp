<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>failed</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<h1 align="center">${ requestScope.message }</h1>
</body>
</html>