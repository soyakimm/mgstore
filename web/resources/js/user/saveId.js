/* userId */
const userId = document.querySelector("#userId");
/* checkbox */
const save = document.querySelector("#saveId");

/* 저장된 쿠키값 호출, 아이디 입력란에 해당 값 삽입(없을 경우 공백) */
let saveId = getCookie("saveId");
userId.value = saveId;

/* 아이디 input 태그에 값이 삽입되면 체크박스 활성화 */
if(userId.value != "") {
	save.checked = true;
}

/* 체크박스 체크 시 7일간 보관, 해제 시 쿠키 삭제 */
save.addEventListener('change', function(){
	if(this.checked) {
		setCookie("saveId", userId.value, 7);
	} else {
		deleteCookie("saveId");
	}
});

/* 체크박스 체크 후 아이디 입력 시 7일간 보관 */
userId.addEventListener('keyup', function(){
	if(save.checked) {
		setCookie("saveId", userId.value, 7);
	}
});

/* 쿠키 저장(이름, 값, 유효일자) */
function setCookie(cookieName, value, days){
	let expDate = new Date();
	expDate.setDate(expDate.getDate() + days);
	
	let cookieValue = escape(value) + ((days == null) ? "" : "; expires=" + expDate.toGMTString());
	
	document.cookie = cookieName + "=" + cookieValue;
};

/* 쿠키 삭제(이름) */
function deleteCookie(cookieName) {
	let expireDate = new Date();
	expireDate.setDate(expireDate.getDate() - 1);
	document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
}

/* 쿠키 호출(이름) */
function getCookie(cookieName) {
	cookieName = cookieName + '=';
	let cookieData = document.cookie;
	
	let start = cookieData.indexOf(cookieName);
	let cookieValue = '';
	if(start != -1) {
		start += cookieName.length;
		let end = cookieData.indexOf(';', start);
		if(end == -1) {
			end = cookieData.length;
		}
		cookieValue = cookieData.substring(start, end);
	}
	return unescape(cookieValue);
}