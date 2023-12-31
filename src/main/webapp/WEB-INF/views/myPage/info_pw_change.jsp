<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>		
</div>
	
    
    <div class="headline">	    	
		<p><a href="${cpath }/myPage/info"><spring:message code="mypage.delete1" text="default text" /></a></p>
		<p><a href="${cpath }/myPage/info_pw_change" style="color: #ff7f50;"><spring:message code="mypage.delete2" text="default text" /></a></p>
		<p><a href="${cpath }/myPage/info_delete"><spring:message code="mypage.delete3" text="default text" /></a></p>     
    </div>

	<form class="myPage_UD" method="POST">
	
		<h3><spring:message code="mypage.pw1" text="default text" /></h3>
	
		<div class="user_info">
			<table class="board">				
				<tr>
					<th><spring:message code="mypage.pw2" text="default text" /></th>					
					<td>
						<input name="userpw" type="password" placeholder="<spring:message code="mypage.pw3" text="default text" />" required>				
					</td>					
				</tr>
				
				<tr>
					<th><spring:message code="mypage.pw4" text="default text" /></th>
					<td>
						<input name="pw_check" type="password" placeholder="<spring:message code="mypage.pw5" text="default text" />" 
						required>		
					</td>
				</tr>
			</table>	
			<i class="msg"></i>				
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')"><spring:message code="mypage.pw6" text="default text" /></button>
			<button><spring:message code="mypage.pw7" text="default text" /></button>
		</div>
	</form>
</article> 
<script>
	let pw = document.getElementsByName('pw')[0];
	let userpw = document.getElementsByName('userpw')[0];
	let pw_check = document.getElementsByName('pw_check')[0];
	let msg = document.querySelectorAll('.msg')[0];
	
	userpw.onblur = () => {
		if (pw.value == userpw.value) {
			msg.innerHTML = '<spring:message code="mypage.pw8" text="default text" />';
			msg.style.color = 'red';
			userpw.value = '';
			userpw.focus();
		}
		else {
			msg.innerHTML = '';
		}
	}
	
	pw_check.onblur = () => {
		if (userpw.value != pw_check.value) {
			msg.innerHTML = '<spring:message code="mypage.pw9" text="default text" />';
			msg.style.color = 'red';
			pw_check.value = '';
			pw_check.focus();
		}
		else {
			msg.innerHTML = '';			
		}
	}
</script>
<%@ include file="../footer.jsp" %>
</body>
</html>