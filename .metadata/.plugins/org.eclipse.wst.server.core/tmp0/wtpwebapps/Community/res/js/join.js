

let joinBtnEl = document.querySelector('#joinBtn');
let idEl = document.querySelector('#u_id');
let nameEl = document.querySelector('#u_name');
let pwEl = document.querySelector('#u_pw');
let pwReEl = document.querySelector('#u_pwRe');
let phoneEl = document.querySelector('#u_phone');
let emailEl = document.querySelector('#u_email');
let profileEl = document.querySelector('#u_profile');


if(joinBtnEl){
	
	// 이메일 체크 정규식
	function isEmail(asValue) {
		var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴	
	}

	// 핸드폰 번호 체크 정규식
	function isCelluar(asValue) {
		var regExp = /^01(?:0|1|[6-9])-(?:\d{3}|\d{4})-\d{4}$/;
		return regExp.test(asValue); // 형식에 맞는 경우 true 리턴
	}
	
	
	function join(){
		if(idEl.value ===''){
			alert('아이디를 입력해주세요');
			idEl.focus();
			return 
		}else if(nameEl.value ===''){
			alert('이름은 반드시 입력하셔야 해요');
			nameEl.focus();
			return 
		}else if(pwEl.value ===''){
			alert('비밀번호를 입력해주세요');
			pwEl.focus();
			return 
		}else if(pwEl.value !== pwReEl.value){
			alert('비밀번호가 같지 않습니다.');
			pwReEl.focus();
			return 
		}else if(phoneEl.value ===''){
			alert('휴대폰번호를  입력해주세요');
			phoneEl.focus();
			return 
		}else if(emailEl.value ===''){
			alert('이메일을  입력해주세요');
			emailEl.focus();
			return 
		}else if(!isEmail(emailEl.value)){
			alert('이메일 형식을 알맞게 해주세요');
			emailEl.focus();
			return 
		}else if(!isCelluar(phoneEl.value)){
			alert('휴대폰번호 형식을 맞게 해주세요');
			phoneEl.focus();
			return 
		}
		
		
		
		var formData = new FormData();
		formData.append('u_id',idEl.value);
		formData.append('u_name',nameEl.value);
		formData.append('u_pw',pwEl.value);
		formData.append('u_phone',phoneEl.value);
		formData.append('u_email',emailEl.value);
		
		if(profileEl.files.length !== 0){
			formData.append("img", profileEl.files[0])		
		}
		
		
		fetch('/userAjax', {
			method: 'post',
			body: formData
		}).then(function(res) {
			return res.json()
		}).then(function(myJson) {
			proc(myJson)
		})
		
	}
	
		function proc(myJson){
			if(myJson.result ===0){
				alert('회원가입 실패');
			}
			alert('회원가입에 성공 하였습니다.');
			location.href = '/user/login';
		}
	

	joinBtnEl.addEventListener('click',function(){
		join();
	})
}



