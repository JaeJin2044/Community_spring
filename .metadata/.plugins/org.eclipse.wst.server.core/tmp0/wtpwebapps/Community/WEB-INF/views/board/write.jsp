<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<section>
	<article>
		<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="/board/write">
				<div class="mb-3">
					<label for="title">제목</label>
					 <input type="text" class="form-control" name="b_title"
						placeholder="제목을 입력해 주세요">
				</div>
				<div>
					<input type="hidden" name="u_pk" value="${loginUser.u_pk}" />
					<input type="hidden" name="b_category" value="${param.b_category}">
				</div>
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<input type="text" class="form-control" name="b_writer" id="reg_id"
						value="${loginUser.u_name}" readonly >
				</div>
				<div class="mb-3">
					<label for="content">내용</label>
					<textarea class="form-control" rows="5" name="b_content" id="content"
						placeholder="내용을 입력해 주세요"></textarea>
				</div>
				<div>
					<button type="submit" class="btn btn-sm btn-primary" id="writeBtn">글쓰기</button>
					<a href="/board/list?b_category=${param.b_category}" class="btn btn-sm btn-primary">리스트</a>
				</div>
			</form>
		</div>
	</article>
</section>