// input type file 요소들
let fileElements = document.querySelectorAll("[type=file]");
// div image_area 요소들
let imageArea = document.querySelectorAll(".image_area");
// change(파일 첨부가 발생하는 상황) 이벤트 발생 시 preview 함수 동작
fileElements.forEach(item => item.addEventListener('change', preview));

function preview(){
	// if(!fileCheck(this)) return;
	let index = Array.from(fileElements).indexOf(this);
    if (this.files && this.files[0]) {
       let reader = new FileReader();
       reader.readAsDataURL(this.files[0]);
       reader.onload = function () {
    	   imageArea[index].innerHTML = "<img src='" + reader.result + "'>";
       }
   }
}
