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
		<p><spring:message code="signup.title" text="default text" /></p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon1.png">
			<input name="userid" placeholder="<spring:message code="signup.input1" text="default text" />" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon2.png">
			<input name="userpw" type="password" placeholder="<spring:message code="signup.input2" text="default text" />" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon3.png">
			<input name="nick" placeholder="<spring:message code="signup.input3" text="default text" />" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon4.png">
			<input name="email" type="email" placeholder="<spring:message code="signup.input4" text="default text" />" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon10.png">
			<input name="birth" type="date" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon6.png">
			<input name="phone" type="tel" placeholder="<spring:message code="signup.input5" text="default text" />" required>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon7.png">
			<select name="foreigner">
				<option value=""><spring:message code="signup.input7-1" text="default text" /></option>
				<option value="내국인"><spring:message code="signup.input7-2" text="default text" /></option>
				<option value="외국인"><spring:message code="signup.input7-3" text="default text" /></option>
			</select>
		</p>
		<p class="signup_pw">
			<img src="${cpath }/resources/img/signup_icon8.png">
			<select name="gender">	
				<option value=""><spring:message code="signup.input8-1" text="default text" /></option>
				<option value="남"><spring:message code="signup.input8-2" text="default text" /></option>
				<option value="여"><spring:message code="signup.input8-3" text="default text" /></option>
			</select>
		</p>		
				
		<button><spring:message code="signup.signup" text="default text" /></button>
	</form>
</article>
	<div class="blank">
	<p>　</p>
</div>
<%@ include file="../footer.jsp" %>