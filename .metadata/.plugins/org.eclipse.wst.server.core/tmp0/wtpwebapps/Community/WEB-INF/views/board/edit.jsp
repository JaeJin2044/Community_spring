<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<section>
	<article>
		<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="/board/edit">
				<div>
					<input type="hidden" name="b_pk" value="${data.b_pk}" />
					<input type="hidden" name="b_category" value="${data.b_category}" />
				</div>
				<div class="mb-3">
					<label for="b_seq">글번호</label>
					 <input type="text" class="form-control" name="b_seq" id="b_seq"
						value="${data.b_seq}" readonly>
				</div>
				<div class="mb-3">
					<label for="b_title">제목</label>
					 <input type="text" class="form-control" name="b_title" id="b_title"
						value="${data.b_title}" >
				</div>
				<div class="mb-3">
					<label for="b_writer">작성자</label>
					<input type="text" class="form-control" name="b_writer" id="b_writer"
						value="${data.b_writer}" readonly >
				</div>
				<div class="mb-3">
					<label for="b_regdate">등록일자</label>
					<input type="text" class="form-control" name="b_regdate" id="b_regdate"
						value="${data.b_regdate}" readonly >
				</div>
				<div class="mb-3">
					<label for="b_hitcounts">조회수</label>
					<input type="text" class="form-control" name="b_hitcounts" id="b_hitcounts"
						value="${data.b_hitcounts}" readonly >
				</div>
				<div class="mb-3">
					<label for="b_content">내용</label>
					<textarea class="form-control" rows="5" name="b_content" id="b_content" 
					>${data.b_content}</textarea>
				</div>
				<div>
					<input type="submit" class="btn btn-sm btn-primary" value="글수정">
					<a href="/board/list?b_category=${data.b_category}" class="btn btn-sm btn-primary">리스트</a>
				</div>
			</form>
		</div>
	</article>
</section>    