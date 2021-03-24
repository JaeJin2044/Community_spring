<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<header class="header-container">
    <div class="header-title">
    	<a href="/board/list">커뮤니티</a>
    </div>
    <div class="header-items">
      <ul>
        <li><a href="/board/list?b_category=1">축구</a></li>
        <li><a href="/board/list?b_category=2">연예</a></li>
        <li><a href="/board/list?b_category=3">게임</a></li>
        <li><a href="/board/list?b_category=4">야구</a></li>
      </ul>
      <div class="header-personal">
      	<c:choose>
			<c:when test="${loginUser.u_profileImg == null}">
				<c:set var="src" value="profile.jpg" />
			</c:when>
			<c:otherwise>
				<c:set var="src"
					value="user/${loginUser.u_pk}/${loginUser.u_profileImg}" />
			</c:otherwise>
		</c:choose>
		
     	<c:choose>
     		<c:when test="${loginUser != null}">
		        <div>
		        	<a href="/user/logout" id="logOutBtn">로그아웃 </a>
		        </div>
		        <div class="profile-items">
		        	<span><img src="/res/img/${src}" id="profileImg" /></span>
		        	${loginUser.u_name}
		        </div>
        	</c:when>
        		<c:when test="${loginUser == null}">
		        <div>
		        	<a href="/user/login">로그인 </a>
		        </div>
		        <div>
		        	<a href="/user/join" >회원가입</a>
		        </div>
        	</c:when>
        </c:choose>
      </div>
    </div>
</header>


