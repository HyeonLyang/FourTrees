<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${cpath }/resources/css/footer.css">
<footer>
	
	<div class="footer_in">
		<div><img src="${cpath }/resources/img/logo_yellow.png"></div>
                
		<ul class="foot_util">
		    <li>㈜<spring:message code="footer1" text="default text" /> 4<spring:message code="footer2" text="default text" />　|　<spring:message code="footer3" text="default text" />　|　<spring:message code="footer4" text="default text" />　|　<spring:message code="footer5" text="default text" />　|　<spring:message code="footer6" text="default text" /></li>
		    <li>Copyright ©. All Rights Reserved</li>
		</ul>
	</div>
</footer>
</body>
</html>