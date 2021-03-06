<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<section>
	<article>
		<div class="container" role="main">
			<form name="form" id="form" role="form" method="post"
				action="/board/write">
				<div class="mb-3">
					<label for="b_seq">글번호</label>
					 <input type="text" class="form-control" name="b_seq" id="b_seq"
						value="${data.b_seq}" readonly>
				</div>
				<div class="mb-3">
					<label for="b_title">제목</label>
					 <input type="text" class="form-control" name="b_title" id="b_title"
						value="${data.b_title}" readonly>
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
					<textarea class="form-control" rows="5" name="b_content" id="b_content" readonly
					>${data.b_content}</textarea>
				</div>
				<div>
				<c:if test="${loginUser.u_pk == data.u_pk}">
					<a href="/board/edit?b_pk=${data.b_pk}" class="btn btn-sm btn-primary">글 수정</a>
					<a href="/board/delete?b_pk=${data.b_pk}&b_category=${data.b_category}" class="btn btn-sm btn-primary">글 삭제</a>
				</c:if>
					<a href="/board/list?b_category=${data.b_category}" class="btn btn-sm btn-primary">리스트</a>
				</div>
			</form>
			<div class="reply-container">
			    <h3>댓글</h3>
			    <hr>
			    <div class="writeBtn">
			    	<button class="btn" id="writeBtn">글쓰기</button>
			    </div>
			    
			    <ul class="reply-list" id="reply-list">
			      
			    </ul>
		  </div>
		</div>
	</article>
		<div class="writeModal">
			<form class="writeModal-form">
				<div>
					<div><span class="modal-close">X</span></div>
					<input class="modal-writer" type="text" name="" placeholder="이재진">
				</div>
				<div>
					<textarea class="modal-content" rows="5" name="b_content" id="b_content">			
					</textarea>
				</div>
				<button class="btn" >글쓰기</button>
			</form>	
		</div>
</section>



