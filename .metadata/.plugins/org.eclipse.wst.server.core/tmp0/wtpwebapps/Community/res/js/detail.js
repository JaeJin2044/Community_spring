
var writeModalEl = document.querySelector('.writeModal');
var modalCloseEl = document.querySelector('.modal-close');
var writeBtnEl = document.querySelector('#writeBtn');

if(writeModalEl){
	writeBtnEl.addEventListener('click',function(){
		alert('하이 모달 오픈');
		writeModalEl.style.display='flex';
	})
}

if(modalCloseEl){
	modalCloseEl.addEventListener('click',function(){
		writeModalEl.style.display='none';
	})
}






