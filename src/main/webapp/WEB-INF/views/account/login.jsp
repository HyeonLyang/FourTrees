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
			<legend><spring:message code="login.title" text="default text" /></legend>
				<p><input name="userid" placeholder="<spring:message code="login.input1" text="default text" />" required></p>
				<p><input name="userpw" type="password" placeholder="<spring:message code="login.input2" text="default text" />" required></p>				
				
				<button><spring:message code="login.title" text="default text" /></button>
		</fieldset>
		<div class="find_info">
			<p>
				<a href="${cpath }/account/findID">
					<spring:message code="login.menu1" text="default text" /> |
				</a>
				<a href="${cpath }/account/findPW">		
					<spring:message code="login.menu2" text="default text" />		
				</a>				
			</p>											
		</div>
	</form>
	
</article>
</body>
</html>