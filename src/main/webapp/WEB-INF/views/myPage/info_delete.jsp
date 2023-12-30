<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>				
</div>    
    <div class="headline" style="margin-bottom: 40px;">	    	
		<p><a href="${cpath }/myPage/info"><spring:message code="mypage.delete1" text="default text" /></a></p>
		<p><a href="${cpath }/myPage/info_pw_change"><spring:message code="mypage.delete2" text="default text" /></a></p>
		<p><a href="${cpath }/myPage/info_delete" style="color: #ff7f50;"><spring:message code="mypage.delete3" text="default text" /></a></p>     
    </div>

	<form class="myPage_UD" method="POST">
		<div class="delete_caution">
			<h2><spring:message code="mypage.delete4" text="default text" /></h2>
			
			<ol>
				<li>
					<b><spring:message code="mypage.delete5" text="default text" /></b>
					<h5><spring:message code="mypage.delete6" text="default text" />
					<spring:message code="mypage.delete7" text="default text" /></h5>
				</li>
				<li>
					<b><spring:message code="mypage.delete8" text="default text" /></b>
					<h5>
						<spring:message code="mypage.delete9" text="default text" /><br>
						<spring:message code="mypage.delete10" text="default text" />
					</h5>
				</li>
			</ol>							
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')">취소</button>
			<button type="button" onclick="isDelete(${user.idx },'${cpath }', '탈퇴')">탈퇴하기</button>
		</div>
	</form>
</article>
<%@ include file="../footer.jsp" %>
</body>
</html>