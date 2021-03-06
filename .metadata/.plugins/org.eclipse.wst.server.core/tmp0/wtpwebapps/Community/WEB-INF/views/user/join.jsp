<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="container">
	<div class="page-header">
		<div class="col-md-6 col-md-offset-3">
			<h3>회원가입</h3>
		</div>
	</div>
	<div class="col-sm-6 col-md-offset-3">
		<form role="form">
			<div class="form-group">
				<label for="u_id">아이디</label>
				 <input type="text" class="form-control" id="u_id" placeholder="아이디를 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="u_name">이름</label>
				<input type="text" class="form-control" id="u_name" placeholder="이름을 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="u_pw">비밀번호</label>
				<input type="password" class="form-control" id="u_pw" placeholder="비밀번호를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="u_pwRe">비밀번호 확인</label>
				<input type="password" class="form-control" id="u_pwRe" placeholder="비밀번호 확인을 위해 다시한번 입력 해 주세요">
			</div>
			<div class="form-group">
				<label for="u_phone">휴대폰 번호</label>
				<input type="text" class="form-control" id="u_phone" placeholder="휴대폰번호를 입력해 주세요">
			</div>
			<div class="form-group">
				<label for="u_email">이메일 주소</label>
				<input type="email" class="form-control" id="u_email" placeholder="이메일 주소를 입력해주세요">
			</div>
			<div class="form-group">
				<label for="u_profile">프로필이미지</label>
				 <input type="file" id="u_profile">
			</div>
			<div class="form-group text-center">
				<button type="button" id="joinBtn" class="btn btn-primary">
					회원가입<i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="reset" class="btn btn-warning">
					가입취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>
</section>