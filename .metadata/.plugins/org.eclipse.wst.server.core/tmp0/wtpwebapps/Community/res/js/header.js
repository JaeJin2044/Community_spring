


let logOutBtnEl = document.querySelector("#logOutBtn");

if(logOutBtnEl){
	
	
	logOutBtnEl.addEventListener('click',function(e){
		e.preventDefault();
		if(confirm('로그 아웃 하시겠습니까?')){
			location.href="/user/logout";
		}
		
	})
	
}

