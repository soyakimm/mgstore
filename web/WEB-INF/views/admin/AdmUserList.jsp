<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>3. 일반회원리스트페이지</title>
    <!-- 왼쪽메뉴 CSS -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/admin/adm_leftmenu.css" rel="stylesheet" type="text/css">

    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    


    <!-- 페이징 : 부트스트랩 -->


    <style>
    body{
		    margin: 10;
		    padding: 0;
	}  

    #wrapTitle{
            margin-left: 15px;
            text-align: center;
            padding-top: 30px;
            font-size: 40px;
            margin-top:0;
        }

    table{
        background-color: #DEDEDE;
        text-align: center;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
        border-collapse: collapse;

        /*leftmenu에 맞게 사이즈 조정*/
        width:100%;
        margin-left : 0px;
    }

    #userinfoTable{
        background-color: white;
        width:100%;
        margin-left : 0px;
        text-align: center;
    }

    th{
        color: black;
        padding-top : 8px;
        padding-bottom: 7px;
        border-top: 1px solid black;
        border-bottom: 1px solid black;
    }

    td{
        padding-top : 2px;
        padding-bottom : 2px;
        color: black
    }

    #fromSecond{
        border-bottom: 1px solid lightgray;
        height : 30px;
    }

    #pagingBtn{
		border : none;
		background-color : white;
		border-style:none;
	}
	
	.pagingArea{
		width : auto;
		margin-left: 63%; 
	}


    
    /*검색 css */

    #searchbar {
        text-align: center;
    }
    

        #searchtext {
            width : 70%;
            height : 30px;
            /* margin-left: 1.5%; */
            /* margin-top: 1%; */
            border-radius: 0px;
            border : 1.5px solid black;
            background-color: #FFFFFF;
            box-shadow: inset 0px -4px 0px #0F172A;
            border-radius: 2px; 
            
        }
        #searchbutton {
            width : 10%;
            height : 30px;
            background: black;
            color : white;
            border-radius: 7px;
            border : 1px solid black;
        }

        
     /*---------모달 css-------------- */
        .modal_wrap{
        display: none;
        width: 500px;
        height: 500px;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
        padding-top: 40px;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(0, 0,0, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close> a{
        display: block;
        width: 100%;
        height: 100%;
        /* 파일명으로 바꿔도 상관없음*/
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }


    .modaltext{
    /* background-color:rgba(255, 91, 70, 1);  */
    border-radius: 7px;
    border-width: 0 0 0 8px; 
    padding: 6px;
    block-size: 30px;
    word-break: break-all; 
    }

  


    </style>
    
   <!-- 모달  -->
    <script>
        window.onload = function() {
     
        function onClick() {
            document.querySelector('.modal_wrap').style.display ='block';
            document.querySelector('.black_bg').style.display ='block';
        }   
        function offClick() {
            document.querySelector('.modal_wrap').style.display ='none';
            document.querySelector('.black_bg').style.display ='none';
        }
     
       // document.getElementById('modal_btn').addEventListener('click', onClick);
       const btn = document.querySelectorAll(".modal_btn");

       
		for (let i = 0; i < btn.length; i++) {
		  btn[i].addEventListener('click', onClick);
		}
        document.querySelector('.modal_close').addEventListener('click', offClick);
     
   		};
   		 
    </script>
    
    
    
    <script>
        $(function(){
            $(".userMemTable td").mouseenter(function(){
                $(this).parent().css({"cursor":"pointer", "color" : "gray"});
            }).mouseout(function(){
                $(this).parent().css({"color" : "black"});
            }).click(function(){
                var uno = $(this).parent().children().eq(0).text();
                location.href='${ pageContext.servletContext.contextPath }/user/detail?uno=' + uno;
            });
        })
    </script>


</head>
<body>
    <div class="leftMenu">
        <div class="menuImg" >

        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="userBtn" type="button">일반회원</button></li>
                <li><button class="menuBtn" id="reportBtn" type="button">신고내역</button></li>
                <li><button class="menuBtn" id="byeuserBtn" type="button">탈퇴회원</button></li>
                <!-- <li><button class="menuBtn" id="commBtn" type="button">게시판관리</button></li> -->
               <!--  <li><button class="menuBtn" id="orderBtn" type="button">주문내역</button></li> -->
                <li><button class="menuBtn" id="proBtn" type="button">재고관리</button></li>
                <li><button class="menuBtn" id="profitBtn" type="button">수익관리</button></li>
                <li><button class="menuBtn" id="payBtn" type="button">판매관리</button></li>
            </ul>
            <script>
                /* 클릭 시 이동할 페이지 */
            	const userBtn = document.getElementById('userBtn');
            	userBtn.addEventListener('click', function(){
            		location.href='${ pageContext.servletContext.contextPath }/admin/usermain';
            	});
            	
            	const reportBtn = document.getElementById('reportBtn');
            	reportBtn.addEventListener('click', function(){
            		location.href='${ pageContext.servletContext.contextPath }/admin/userreport';
            	});
            	
            	const byeuserBtn = document.getElementById('byeuserBtn');
            	byeuserBtn.addEventListener('click', function(){
            		location.href='${ pageContext.servletContext.contextPath }/admin/userbye';
            	});


                const proBtn = document.getElementById('proBtn');
            	proBtn.addEventListener('click', function(){
            		location.href='${ pageContext.servletContext.contextPath }/pro/listmng';
            	});

                const profitBtn = document.getElementById('profitBtn');
            	profitBtn.addEventListener('click', function(){
            		location.href='${ pageContext.servletContext.contextPath }/pay/profit';
            	});
            	
                const payBtn = document.getElementById('payBtn');
            	payBtn.addEventListener('click', function(){
            		location.href='${ pageContext.servletContext.contextPath }/pay/list';
            	});
            </script>
        </div>
    </div>
</div>
   

    <div class="summary">
        <h2 id="wrapTitle">일반회원</h2>
      


             <!-- 검색 폼 영역 -->
             <span>
            <div id="searcharea">
                <div id="searchbar">
                    <form method="get" action="${ pageContext.servletContext.contextPath }/admin/userlist">
            <input type="search" id="searchtext" placeholder="아이디로 검색하세요." size="100" name="search" value="${ param.searchValue }">
            	<button type="submit" id="searchbutton.href='${ pageContext.servletContext.contextPath }/admin/userlist'">검색</button>
        			</form>
                </div>
            </div>
            </span>
        <br><br>


        
        <!-- 우선 더미테이블 만듦-->
        <table id="userTable">
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>연락처</th>
                <th>회원상태</th>
            </tr>
            
             <c:forEach var="userlist" items="${ requestScope.userList }">
              <tr id="userinfoTable">
                       
                    <!-- 모달 btn ( text 혹은 button )-->
                   <th> 
                      <text type="button" class="modal_btn">${ userlist.userId }</text>
                    <div class="black_bg"></div>
                    <div class="modal_wrap">
                    <div class="modal_close"><a href="#">close</a></div>
                
                
                                <h2>상세 회원 정보</h2>
                            <table class="userMemTable">
                           
                                    <th><text class="modaltext">아이디</text></th>
                                    <th><text class="modaltext2">${ userlist.userId }</text></th>
                                    <tr></tr>
                    
                                  <!--  <tr id="fromSecond"> -->
                                    <th><text class="modaltext">이름</text></th>
                                    <th><text class="modaltext2">${ userlist.userName }</text></th>
                                    <tr></tr>
                                    <th><text class="modaltext"> 이메일</text></th>
                                    <th><text class="modaltext2">${ userlist.email }</text></th>
                                    
                                    <tr></tr>
                               
                    
                                   <!-- <tr id="fromSecond"> -->
                                    <th><text class=modaltext>핸드폰</text></th>
                                    <th><text class=modaltext2>${ userlist.phone }</text></th>
                                    <tr></tr>
                                    <th><text class=modaltext>주소</text></th>
                                    <th><text class=modaltext2>${ userlist.address }</text></th>
                            </table>
                        </div>
                        
                    </th>
                        
                        
                 <th>${ userlist.userName }</th>                        
                <th>${ userlist.phone }</th>
                <th>${ userlist.userStatus }</th>
                </c:forEach>
			     </tr>
	        </table>
		<jsp:include page="../admin/paging.jsp"/>
		</div>
 
</body>
</html>