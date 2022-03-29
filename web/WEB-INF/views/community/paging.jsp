<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="paging_area" align="center">
		<!-- 맨 앞으로 이동 버튼 -->
	    <button id="startPage"><<</button>
		
		<!-- 이전 페이지 버튼 -->
		<!-- 조건 일때 disabled (비활성화)라는 뜻 -->
		<c:if test="${ requestScope.selectCriteria.pageNo <= 1 }">
			<button disabled><</button>
		</c:if>
		<c:if test="${ requestScope.selectCriteria.pageNo > 1 }">
			<button id="prevPage"><</button>
		</c:if>
		
		<!-- 숫자 버튼 -->
		<c:forEach var="p" begin="${ requestScope.selectCriteria.startPage }" end="${ requestScope.selectCriteria.endPage }" step="1">
			<!-- 현재 3페이지라면 3페이지 버튼 클릭하는 것을 비활성화시킨다. -->
			<c:if test="${ requestScope.selectCriteria.pageNo eq p }">
				<button class="currentPage" disabled><c:out value="${ p }"/></button>
			</c:if>
			<c:if test="${ requestScope.selectCriteria.pageNo ne p }">
				<!-- 현재 3페이지인데 4페이지를 눌렀을 때 innerText로 4를 가지고 가서
				 pageButtonAction()을 수행한다.-->
				<button onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
			</c:if>
		</c:forEach>
		
		<!-- 다음 페이지 버튼 -->
		<!-- 내가 현재 제일 마지막 페이지에 있을 때는 버튼을 비활성화 시킨다. -->
		<c:if test="${ requestScope.selectCriteria.pageNo >= requestScope.selectCriteria.maxPage }">
			<button disabled>></button>
		</c:if>
		<c:if test="${ requestScope.selectCriteria.pageNo < requestScope.selectCriteria.maxPage }">
			<button id="nextPage">></button>
		</c:if>
		
		<!-- 마지막 페이지로 이동 버튼 -->
		<button id="maxPage">>></button> 
	</div>
	
	<script>
	
		const link = "${ pageContext.servletContext.contextPath }/board/list";
		/*검색의 조건이 없다면 그냥 공란인 상태*/
		let searchText = "";
		
		/*searchCondition란 값이 비어있지 않다면 searchCondition에 값을 넣고 searchText에 값을 쌓는다 */
		if(${ !empty requestScope.selectCriteria.searchCondition? true: false }) {
			searchText += "&searchCondition=${ requestScope.selectCriteria.searchCondition }";
		}
		
		/*searchValue란 값이 비어있지 않다면 searchCondition에 값을 넣고 searchText에 값을 쌓는다 */
		if(${ !empty requestScope.selectCriteria.searchValue? true: false }) {
			searchText += "&searchValue=${ requestScope.selectCriteria.searchValue }";
		}
			
		
		/*if문은 true 일때 동작하기 때문에 startPage가 있을 때를 말한다.
		<< 라는 것은 무조건 제일 처음으로 돌아가는 것이므로 currentPage는 1이고
		위에서 쌓은 검색조건을 뒤에 붙인다*/
		if(document.getElementById("startPage")) {
			const startPage = document.getElementById("startPage");
			startPage.onclick = function() {
				location.href = link + "?currentPage=1" + searchText;
			}
		}
		
		if(document.getElementById("prevPage")) {
			const prevPage = document.getElementById("prevPage");
			prevPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo - 1 }" + searchText;
			}
		}
		
		if(document.getElementById("nextPage")) {
			const nextPage = document.getElementById("nextPage");
			nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo + 1 }" + searchText;
			}
		}
		
		if(document.getElementById("maxPage")) {
			const maxPage = document.getElementById("maxPage");
			maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.maxPage }" + searchText;
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text + searchText;
		}
	</script>
</body>
</html>