<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.mgstore.event.model.dto.EveAttachmentDTO, com.mgstore.user.model.dto.UserDTO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
<meta charset="UTF-8">
<title>이벤트 메인 게시글</title>
<!-- 외부 스타일 시트 -->
<link href="${ pageContext.servletContext.contextPath }/resources/css/event/eventDetail.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
    function updateEvent(eveId) {
		location.href = "${ pageContext.servletContext.contextPath }/event/update?eveId="+eveId;
	
    }
	function deleteEvent(eveId){
		if(confirm('이 이벤트를 삭제하시겠습니까?')){
			//document.forms.EventForm.action = '${ pageContext.servletContext.contextPath }/event/delete';
			//document.forms.EventForm.submit();
			location.href = "${ pageContext.servletContext.contextPath }/event/delete?eveId="+eveId;
		}
	}
	</script>
</head>
	<jsp:include page="../common/header-comm.jsp"/>
<body>
	
	<div class="group"> 
     
 		<div class="content-body">
        <div class="container-wrapper notice-container"> <!-- 위트참고 --> </div>
            <div class="main-content">
                <div class="side-title">
                    <p><span>이벤트게시판</span></p>
                    <!-- [댓글이벤트] 3월 멍개상점 베스트 어워드 / ${ thumbnail.eveId } -->
                    <h2>${ thumbnail.eveTitle }
                                        <span>${thumbnail.category.eveCateName}</span>
                            </h2>
                    <ul>
                        <li class="none-bar">
                            <img src="${ pageContext.servletContext.contextPath }/resources/images/admin/adm_img/ico_calendar.png"><span>${ thumbnail.eveStart } ~ ${ thumbnail.eveEnd }</span>
                        </li>
                        <li class="right-block">
                           <img src="${ pageContext.servletContext.contextPath }/resources/images/admin/adm_img/ico_watching.png"><span>${ thumbnail.eveCount }</span>
                        </li>
                    </ul>
                </div><!--side-title-->
				<c:forEach items="${ thumbnail.attachmentList }" var="attachment"> 
                <div class="image-section">
				<img src="${ pageContext.servletContext.contextPath }${ attachment.eveSavePath }${ attachment.eveSavedName }">
				 </c:forEach> 
                    <map name="eventmap" class="eve-content-section">
                        <ul>
                            <li>
                                     <area shape="rect" coords="" href="https://shop.witkorea.kr/promotion/bestaward">
                                     <!-- ★ 이벤트 진행할 상품페이지 url 작성 ★-->
                                    <a href="https://shop.witkorea.kr/goods/view?no=4744">
                                        <img src="${ pageContext.servletContext.contextPath }/resources/images/admin/adm_img/event-banner-btn-orange.png">
                                    </a>
                        </ul>
                    </map>
                </div>
              
                
                <div class="sub-section full-size">
                    <div class="text-section">
                        
                    </div>
                </div>
                <div class="sub-section full-size">
                    <div class="report-section">
                        <div class="btn-wrap">
                            <!-- 관리자용 게시글 수정 / 삭제 버튼 --> <!-- ※ href 수정 : 이벤트 수정 페이지 -->
                        	<c:if test="${ sessionScope.loginUser.role eq '관리자'  }"> 
                            <button type="button" class="eve-modify-btn" onclick="updateEvent(${ thumbnail.eveId })">수정</button>
                            <button type="button" class="eve-delete-btn"  onclick="deleteEvent(${ thumbnail.eveId })">삭제</button>
								<input type="hidden" name="eveId" value="${ thumbnail.eveId }">
                            </c:if> 
                        </div>
                    </div>
                </div>
                
                
                <!-- 댓글 --> 
                        <!-- inline block 처리 -->
            <div class="comment-section">
              <div class="comment-write">
                  <textarea id="commentArea" style="resize:none" name="reply_contents" cols="30" rows="10" data-type="N" placeholder="멍개상점에 로그인 후 댓글 입력이 가능합니다."></textarea>
              
              <!-- 댓글 오른쪽 버튼 -->
              <div class="btn_box">
                  <button class="submit" onclick="WitCommon.boardComment('event', 106, null, 'board', 1 , '', 0 , '', 'mainImage')">등록</button>
                </div>
            </div> <!-- comment-write -->


        <!-- 회원 댓글 입력 완료창 -->
        <div class="text-comment">
            <ul class="active">
                <li class="mine">
                    <!-- 회원 프로필 -->
                    <div class="profile-img" onclick="location.href='/*회원이 프로필 클릭 시 회원 마이페이지로 넘어가게함/'">
                        <div class="img-circle none-name" style="background: url('../EVENT/resources/images/Logo.PNG') center center no-repeat; background-size: cover;"></div>
                    </div>
                <div class="comment-wrapper">
                     <div class="profile">
                        <p>멍개집사</p>
                        </div>
                        
                        <div class="comment">
                        <div class="comment-text reply_val_3008">
                        <pre id="reply_text_3008" }">멍개상점 댓글 테스트입니다!</pre>

                        <ul>
                            <li class="pop-comment" onclick="WitCommon.boardReplyLike('event', 106, 3008)">
                        <img id="likeReplyBtn_3008" src="${ pageContext.servletContext.contextPath }/resources/images/admin/adm_img/ico_list_like_basic.jpg">
                        <span id="likeReplyCnt_3008">1</span>
                                <p id="likeReplyTxt_3008">좋아요</p>
                            </li>
                            <li class="report-ico" onclick="pagePopup.boardReplyReportPopup('event', 106, 3008, 'board')">신고</li>
                        </ul>
                                    </div>
                            </div>
                        </div>
                      </div>
                        </li>
                
              
                
                <!-- 댓글api -->
             <!--     <div id="disqus_thread"></div>
				<script>
				    /**
				    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
				    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
				    /*
				    var disqus_config = function () {
				    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
				    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
				    };
				    */
				    (function() { // DON'T EDIT BELOW THIS LINE
				    var d = document, s = d.createElement('script');
				    s.src = 'https://mgstore-eve.disqus.com/embed.js';
				    s.setAttribute('data-timestamp', +new Date());
				    (d.head || d.body).appendChild(s);
				    })();
				</script>
				<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
					
					-->
					
			</div><!-- group -->
	
	
		<script id="dsq-count-scr" src="//mgstore-eve.disqus.com/count.js" async></script>
		<script>
			function detailView(eveId){
				location.href = "${ pageContext.servletContext.contextPath }/event/detail?eveId=" + eveId;
			}
		</script>
	
	
	
	<!--  <script src="${ pageContext.servletContext.contextPath }/resources/js/event/EventImagePreview.js"></script> -->
</body>

	<jsp:include page="../common/footer.jsp"/>
</html>