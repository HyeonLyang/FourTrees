<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>
	<div class="profile_modify">
		<a href="${cpath }/myPage/password">			
			<img src="${cpath }/resources/img/review/review_write.png" 
			style="width: 70px;"><br>
			<span style="font-size: 15px"><spring:message code="mypage3" text="default text" /></span>
		</a>
	</div>
</div>	
    <div class="headline">
    	 <p><a href="${cpath }"><spring:message code="mypage.headline1" text="default text" /></a></p>         
         <p><a href="${cpath }/myPage/bookmark"><spring:message code="mypage.headline2" text="default text" /></a></p>
         <p><a href="${cpath }/myPage/myReply" style="color: #ff7f50;"><spring:message code="mypage.headline3" text="default text" /></a></p>
         <p><a href="${cpath }/support/sup_main"><spring:message code="mypage.headline4" text="default text" /></a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin"><spring:message code="mypage.headline6" text="default text" /></a></p>
         </c:if>
    </div>

	<h3><spring:message code="myreply1" text="default text" /></h3>
	<table class="boards">
		<tr>		
			<th><spring:message code="myreply2" text="default text" /></th>			
			<th><spring:message code="myreply3" text="default text" /></th>
			<th><spring:message code="myreply4" text="default text" /></th>
			<th><spring:message code="myreply5" text="default text" /></th>		
		</tr>
		<c:forEach var="row" items="${list }">
			<tr>			
				<th style="padding: 0px 10px;">${row.idx }</th>
				<td style="padding: 0px 40px; width: 45%;">${row.content }</td>						
				<td>${row.res_name }</td>
				<td style="padding: 0px 10px; width: 10%;">${row.write_date }</td>
			</tr>
		</c:forEach>
	</table>
</article>

<%@ include file="../footer.jsp" %>
</body>
</html>