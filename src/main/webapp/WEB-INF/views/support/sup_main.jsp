<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header2.jsp" %>
<link rel="stylesheet" href="${cpath }/resources/css/support/support.css">
<link rel="stylesheet" href="${cpath }/resources/css/account/myPage.css">


<article class="art">
	
    <div class="headline">
    	 <p><a href="${cpath }"><spring:message code="support.main5" text="default text" /></a></p>         
         <p><a href="${cpath }/myPage/bookmark"><spring:message code="support.main6" text="default text" /></a></p>
         <p><a href="${cpath }/myPage/myReply"><spring:message code="support.main7" text="default text" /></a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin"><spring:message code="support.main8" text="default text" /></a></p>
         </c:if>
         <p>
         	<a href="${cpath }/support/sup_main" style="color: #ff7f50;"><spring:message code="support.main9" text="default text" /> -</a>
         	<div class="sup_tag">
				<ul>
					<li><a href="${cpath }/support/notice"><spring:message code="support.main10" text="default text" />(NOTICE)</a></li>
					<li><a href="${cpath }/support/FAQ"><spring:message code="support.main11" text="default text" />(FAQ)</a></li>
					<li><a href="${cpath }/support/QNA"><spring:message code="support.main9" text="default text" />(Q&A)</a></li>
				</ul>
			</div>
         </p>         
    </div>
</article>
<section class="sup_main">
	<div>
		<div class="sup_title"><a href="${cpath }/support/sup_main"><spring:message code="support.main9" text="default text" /></a></div>
	</div>
	<div>
		<div class="sup_search">
			<input placeholder="<a href="${cpath }/support/sup_main"><spring:message code="sc.detail3" text="default text" />">
			<a href="${cpath }/support/search"><img src="${cpath }/resources/img/support/btn.png"></a>
		</div>
	</div>
	<div>
		<div class="sup_link"><a href="${cpath }/support/QNA"><a href="${cpath }/support/sup_main"><spring:message code="support.main20" text="default text" /></a></div>
	</div>
</section>

</body>
</html>
