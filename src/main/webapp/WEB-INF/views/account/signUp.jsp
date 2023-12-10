<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
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
			<input name="phone" type="tel" placeholder="전화번호" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon7.png">
			<select name="foreigner">
				<option value="">국적</option>
				<option value="내국인">내국인</option>
				<option value="외국인">외국인</option>
			</select>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon8.png">
			<select name="gender">	
				<option value="">성별 선택</option>
				<option value="남">남</option>
				<option value="여">여</option>
			</select>
		</p>		
				
		<button>가입</button>
	</form>
</article>
	<div class="blank">
	<p>　</p>
</div>
<%@ include file="../footer.jsp" %>