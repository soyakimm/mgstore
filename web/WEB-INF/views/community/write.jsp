<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
	<!-- 외부 스타일 시트 -->
	<link href="${ pageContext.servletContext.contextPath }/resources/css/community/write.css" rel="stylesheet">
	<link href="${ pageContext.servletContext.contextPath }/resources/images/community" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Gmarket+Sans+TTF&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
    
    
    <div class="group">
        <form method="post" action="${ pageContext.servletContext.contextPath }/CommunityWrite"
		enctype="multipart/form-data">
        <div class="frame-9 screen">
            <h1 class="text-37 web-font39">게시글 작성</h1>
            <img
              class="line-24"
              src="../글작성/image/글작성라인.png"
            />
  
                <!-- 카테고리 선택 시작-->
                <div>
                <select class="overlap-group6 border-1px-star-dust web-font40" id="categotyKindU" name="categoryKindU" onchange="categoryKindChange(this)">
                  <option>카테고리 선택</option>
                  <option value="10">멍개병원</option>
                  <option value="20">멍개일상</option>
                  <option value="30">멍개노하우</option>
                  <option value="40">멍개메이트</option>
                  <option value="50">이벤트</option>
                </select>
                </div>
                <!--카테고리 선택 끝-->
                <!--말머리 선택 시작-->
                <div>
                <select class="overlap-group3 border-1px-star-dust web-font40" id="categoryKindD" name="categoryKindD">
                  <option>말머리 선택</option>
                </select>
                </div>
                <!--말머리 선택 끝 -->
             


            <div class="text-1 notosanskr-medium-white-20px">
              <span class="notosanskr-medium-black-20px">제목</span
              ><span class="notosanskr-medium-red-20px">*</span>
            </div>
            
            <!--제목입력창 시작-->
            <div class="text-3-1 notosanskr-medium-dove-gray-17px">
                <input  class="jae" type="text" name="story_title" placeholder="제목을 입력해주세요." autocomplete="off">
            </div>
            <!--제목입력창 끝-->

            <div class="text-1 notosanskr-medium-white-20px">
              <span class="notosanskr-medium-black-20px">글작성</span
              ><span class="notosanskr-medium-red-20px">*</span>
            </div>
            
            <br><br>
            <!--파일첨부 시작-->
            <div id="root">
                
                <h2 class="title">File Upload</h2> 
                <div class="contents">
                  <div class="upload-box">
                    <div id="drop-file" class="drag-file">
                      <img href="${ pageContext.servletContext.contextPath }/resources/images/community/landscape.png" alt="파일 아이콘" class="image" >
                      <p class="message">Drag files to upload</p>
                      <img src="" alt="미리보기 이미지" class="preview">
                    </div>
                    <label class="file-label" for="chooseFile">Choose File</label>
                    <input class="file" id="chooseFile" type="file" onchange="dropFile.handleFiles(this.files)" accept="image/png, image/jpeg, image/gif">
                  </div>
                </div>
              </div>
        <!--파일첨부 끝-->

            <br><br>

              <!--내용입력 시작-->
                <textarea class="overlap-group2 border-2px-star-dust" placeholder="내용을 입력해주세요"></textarea>
            <!--내용입력 끝-->

            <div class="exex web-font41">
                키워드는 #로 구분해주세요.
            </div>
            <!--키워드 입력 시작-->
            <div class="text-container">
                <input type="text" class="keykey" placeholder="키워드 입력" name="hashTagContent" size="7" autocomplete="off">
            </div>
            <!--키워드 입력 끝-->
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
            <!--취소 버튼 시작-->
            <a onclick="backclick()">
            <div class="overlap-group-container-4">
              <div class="overlap-group7">
                <div class="text-1-1 notosanskr-medium-white-24px">취소</div>
              </div>
            </a>
            
            <!--aler창 생각해봐야함-->
            <!--등록하기 버튼 시작-->
            <input class="overlap-group1 text-1-1 notosanskr-medium-white-24px" type='submit' value='등록하기&emsp;'>
            <!--등록하기 버튼 끝-->
            </div>
          </div>    
</form>
                       <!--js 카테고리 말머리 시작-->
                       <script>
                        function categoryKindChange(e) {
                  var life = ["건강관리", "급여/식이", "꿀팁", "놀이", "여행", "기타"];
                  var mating = ["진행 중", "완료"];
                  var target = document.getElementById("categoryKindD");
              
                  if(e.value == "20") var d = life;
                  else if(e.value == "40") var d = mating;
              
                  target.options.length = 0;
              
                  for (x in d) {
                      var opt = document.createElement("option");
                      opt.value = d[x];
                      opt.innerHTML = d[x];
                      target.appendChild(opt);
                  }   
              }
                    </script>
                      <!--js 카테고리 말머리 끝-->
                  <!--파일첨부 시작-->
                  <script>
                    function DropFile(dropAreaId, fileListId) {
            let dropArea = document.getElementById(dropAreaId);
            let fileList = document.getElementById(fileListId);
          
            function preventDefaults(e) {
              e.preventDefault();
              e.stopPropagation();
            }
          
            function highlight(e) {
              preventDefaults(e);
              dropArea.classList.add("highlight");
            }
          
            function unhighlight(e) {
              preventDefaults(e);
              dropArea.classList.remove("highlight");
            }
          
            function handleDrop(e) {
              unhighlight(e);
              let dt = e.dataTransfer;
              let files = dt.files;
          
              handleFiles(files);
          
              const fileList = document.getElementById(fileListId);
              if (fileList) {
                fileList.scrollTo({ top: fileList.scrollHeight });
              }
            }
          
            function handleFiles(files) {
              files = [...files];
              // files.forEach(uploadFile);
              files.forEach(previewFile);
            }
          
            function previewFile(file) {
              console.log(file);
              renderFile(file);
            }
          
            function renderFile(file) {
              let reader = new FileReader();
              reader.readAsDataURL(file);
              reader.onloadend = function () {
                let img = dropArea.getElementsByClassName("preview")[0];
                img.src = reader.result;
                img.style.display = "block";
              };
            }
          
            dropArea.addEventListener("dragenter", highlight, false);
            dropArea.addEventListener("dragover", highlight, false);
            dropArea.addEventListener("dragleave", unhighlight, false);
            dropArea.addEventListener("drop", handleDrop, false);
          
            return {
              handleFiles
            };
          }
          
          const dropFile = new DropFile("drop-file", "files");
                </script>
          
              <!--파일첨부 끝-->
</body>
</html>