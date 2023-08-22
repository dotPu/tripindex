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
		
		alert('인증 이메일이 전송되었습니다.')

	}
	
}
var check = "0";
function openmodal() {
	const modal = document.getElementById('email-check-modal');
	const modalemailcheck = document.getElementById("email-check-modal-content");	
	var emailValue = $("#email").val();//jQuery방식 var는 변수 const는 상수
	modal.style.display = "block";
	$.ajax({
        url: "/mailsend", // 컨트롤러 URL 설정
        method: "GET", // 또는 "POST" 등 HTTP 메서드 설정
        data : { email : emailValue },
        dataType : "text",
        success: function(data) {
            // AJAX 요청이 성공할 때 호출되는 함수
            console.log(data);
            check = data;
            console.log(check);
        },
        contentType: "text/plain; charset=utf-8", // 요청 데이터의 타입 및 인코딩 설정
    	beforeSend: function(xhr) {
        xhr.overrideMimeType("text/plain; charset=utf-8"); // 응답 데이터의 인코딩 설정
    	}
    })
	
}
function closemodal(){
	const modal = document.getElementById('email-check-modal');
	const modaltext = document.getElementById("modaltext");
	if(modaltext.value==check){
		alert("이메일 인증이 완료되었습니다");
		pass = true;
		var cm = document.getElementById('checkemail');
		cm.style.display = 'none';
	}else{
		alert("인증이 제대로 완료되지 않았습니다.");
		
	}
	
	modal.style.display = "none";
}
function accountconfirm(){
	
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

//비밀번호 찾기
function forgetpwOpen(){
	const modal = document.getElementById('pw-modal');
	const findid_input = document.getElementById('findid-input');
	const findid_btn = document.getElementById('findid-btn');
	
	findid_input.removeAttribute('readonly')
    findid_btn.disabled = false;
	modal.style.display = "block";
	
}

function forgetpwClose(){
	const modal = document.getElementById('pw-modal');
	const findidmodal = document.getElementById('findid-modal');
	findidmodal.style.display = "none";
	modal.style.display = "none";
	
}

function findId(){
	const findidmodal = document.getElementById('findid-modal');
	const modal = document.getElementById('pw-modal');
	modal.style.display = "none";
	findidmodal.style.display = "block";
}

function findIdProc(emailValue){
	const findidinput = document.getElementById('findid-input');
	
	$.ajax({
    url: "/findid", // 컨트롤러 URL 설정
    method: "GET", // 또는 "POST" 등 HTTP 메서드 설정
    data : { email : emailValue },
    dataType : "text",
    success: function(data) {
        // AJAX 요청이 성공할 때 호출되는 함수
        check = data;
        console.log(check);
    },
    contentType: "text/plain; charset=utf-8", // 요청 데이터의 타입 및 인코딩 설정
    beforeSend: function(xhr) {
    xhr.overrideMimeType("text/plain; charset=utf-8"); // 응답 데이터의 인코딩 설정
    }
    })
}

function mailsend(emailValue){
	
	const findid_input = document.getElementById('findid-input');
	const findid_btn = document.getElementById('findid-btn');
	const findid_hide = document.getElementById('findid-hide');
	$.ajax({
        url: "/mailsend", // 컨트롤러 URL 설정
        method: "GET", // 또는 "POST" 등 HTTP 메서드 설정
        data : { email : emailValue },
        dataType : "text",
        success: function(data) {
            // AJAX 요청이 성공할 때 호출되는 함수
            check = data;
            console.log(check);
        },
        contentType: "text/plain; charset=utf-8", // 요청 데이터의 타입 및 인코딩 설정
    	beforeSend: function(xhr) {
        xhr.overrideMimeType("text/plain; charset=utf-8"); // 응답 데이터의 인코딩 설정
    	}
    })
    
    findid_input.setAttribute('readonly','true');
    findid_btn.disabled = true;
    findid_hide.style.display = 'block';
    alert('인증코드가 발송되었습니다.');
    
}


/*제목 검색 구현*/
function keywordSearch(){
	const search = document.getElementById("search");
	alert(search.value);
	location.href="/keywordSearchTotalCount?keywordSearch="+search.value;
	
}
