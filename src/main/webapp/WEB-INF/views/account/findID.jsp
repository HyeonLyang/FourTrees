<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>		
<link rel="stylesheet" href="${cpath }/resources/css/account/login.css">
<article class="accFind">	
	<div class="find_header">	
		<div class="find">
			<p style="color: yellow;"><spring:message code="account.find1" text="default text" /></p>
			<p><spring:message code="account.find2" text="default text" /></p>
		</div>	
	</div>
	
	<div class="find_main">
		<h3><spring:message code="account.find1" text="default text" /></h3>
		<h4>${ID }</h4>		
		
		<p><spring:message code="account.find3" text="default text" /></p>
	</div>	
	
	<div class="select_main">
		<div class="select_header">
			<div class="select_header1">							
				<legend><spring:message code="account.find4" text="default text" /></legend> 		
			</div>		
			<div class="select_header2">			
				<p><spring:message code="account.find5" text="default text" /></p>
			</div>
		</div>
		
		<form method="post" class="select_email">			
			<div class="input_email">			
				<label><spring:message code="account.find6" text="default text" /></label>
				<input name="email" type="email" required>
			</div>
			
			<button><spring:message code="account.find7" text="default text" /></button>
		</form>				
	</div>
</article>
</body>
</html>