<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>		
		<div class="profile_modify">
			<a href="${cpath }/myPage/password">			
				<img src="${cpath }/resources/img/review/review_write.png" 
				style="width: 70px;"><br>
				<span style="font-size: 15px; color: #ff7f50;"><spring:message code="mypage3" text="default text" /></span>
			</a>
		</div>
	</div>
	
    <div class="headline">
    	 <p><a href="${cpath }"><spring:message code="mypage.headline1" text="default text" /></a></p>         
         <p><a href="${cpath }/myPage/bookmark"><spring:message code="mypage.headline2" text="default text" /></a></p>
         <p><a href="${cpath }/myPage/myReply"><spring:message code="mypage.headline3" text="default text" /></a></p>
         <p><a href="${cpath }/support/sup_main"><spring:message code="mypage.headline4" text="default text" /></a></p>
         <c:if test="${user.status == '관리자' }">
         	<p><a href="${cpath }/myPage/admin"><spring:message code="mypage.headline6" text="default text" /></a></p>
         </c:if>
    </div>

	<article class="password_input">
		<h4><spring:message code="mypage.password1" text="default text" /></h4>
		<form method="POST">
			<p><input name="pw" type="password" placeholder="<spring:message code="login.input2" text="default text" />" required></p>
		
			<button><spring:message code="mypage.password2" text="default text" /></button>	
		</form>
		
	</article>
</section>

<%@ include file="../footer.jsp" %>
</body>
</html>