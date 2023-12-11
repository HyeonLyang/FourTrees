<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/account/login.css">
<article>
	<div class="blank">
	<p>　</p>
</div>
<div class="sqare4">
</div>
</article>
<article class="login">
	<form class="login_form" method="POST">
		<fieldset>
			<legend>로그인</legend>
				<p><input name="userid" placeholder="ID" required></p>
				<p><input name="userpw" type="password" placeholder="PW" required></p>
				<p><input name="login_check" type="checkbox">로그인 상태 유지</p>
				
				<button>로그인</button>
		</fieldset>
		<div class="find_info">
			<p>
				<a href="${cpath }/account/findID">
					아이디 찾기 |
				</a>
				<a href="${cpath }/account/findPW">		
					비밀번호 찾기			
				</a>
			</p>											
		</div>
	</form>
	
</article>
</body>
</html>