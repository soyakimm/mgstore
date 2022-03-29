<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록 | 멍개상점</title>
   <!-- 웹 폰트 -->
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   <!-- 스타일 시트 -->
   <link href="${ pageContext.servletContext.contextPath }/resources/css/product/proAdminAdd.css" rel="stylesheet">
   <!-- js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<jsp:include page="../common/header.jsp"/>

<body>
	
   <div class="proAdminAdd-page">
        <div class="proAdminAdd-header">
            <div class="proAdminAdd-title"><h3>상품 등록</h3></div>
            <div class="proAdminAdd-button">
                <button class="proAddBtn" onclick="location.href='${ pageContext.servletContext.contextPath }/product/admin'">취소</button>
                <button class="proModifyBtn" onclick="link">등록하기</button>
            </div>
        </div>
        <div class="proAdminAdd-body">
            <div class="pro-regist-wrapper">
                <table>
                    <tr>
                        <th>상품명<span>&nbsp(필수)</span></th>
                        <td colspan="2">
                            <input type="text" placeholder="상품명은 100자까지 입력 가능합니다." size="80" maxlength="100">
                        </td>
                    </tr>
                    <tr>
                        <th>판매가<span>&nbsp(필수)</span></th>
                        <td colspan="2">
                            <input type="text">&nbsp원
                        </td>
                    </tr>
                    <tr>
                        <th>카테고리<span>&nbsp(필수)</span></th>
                        <td colspan="2">
                            <select name="ACategory" style="width: 300px; height: 20px;">
                                <option>상위 카테고리를 선택해주세요.</option>
                                <option> -------------------------------------------------- </option>
                                <option value="feed">사료</option>
                                <option value="dessert">간식</option>
                                <option value="care">케어</option>
                                <option value="living">리빙</option>
                                <option value="outside">외출</option>
                                <option value="toy">장난감</option>
                                <option value="fashion">패션</option>

                            </select>
                            <select name="BCategory" style="width: 300px; height: 20px;">
                                <option>하위 카테고리를 선택해주세요.</option>
                                <option> -------------------------------------------------- </option>
                            </select>
                        </td>
                    </tr>
                    <tr height="300">
                        <th>상품 설명</th>
                        <td colspan="2">
                            <textarea cols="100" rows="17" style="resize:none;" maxlength="2000" placeholder="상품 설명은 2000자까지 입력 가능합니다."></textarea>
                        </td>
                    </tr>
                    <tr class="table-img">
                        <th height="300px" rowspan="2">이미지</th>
                        <td id="tid">
                            <h4>썸네일</h4>
                            <div id="thumbnail-preview">
                                <img src="${ pageContext.servletContext.contextPath }/resources/images/product/goods.png" alt="사진영역"  style="width:180; height:180;">
                            </div>
                            <input type="file" id="img" name="uploadThumbnail" accept="image/gif, image/jpeg, img/png"/>
                        </td>
                        <td>
                            <h4>상세 이미지</h4>
                            <div id="image-preview">
                                <img src="${ pageContext.servletContext.contextPath }/resources/images/product/goods.png" alt="사진영역"  style="width:180; height:180;">
                            </div>
                            <input type="file" id="img2" name="uploadDetail" accept="image/gif, image/jpeg, img/png"/>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <script>
            $('#img').on('change', function() {
            ext = $(this).val().split('.').pop().toLowerCase(); //확장자
            //배열에 추출한 확장자가 존재하는지 체크
            if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
                resetFormElement($(this)); //폼 초기화
                window.alert('이미지 파일이 아닙니다. (gif, png, jpg, jpeg 만 업로드 가능)');
            } else {
                file = $('#img').prop("files")[0];
                blobURL = window.URL.createObjectURL(file);
                $('#thumbnail-preview img').attr('src', blobURL);
                $('#thumbnail-preview').slideDown(); //업로드한 이미지 미리보기 
            }
            });

            $('#img2').on('change', function() {
            ext = $(this).val().split('.').pop().toLowerCase();
            if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
                resetFormElement($(this));
                window.alert('이미지 파일이 아닙니다. (gif, png, jpg, jpeg 만 업로드 가능)');
            } else {
                file = $('#img2').prop("files")[0];
                blobURL = window.URL.createObjectURL(file);
                $('#image-preview img').attr('src', blobURL);
                $('#image-preview').slideDown(); 
            }
            });
</script>

</body>
</html>