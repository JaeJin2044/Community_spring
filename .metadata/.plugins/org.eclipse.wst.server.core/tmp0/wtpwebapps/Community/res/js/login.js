
let loginBtnEl = document.querySelector('#loginBtn');
let idEl = document.querySelector('#u_id');
let pwEl = document.querySelector('#u_pw');

if(loginBtnEl){
	
	function loginAjax(){
		
		if(idEl.value === '') {
			alert('아이디를 입력하세요')
			idEl.focus()
			return
		} else if(pwEl.value === '') {
			alert('비밀번호를 입력하세요')
			pwEl.focus()
			return
		}
	
		
		var param = {
			u_id : idEl.value,
			u_pw : pwEl.value
		}
		
		fetch('/userAjax/login',{
			method: 'post',
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(param)
		}).then(function(res){
			return res.json()
		}).then(function(myJson){
			if(myJson === 1){
				alert('로그인성공');
				location.href="/board/list";
				return
			}else if(myJson === 2){
				alert('아이디가 없습니다.')
				idEl.focus()
				return
			}else if(myJson ===3){
				alert('비밀번호가 틀렸습니다.')
				pwEl.focus()
				return
			}
		})
		
	}
	
	
	
	loginBtnEl.addEventListener('click',loginAjax);
}