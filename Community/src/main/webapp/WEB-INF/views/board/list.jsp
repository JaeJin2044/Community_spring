<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="pageContainer">
			<ul class="pagination">
				<c:if test="${page.prev}">
					<li>
						<a href="/board/list?pageNum=${page.startPage-1}&b_category=${param.b_category}"  aria-label="Previous">
						 <span aria-hidden="true">&laquo;</span>
						</a>
					</li>
				</c:if>
				<c:forEach var="num" begin="${page.startPage}" end="${page.endPage}">
					<li>
						<a href="/board/list?pageNum=${num}&b_category=${param.b_category}">
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