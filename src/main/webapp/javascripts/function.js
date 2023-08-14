/**
 * 
 */
//회원가입 이메일 무결성 검증
var pass=false;
function checkEmail(){
	var email = document.getElementById("email");
	let regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	if(!regex.test(email.value)){
		alert('올바르지 않은 이메일 주소입니다.');
		email.focus();
	}else{
		openmodal();
		alert('이메일 인증이 완료되었습니다.')
		pass = true;
		var cm = document.getElementById('checkemail');
		cm.style.display = 'none';
	}
	
}

function openmodal() {
	const modal = document.getElementById('emailcheckmodal');
	const modalemailcheck = document.getElementById("modalemailcheck");
		
		modal.style.display = "block";
}

function confirm(){
	
	if(document.querySelector("#id").value==""){
	alert('아이디가 비어 있습니다.')
	document.querySelector("#id").focus();
		return ; //return이라는 키워드를 만나는 순간 함수는 종료된다.
		}
		if(document.querySelector("#password").value==""){
			alert('패스워드가 비어 있습니다.')
			document.querySelector("#password").focus();
			return ; //return이라는 키워드를 만나는 순간 함수는 종료된다.
		}
		if(document.querySelector("#name").value==""){
			alert('핸드폰번호가 비어 있습니다.')
			document.querySelector("#name").focus();
			return ; //return이라는 키워드를 만나는 순간 함수는 종료된다.
		}
		if(document.querySelector("#email").value==""){
			alert('이메일이 비어있습니다..')
			document.querySelector("#email").focus();
			return ; //return이라는 키워드를 만나는 순간 함수는 종료된다.
		}
		if(document.querySelector("#address").value==""){
			alert('주소란이 비어 있습니다.')
			document.querySelector("address").focus();
			return ;
		}
		//이메일 인증 여부 확인
		if(!pass){
			alert('이메일 인증을 진행하세요.');
			return;
		}
		//아이디 길이를 확인/패스워드길이 확인
		//8~12자리로 제한을 할경우
		id=document.querySelector("#id").value;
		if(id.length<4 || id.length>12 ){
			alert('아이디 길이를 확인하세요.');
			document.querySelector("#id").focus();
			return;
		}

	document.forms[0].requestSubmit(); //form내에 submit버튼이 없을 경우 실행하는 함수
	//document.forms[0].submit(); //form내에 submit이 있는 경우에 실행하는 함수
}
