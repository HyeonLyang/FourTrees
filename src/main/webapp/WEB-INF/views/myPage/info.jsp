<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>					
</div>
    <div class="headline">	    	
		<p><a href="${cpath }/myPage/info" style="color: #ff7f50;"><spring:message code="mypage.delete1" text="default text" /></a></p>
		<p><a href="${cpath }/myPage/info_pw_change"><spring:message code="mypage.delete2" text="default text" /></a></p>
		<p><a href="${cpath }/myPage/info_delete"><spring:message code="mypage.delete3" text="default text" /></a></p>     
    </div>

	<form class="myPage_UD" method="POST">

		<h3><spring:message code="mypage.delete1" text="default text" /></h3>
		
		<div class="user_info">
			<table class="board">
				<tr>
					<th><spring:message code="signup.input1" text="default text" /></th>
					<td><input name="userid" value="${user.userid }" readonly
						style="background-color: #d7d7d7;"></td>										
				</tr>
				
				<tr>
					<th><spring:message code="signup.input4" text="default text" /></th>					
					<td>
						<input name="email" type="email" placeholder="<spring:message code="mypage.info1" text="default text" />" required><br>
						<i class="email_msg"></i>					
					</td>					
				</tr>
				
				<tr>
					<th><spring:message code="signup.input5" text="default text" /></th>
					<td>
						<input name="phone" placeholder="<spring:message code="mypage.info2" text="default text" />" required><br>
						<i class="phone_msg"></i>		
					</td>
				</tr>
			</table>	
						
			<input name="email_check" type="hidden" value="${user.email }">
			<input name="phone_check" type="hidden" value="${user.phone }">				
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')"><spring:message code="mypage.pw6" text="default text" /></button>
			<button><spring:message code="mypage.pw7" text="default text" /></button>
		</div>
	</form>
</article>    

<script>
	let email = document.getElementsByName('email')[0];
	let email_check = document.getElementsByName('email_check')[0];
	let email_msg = document.querySelectorAll('.email_msg')[0];
	
	email.onblur = () => {
		if (email.value == email_check.value) {
			email_msg.innerHTML = '<spring:message code="mypage.info3" text="default text" />';
			email_msg.style.color = 'red';
			email.value = '';
			email.focus();
		}
		else {
			email_msg.innerHTML = '';			
		}
	}
	
	let phone = document.getElementsByName('phone')[0];
	let phone_check = document.getElementsByName('phone_check')[0];
	let phone_msg = document.querySelectorAll('.phone_msg')[0];
	
	phone.onblur = () => {
		if (phone.value == phone_check.value) {
			phone_msg.innerHTML = '<spring:message code="mypage.info4" text="default text" />';
			phone_msg.style.color = 'red';
			phone.value = '';
			phone.focus();
		}
		else {
			phone_msg.innerHTML = '';			
		}
	}
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>