<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" , admin.model.dto.*" %>
  
<!DOCTYPE html>
<html>
<head>

	<!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
    <!-- 왼쪽메뉴 CSS -->
    <link href="../MANAGER/CSS/leftmenu.css" rel="stylesheet" type="text/css">
	<!-- user css -->
	<link href="/EVENT/MANAGER/CSS/2.mng_user.css" rel="stylesheet" type="text/css">

	<style>
	    body{
			    margin: 10;
			    padding: 0;
		}  
     </style>
     
	<meta charset="UTF-8">
	<title>memberchart</title>

</head>

<body>
	<div class="leftMenu">
       <div class="menuImg" >
        <!-- <a href="<%=request.getContextPath()%>/member/list" id="title_link">회원관리</a> -->
        <div id="title_Btns">
            <ul id="btnList"> 
                <li><button class="menuBtn" id="userBtn" type="button">일반회원</button></li>
                <li><button class="menuBtn" id="reportBtn" type="button">신고내역</button></li>
                <li><button class="menuBtn" id="byeuserBtn" type="button">탈퇴회원</button></li>
                <!-- <li><button class="menuBtn" id="commBtn" type="button">게시판관리</button></li> -->
                <li><button class="menuBtn" id="orderBtn" type="button">주문내역</button></li>
                <li><button class="menuBtn" id="proBtn" type="button">재고관리</button></li>
                <li><button class="menuBtn" id="profitBtn" type="button">수익관리</button></li>
                <li><button class="menuBtn" id="payBtn" type="button">판매관리</button></li>
            </ul>
            <script>
                /* 클릭 시 이동할 페이지 */
            	const userBtn = document.getElementById('userBtn');
            	userBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/usermem/list';
            	});
            	
            	const reportBtn = document.getElementById('reportBtn');
            	reportBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/report/list';
            	});
            	
            	const byeuserBtn = document.getElementById('byeuserBtn');
            	byeuserBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/byeuser/list';
            	});

<%--                 const commBtn = document.getElementById('commBtn');
            	commBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/comm/list';
            	});
 --%>
                const proBtn = document.getElementById('proBtn');
            	proBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/pro/list';
            	});

                const profitBtn = document.getElementById('profitBtn');
            	profitBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/profit/list';
            	});
            	
                const payBtn = document.getElementById('payBtn');
            	payBtn.addEventListener('click', function(){
            		location.href='<%=request.getContextPath()%>/pay/list';
            	});
            </script>
        </div>
    </div>

    <div class="summary">
        <!-- <span style="text-shadow:  1px 0 #000, 0 1px #000, 1px 0 #000, 0 3px #000;"> -->
        <h1 id="wrapTitle" >신규 회원</h1>
        <br><br><br><br><br><br><br><br><br><br><br>
        <h1 id="wrapTitle">총 회원수</h1>
        
  
        <!--  차트 (부트스트랩 참고) -->

        <div id="forStyle">
            
            <canvas id="myChart1" width = "400px;" margin-left="5%;"></canvas>
            <!-- <canvas id="myChart2" width = "350px;" margin-left="5%;"></canvas> -->
            <script>
                
            var ctx = document.getElementById("myChart1");
            var myChart1 = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['21.01', '20.12', '20.11', '20.10'],
                datasets: [{
                label: '# of Tomatoes',
                data: [133, 100, 98, 99],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
                }]
            },
            options: {
                //cutoutPercentage: 40,
                responsive: false,
            
            }
            });
            
            var ctx = document.getElementById("myChart2");
            var myChart2 = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ['21.01', '20.12', '20.11', '20.10'], 
                datasets: [{
                label: '# of Tomatoes',
                data: [12, 15, 13, 5],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.5)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
                }]
            },
            options: {
                //cutoutPercentage: 40,
                responsive: false,
            
            }
            });
            
            </script>
         </div>
     </div>
</div>



</body>
</html>