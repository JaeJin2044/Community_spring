<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.selected{
		color: red;
	}
</style>
<section>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.b_seq}</td>
				<td><a href="/board/detail?b_pk=${item.b_pk}">${item.b_title}</a></td>
				<td>
				<c:choose>
					<c:when test="${item.u_profileImg == null}">
						<c:set var="src" value="profile.jpg" />
					</c:when>
					<c:otherwise>
						<c:set var="src"
							value="user/${item.u_pk}/${item.u_profileImg}" />
					</c:otherwise>
				</c:choose>
				<span><img src="/res/img/${src}" id="userImg">${item.b_writer}</span>
				</td>
				<td>${item.b_regdate}</td>
				<td>${item.b_hitcounts}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
		<div class="row">
			<div class="col-lg-12">
				<form id="searchForm" action="/board/list" method="get">
					<select name="type">
						<option value="T" <c:out value="${page.cri.type eq 'T' ? 'selected' : ''}"/>>제목</option>
						<option value="C" <c:out value="${page.cri.type eq 'C' ? 'selected' : ''}"/>>내용</option>
						<option value="W" <c:out value="${page.cri.type eq 'W' ? 'selected' : ''}"/>>작성자</option>
						<option value="TC" <c:out value="${page.cri.type eq 'TC' ? 'selected' : ''}"/>>제목+내용</option>
						<option value="TW" <c:out value="${page.cri.type eq 'TW' ? 'selected' : ''}"/>>제목+작성자</option>
						<option value="TWC" <c:out value="${page.cri.type eq 'TWC' ? 'selected' : ''}"/>>제목+작성자+내용</option>
					</select>
					<input type="text" name="keyword" value="${page.cri.keyword}" />
					<input type="hidden" name="pageNum" value="${page.cri.pageNum}" />
					<input type="hidden" name="amount" value="${page.cri.amount}" />
					<input type="hidden" name="b_category" value="${page.cri.b_category}" />
					<button class="btn btn-primary">검색</button>
				</form>
			</div>		
		</div>
	
		<div class="pageContainer" style="text-align: center;">
			<ul class="pagination">
				<c:if test="${page.prev}">
					<li>
						<a href="/board/list?pageNum=${page.startPage-1}&b_category=${param.b_category}"  aria-label="Previous">
						 <span aria-hidden="true">&laquo;</span>
						</a>
					</li>
				</c:if>
				<c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
					<li class="${page.cri.pageNum == num ? 'active' : ''}">
						<a href="/board/list?pageNum=${num}&b_category=${param.b_category}
						&keyword=${page.cri.keyword}&type=${page.cri.type}">
							${num}
						</a>
					</li>
				</c:forEach>
				<c:if test="${page.next}">
					<li>
						<a href="/board/list?pageNum=${page.endPage+1}&b_category=${param.b_category}">
						 <span aria-hidden="true">&raquo;</span>
						</a>
					</li>
				</c:if>
			</ul>
		</div>
	 
	<c:if test="${param.b_category != null && loginUser.u_pk > 0 }">
		<a href="/board/write?b_category=${param.b_category}" class="btn btn-primary" style="float:right;">
		글쓰기
		</a>
	</c:if>
	
	
	
	
	
</section>