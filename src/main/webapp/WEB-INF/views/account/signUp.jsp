<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/account/login.css">
<article>
	<div class="blank">
	<p>　</p>
</div>
<div class="sqare5">
</div>
</article>
<article class="login">
	<form class="login_form" method="POST">
		<p>회원가입 정보입력</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon1.png">
			<input name="userid" placeholder="ID" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon2.png">
			<input name="userpw" type="password" placeholder="PW" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon3.png">
			<input name="nick" placeholder="닉네임" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon4.png">
			<input name="email" type="email" placeholder="이메일" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon10.png">
			<input name="birth" type="date" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon6.png">
			<input name="phone" placeholder="전화번호" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon7.png">
			<input name="foreigner" placeholder="내/외국인" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon8.png">
			<input name="gender" placeholder="성별" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon9.png">
			<input name="area" placeholder="주소" required>
		</p>		
				
		<button>가입</button>
	</form>
</article>

<article>
	<div class="blank">
	<p>　</p>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>