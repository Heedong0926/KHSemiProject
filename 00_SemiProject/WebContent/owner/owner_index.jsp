<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GoCatchStay Owner Page</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/owner/css/include/index.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/owner/js/include/owner_index.js"></script>
</head>
<body>
	<div id="container">
		<jsp:include page="include/header.jsp" />
		<div id="content">
			<c:if test="${empty loginOwner }">
			<form action="<%=request.getContextPath() %>/owner_login.do" method="post" onsubmit="return login_check()">
				<h2 id="title">관리자 로그인</h2>
				<div id="login">
					<input type="text" placeholder="ID :" name="owner_id"><br>
					<input type="password" placeholder="PWD :" name="owner_pwd">
				</div>
				<div id="btn">
					<p id="search">
						<span>
							<a href="<%=request.getContextPath() %>/owner_id_search.do">id찾기</a>
							 | 
							<a href="<%=request.getContextPath() %>/owner_pwd_search.do">pwd찾기</a>
						</span>
						<span>
							<a href="<%=request.getContextPath() %>/owner_join.do">회원가입</a>
						</span>
					</p>
					<input type="submit" value="로그인">
				</div>
			</form>
			</c:if>
			
			<c:if test="${!empty loginOwner }">
			<div>
				${loginOwner.getOwner_name() } 님 환영합니다.
			</div>
			</c:if>
		</div>
	</div>
</body>
</html>