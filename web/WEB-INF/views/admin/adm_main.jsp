<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- 파비콘 -->
    <link rel="icon" type="image/x-icon" href="/EVENT/resources/images/favicon.ico">
<meta charset="EUC-KR">
<title>관리자메인페이지</title>

    <script>
        window.resizeTo(1300,690);
    </script>

	   <!-- 강아지 뾱뾱이 소리 -->
      <!--  <audio id='audio_play' src='../resources/audio/Squeaky-toy-sound-effect.mp3'></audio>
      <script type="text/javascript"> 
        function play() { 
            var audio = document.getElementById('audio_play'); 
            if (audio.paused) { 
                audio.play(); 
            }else{ 
                audio.pause(); 
                audio.currentTime = 0
            } 
        } 
     </script>
     -->
     
     <style>
    /* 1300 X 1024 사이즈로 새로운 창으로 띄우기*/
    body{
        background-repeat: no-repeat;
        background-size:1300px 768px;
        font-family: 'notosanskr', sans-serif;
        background-color: #F5742F;
    }

    .title{
        color : black;
        width: 100%;
        /*border: 1px solid red;*/
        padding-top:5%;
        margin-top: 2%;
    }

    h1{
        margin-top: 4%;
        text-align: center;
        font-size: 300%;
    }

    .background{
        /*border: 1px solid yellowgreen;*/
        margin-top: 1%;
    }

    table{
        margin: auto;
    }

    table, tr, td{
        /*border: 1px solid blue;*/
    }

    .firstBtn{
        background: #F7F6F7;
        border: 5px solid black;
        box-sizing: border-box;
        width: 295px;
        height: 284px;
        margin:30px;
        border-radius: 13px;
        font-size: 36px;
        cursor:pointer;
        outline:none; 
    }

    /* .secondBtn{
        /* position: absolute;
        left: 50%;
        top: 50%;  
        text-align: center;
        width: 119.95px;
        height: 46.13px;
        background: #F5742F;
        border-radius: 20px;
        transform: translate( -50%, -50% );
    } */


    .firstBtn:hover{
        opacity: 100%;
        color: cyan;
        background-color: black;
    }


    /* .secondBtn:hover{
        opacity: 80%;
    } */


     /*지마켓 폰트*/
     @font-face {
        font-family: 'GmarketSansBold';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }


    *{
   font-family: 'GmarketSansBold';
    }

</style>

</head>
<body>

 	<div class="title" >
        <span style="text-shadow:  -4px 0 white, 0 -5px white, -2px 0 white, 0 -2px white;"></span>
        <h1 onclick="play()">관리자 페이지</h1>
    </div>
    <div class="background">
       <table id="firstTB">
           <tr>
               <td>
                   <button class="firstBtn" id="adm_member" type="button">회원관리</button>
                   <button class="firstBtn" id="adm_order" type="button">주문관리</button>
                </td>
             </tr>
             <tr>
                 <td>
                 	<!-- 2022.03.24 구현보류 -->
                    <!--  <button class="firstBtn" id="adm_comm" type="button">게시판 관리</button> -->
                   <button class="firstBtn" id="adm_profit" type="button">수익관리</button>
                </td>
            </tr>
       </table>
       
       <!-- 수정 필요 | jsp 생성 후 location 수정 -->
       <script>
       		const adm_member = document.getElementById("adm_member");
       		adm_member.addEventListener('click', function(){
       			location.href='<%=request.getContextPath()%>/userchart';
       		});
       		
       		const adm_order = document.getElementById("adm_order");
       		adm_order.addEventListener('click', function(){
       			location.href='<%=request.getContextPath()%>/order/list';
       		});
       		
   			<%--        		
            const adm_comm = document.getElementById("adm_comm");
            adm_comm.addEventListener('click', function(){
                location.href='<%=request.getContextPath()%>/views/Login/loginAdmin.jsp';   
            });     
         	--%>    
         
       		const adm_profit = document.getElementById("adm_profit");
       		adm_income.addEventListener('click', function(){
       			location.href='<%=request.getContextPath()%>/profit';
       		});
       </script>
       
    </div>
</body>
</html>