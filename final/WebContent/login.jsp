<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>

<div>
	<h1>서로</h1>
</div>

<div>
	<form action="">
		아이디 <input type="text" class="userId" name="userId" id="userId"> <br>
		비밀번호 <input type="text" class="userPwd" name="userPwd" id="userPwd"> <br>
		<button type="button">로그인 상태 유지</button> <br>
		<button type="submit">로그인</button>
	</form>
</div>

<br>

<div>
	<a href="" id="searchPwd">비밀번호 찾기</a>
	<a href="" id="searchId">아이디 찾기</a>
	<a href="" id="signUp">회원가입</a>
</div>

</body>
</html>