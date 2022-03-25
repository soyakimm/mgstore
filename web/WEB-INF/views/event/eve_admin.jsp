<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- 외부 스타일 시트 -->
 	<link href=${ pageContext.servletContext.contextPath }/views/event/eve_admin.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<div class="group"> 

    <jsp:include page="../common/header.jsp"/>
        
    <form>
        <h2>이벤트 소개</h2>
        <hr>
        <div class="eve-info">
            <!-- 이벤트 이름-->
            <div class="eve name">
                <p id="title">이벤트제목</p>
                <input type="text" id="text" placeholder="이벤트 제목을 설정해주세요." required/>
            </div>
        </div>

        <!-- 옵션 기능 -->
        <div class="event hosing">
            <!-- 이벤트 진행 상황 -->
            <span class="span1">
                <p id="title">이벤트 진행 상황</p>
                <b id="sub">진행중 혹은 종료</b>
                <div style="padding-top: 1%;">
                    <select name="housing type" id="housing type">
                        <option class="option" value="" selected disabled>진행상황 선택</option>
                        <option class="option" value="진행중">진행중</option>
                        <option class="option" value="종료">종료</option>
                    </select>


                        <!-- 날짜 선택 -->
                        <div class="eve-date">
                        <p id = "title">이벤트 기간 설정</p>
                        <input type="date" name="rvdate" required></p>
                        </div>

                        

                        <!-- 배너 등록 -->
                        <div class="eve img">
                            <p id="title">이벤트 배너 이미지 등록</p>
                            <b id="sub" style="font-size: 14px;">
                                이벤트 배너이미지는 1200 × 150 px 을 넘지않아야합니다.  <br>
                                최대한 사이즈를 지켜서 업로드 해주세요. <br>
                            </b></p>
                            <!-- 배너이미지 -->
                            <div id="imgSection">
                                <button id="imgBtn">배너이미지</button>
                                    <input type="file" name="file" id="file">
                            </div></p>

                            <!--배너게시글설명이미지-->
                            <div id="imgSection">
                                <span class="eveImg">
                                    <button id="imgBtn">설명이미지</button>
                                        <input type="file" name="file" id="file">
                                </span>


                            <!-- 이벤트 당첨자 등록 -->
                            <div class="event-user inform" style="padding-top: 27%;">
                                <h2>이벤트 당첨자</h2>
                                <hr>
                                <br>
                                <b id="sub" style="color: #E92D2D; ">
                                   최대 3명 이상의 이벤트 당첨자를 입력할 수 없습니다.
                                </b>
                                <div>
                                    <span class="eve-user">
                                        <img src="../EVENT/resources/images/Logo.PNG" alt="eve-user" style="width: 40px;" >
                                        <b>이벤트 당첨자 ID (성함) </b>
                                        <div id="bankTa">
                                            <ul id="eve-user-add"></ul>
                                            <!-- <input type="text" id="bankText" placeholder="당첨자 이름을 입력하세요(ID 혹은 이름)" style="width: 80%;"/> -->
                                            <div class="buttons">
                                            <input type='text' name="txt" placeholder="당첨자 이름을 입력하세요(ID 혹은 이름)" style="width: 80%";> 
                                            <input type="button" class="btnAdd" value="추가"><br>
                                            </div>
                                        </div>
                        
                    
                    <br><br><br> <br><br><br>
                  <button id="appBtn" type="submit">등록하기</button>
                     <br><br><br>	  
                </div>
            </span>
    </form> <!-- 전체 폼 -->
    </div> <!--group-->

    </body>



            <!-- 당첨자 등록 JS -->
            <script>            
                    $(document).ready (function () {                
                        $('.btnAdd').click (function () {                                        
                            $('.buttons').append (                        
                                '<input type="text" name="txt"> <input type="button" class="btnRemove" value="Remove"><br>'                    
                            ); // end append                            
                            $('.btnRemove').on('click', function () { 
                                $(this).prev().remove (); // remove the textbox
                                $(this).next ().remove (); // remove the <br>
                                $(this).remove (); // remove the button
                            });
                        }); // end click                                            
                    }); // end ready        
            </script> 
        





    <!-- 당첨자 추가 Script (다른것도 참고해보기)-->
    <script>
    function addList()  {
  
        // 1. 추가할 값을 input창에서 읽어온다
        const addValue 
          = document.getElementById('addValue').value;
        
        // 2. 추가할 li element 생성
        // 2-1. 추가할 li element 생성
        const li = document.createElement("li");
        
        // 2-2. li에 id 속성 추가 
        li.setAttribute('id',addValue);
        
        // 2-3. li에 text node 추가 
        const textNode = document.createTextNode(addValue);
        li.appendChild(textNode);
        
        // 3. 생성된 li를 ul에 추가
        document
          .getElementById('fruits')
          .appendChild(li);
      }             
</body>
</html>