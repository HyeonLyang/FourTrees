<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/mbti/mbti.css">

<section class="mbti_main">
	<div>
		<div class="mbti_result">
			<p class="m_result"><img src="${cpath }/resources/img/mbti/${result}.jpg"></p>
		</div>
		<ul>
				<li><a href="${cpath }/mbti/mbti_research"><spring:message code="mbti2" text="default text" /></a></li>
				<li><a href="${cpath }/mbti/mbti_main"><spring:message code="mbti3" text="default text" /></a></li>
		</ul>
	</div>
</section>

</body>
</html>
