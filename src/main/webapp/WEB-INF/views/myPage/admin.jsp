<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>
	<div class="profile_modify">
		<a href="${cpath }/myPage/password">			
			<img src="${cpath }/resources/img/review/review_write.png" 
			style="width: 70px;"><br>
			<span style="font-size: 15px">회원정보수정</span>
		</a>
	</div>
</div>
	<div class="headline">
    	 <p><a href="${cpath }"><spring:message code="mypage.headline1" text="default text" /></a></p>         
         <p><a href="${cpath }/myPage/bookmark"><spring:message code="mypage.headline2" text="default text" /></a></p>
         <p><a href="${cpath }/myPage/myReply"><spring:message code="mypage.headline3" text="default text" /></a></p>
         <p><a href="${cpath }/support/sup_main"><spring:message code="mypage.headline4" text="default text" /></a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin" style="color: #ff7f50;"><spring:message code="mypage.headline6" text="default text" /></a></p>
         </c:if>
    </div>
	<h3><spring:message code="mypage.headline5" text="default text" /></h3>
	
	<div class="AccountManage">
		<table class="boards">	
			<tr>
				<th><spring:message code="signup.input1" text="default text" /></th>
				<th><spring:message code="signup.input3" text="default text" /></th>
				<th><spring:message code="signup.input4" text="default text" /></th>
				<th><spring:message code="mypage.admin1" text="default text" /></th>
				<th><spring:message code="mypage.admin2" text="default text" /></th>
				<th><spring:message code="signup.input5" text="default text" /></th>
				<th><spring:message code="mypage.admin3" text="default text" /></th>
				<th><spring:message code="bookmark1" text="default text" /></th>
			</tr>	
		<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.userid }</td>
				<td>${row.nick }</td>
				<td>${row.email }</td>
				<td>${row.status }</td>
				<td>${row.birth }</td>
				<td>${row.phone }</td>
				<td>${row.join_date }</td>
				<c:if test="${row.status == '관리자' }">				
					<td>
						<button onclick="isAdmin()"><spring:message code="mypage.admin4" text="default text" /></button>
					</td>
				</c:if>
				<c:if test="${row.status == '게스트' }">				
					<td>
						<button onclick="isDelete(${row.idx },'${cpath }', '삭제')"><spring:message code="mypage.admin4" text="default text" /></button>
					</td>
				</c:if>
			</tr>
		</c:forEach>
		</table>
	</div>
</article>	
</body>
</html>