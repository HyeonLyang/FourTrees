<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="myPage_main.jsp" %>		
</div>
	
    
    <div class="headline">	    	
		<p><a href="${cpath }/myPage/info">회원정보변경</a></p>
		<p><a href="${cpath }/myPage/info_pw_change" style="color: #ff7f50;">비밀번호변경</a></p>
		<p><a href="${cpath }/myPage/info_delete">회원탈퇴</a></p>     
    </div>

	<form class="myPage_UD" method="POST">
	
		<h3>비밀번호 변경</h3>
	
		<div class="user_info">
			<table class="board">				
				<tr>
					<th>새 비밀번호</th>					
					<td>
						<input name="userpw" type="password" placeholder="변경하실 새 비밀번호를 입력하세요" required>				
					</td>					
				</tr>
				
				<tr>
					<th>새 비밀번호 확인</th>
					<td>
						<input name="pw_check" type="password" placeholder="새 비밀번호를 다시 한 번 입력하세요" 
						required>		
					</td>
				</tr>
			</table>	
			<i class="msg"></i>				
		</div>
		
		<div class="save_cancel">
			<button type="button" onclick="back('${cpath }')">취소</button>
			<button>저장</button>
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
			msg.innerHTML = '전 비밀번호와 값이 같습니다';
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
			msg.innerHTML = '비밀번호가 다릅니다';
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