<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="container">
	<article class="half">
		<h1>Login</h1>
		<div class="content">
			<div class="signin-cont cont">
				<form action="#" method="post" enctype="multipart/form-data">
					<input type="text" name="u_id" id="u_id"  class="inpt" required="required" placeholder="Your id">
						<label for="email"></label>
					<input type="password" name="u_pw" id="u_pw"class="inpt" required="required" placeholder="Your password">
						<label for="password"></label>
					<div class="submit-wrap">
						<input type="button" value="Sign in" id="loginBtn" class="submit">
					</div>
				</form>
			</div>
		</div>
	</article>
	<div class="half bg"></div>
</section>

